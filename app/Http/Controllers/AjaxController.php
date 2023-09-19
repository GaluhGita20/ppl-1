<?php

namespace App\Http\Controllers;

use App\Models\Auth\Role;
use App\Models\Auth\User;
use App\Models\Globals\Notification;
use App\Models\Globals\TempFiles;
use App\Models\Master\Aspect\Aspect;
use App\Models\Master\Document\DocumentItem;
use App\Models\Master\Document\DocumentType;
use App\Models\Master\Extern\ExternInstance;
use App\Models\Master\Fee\BankAccount;
use App\Models\Master\Fee\CostComponent;
use App\Models\Master\Fee\DocumentDinas;
use App\Models\Master\Fee\Eselon;
use App\Models\Master\Fee\TransportClass;
use App\Models\Master\Fee\TransportType;
use App\Models\Master\Geografis\City;
use App\Models\Master\Geografis\Province;
use App\Models\Master\Ict\IctObject;
use App\Models\Master\Ict\IctType;
use App\Models\Master\Org\OrgStruct;
use App\Models\Master\Org\Position;
use App\Models\Master\Procedure\ProcedureAudit;
use App\Models\Master\Risk\AuditRating;
use App\Models\Master\Risk\LevelTemuan;
use App\Models\Master\Risk\RiskRating;
use App\Models\Master\Survey\SurveyCategory;
use App\Models\Master\Training\TrainingInstitute;
use App\Models\Master\Training\TrainingType;
use App\Models\Preparation\Apm\ApmDetail;
use App\Models\Rkia\Rkia;
use App\Models\Rkia\Summary;
use App\Models\Survey\SurveyRegUser;
use Illuminate\Http\Request;

class AjaxController extends Controller
{
    public function cityOptions(Request $request)
    {
        return City::when(
            $province_id = $request->province_id,
            function ($q) use ($province_id) {
                $q->where('province_id', $province_id);
            }
        )
            ->orderBy('name', 'ASC')
            ->get();
    }

    public function cityOptionsRoot(Request $request)
    {
        $items = City::when(
            $province_id = $request->province_id,
            function ($q) use ($province_id) {
                $q->where('province_id', $province_id);
            }
        )
            ->orderBy('name', 'ASC')
            ->get();

        $items = $items->paginate();
        return $this->responseSelect2($items, 'name', 'id');
    }

    public function saveTempFiles(Request $request)
    {
        $this->beginTransaction();
        try {
            if ($file = $request->file('file')) {
                $file_path = str_replace('.' . $file->extension(), '', $file->hashName());
                $file_path .= '.' . $file->getClientOriginalExtension();

                $temp = new TempFiles;
                $temp->file_name = $file->getClientOriginalName();
                $temp->file_path = $file->storeAs('temp-files', $file_path, 'public');
                // $temp->file_type = $file->extension();;
                $temp->file_size = $file->getSize();
                $temp->flag = $request->flag;
                $temp->save();
                return $this->commit(
                    [
                        'file' => TempFiles::find($temp->id)
                    ]
                );
            }
            return $this->rollback(['message' => 'File not found']);
        } catch (\Exception $e) {
            return $this->rollback(['error' => $e->getMessage()]);
        }
    }

    public function testNotification($emails)
    {
        if ($rkia = Rkia::latest()->first()) {
            request()->merge(
                [
                    'module' => 'rkia_operation',
                ]
            );
            $emails = explode('--', trim($emails));
            $user_ids = User::whereIn('email', $emails)->pluck('id')->toArray();
            $rkia->addNotify(
                [
                    'message' => 'Waiting Approval RKIA ' . $rkia->show_category . ' ' . $rkia->year,
                    'url' => route('rkia.operation.summary', $rkia->id),
                    'user_ids' => $user_ids,
                ]
            );
            $record = Notification::latest()->first();
            return $this->render('mails.notification', compact('record'));
        }
    }

    public function userNotification()
    {
        $notifications = auth()->user()
            ->notifications()
            ->latest()
            ->simplePaginate(25);
        return $this->render('layouts.base.notification', compact('notifications'));
    }

    public function userNotificationRead(Notification $notification)
    {
        auth()->user()
            ->notifications()
            ->updateExistingPivot($notification, array('readed_at' => now()), false);
        return redirect($notification->full_url);
    }

    public function selectRole($search, Request $request)
    {
        $items = Role::keywordBy('name')->orderBy('name');
        switch ($search) {
            case 'all':
                $items = $items;
                break;
            case 'approver':
                $perms = str_replace('_', '.', $request->perms) . '.approve';
                $items = $items->whereHas(
                    'permissions',
                    function ($q) use ($perms) {
                        $q->where('name', $perms);
                    }
                );
                break;

            default:
                $items = $items->whereNull('id');
                break;
        }
        $items = $items->paginate();
        return $this->responseSelect2($items, 'name', 'id');
    }

    public function selectStruct($search, Request $request)
    {
        $items = OrgStruct::keywordBy('name')
            ->orderBy('level')
            ->orderBy('name');
        switch ($search) {
            case 'all':
                $items = $items;
                break;
            case 'parent_boc':
                $items = $items->whereIn('level', ['root']);
                break;
            case 'parent_bod':
                $items = $items->whereIn('level', ['root', 'bod']);
                break;
            case 'parent_division':
                $items = $items->whereIn('level', ['bod']);
                break;
            case 'parent_department':
                $items = $items->whereIn('level', ['division']);
                break;
            case 'parent_branch':
                $items = $items->whereIn('level', ['bod']);
                break;
            case 'parent_subbranch':
                $items = $items->whereIn('level', ['branch']);
                break;
            case 'parent_cash':
                $items = $items->whereIn('level', ['branch', 'subbranch']);
                break;
            case 'parent_payment':
                $items = $items->whereIn('level', ['branch', 'subbranch', 'cash']);
                break;
            case 'parent_group':
                $items = $items->whereIn('level', ['division']);
                break;
            case 'parent_position':
                $items = $items->whereNotIn('level', ['root', 'group']);
                break;
            case 'object_audit_report':
                $items = $items->whereNotIn('level', ['root', 'group', 'bod', 'boc']);
                break;
            case 'object_audit':
                $items = $items->whereIn('level', ['division', 'department', 'branch', 'group', 'subbranch'])
                    ->where('level', $request->object_type);
                break;

            default:
                $items = $items->whereNull('id');
                break;
        }
        $items = $items->get();
        $results = [];
        $more = false;

        $levels = ['root', 'boc', 'bod', 'division', 'department', 'branch', 'subbranch'];
        $i = 0;
        foreach ($levels as $level) {
            if ($items->where('level', $level)->count()) {
                foreach ($items->where('level', $level) as $item) {
                    $results[$i]['text'] = strtoupper($item->show_level);
                    $results[$i]['children'][] = ['id' => $item->id, 'text' => $item->name];
                }
                $i++;
            }
        }
        return response()->json(compact('results', 'more'));
    }

    public function selectPosition($search, Request $request)
    {
        $items = Position::keywordBy('name')->orderBy('name');
        switch ($search) {
            case 'all':
                $items = $items;
                break;

            default:
                $items = $items->whereNull('id');
                break;
        }
        $items = $items->paginate();
        return $this->responseSelect2($items, 'name', 'id');
    }

    public function selectUser($search, Request $request)
    {
        $user = auth()->user();
        $items = User::keywordBy('name')
            ->has('position')
            ->where('status', 'active')
            ->orderBy('name');
        switch ($search) {
            case 'all':
                $items = $items;
                break;
            case 'except':
                $items = $items->where('id', '!=', $request->id);
                break;
            case 'auditor':
                $items = $items->whereHas(
                    'position',
                    function ($q) {
                        $q->whereHas(
                            'location',
                            function ($qq) {
                                $qq->inAudit();
                            }
                        );
                    }
                );
                break;
            case 'auditor_summary':
                $get_id_auditors = [];
                if ($summary = Summary::find($request->summary_id)) {
                    $get_id_auditors = $summary->getAuditorIds('all');
                }
                $items = $items->whereIn('id', $get_id_auditors);
                break;
            case 'assignment':
                $location_id = 0;
                if ($summary = Summary::find($request->summary_id)) {
                    $location_id = $summary->getStruct()->id ?? 0;
                }
                $items = $items->whereHas(
                    'position',
                    function ($q) use ($location_id) {
                        $q->whereHas(
                            'location',
                            function ($qq) use ($location_id) {
                                $qq
                                    ->where(
                                        function ($qqq) use ($location_id) {
                                            $qqq->where('id', $location_id);
                                        }
                                    )
                                    ->orWhere(
                                        function ($qqq) {
                                            $qqq->inAudit();
                                        }
                                    );
                            }
                        );
                    }
                );
                break;
            case 'penugasan':
                $location_id = 0;
                if ($summary = Summary::find($request->summary_id)) {
                    $location_id = $summary->getStruct()->id ?? 0;
                }
                $items = $items->whereHas(
                    'position',
                    function ($q) use ($location_id) {
                        $q->whereHas(
                            'location',
                            function ($qq) use ($location_id) {
                                $qq->where(
                                    function ($qqq) use ($location_id) {
                                        $qqq->where('id', $location_id);
                                    }
                                );
                            }
                        );
                    }
                );
                break;
            case 'tembusan':
                $items = $items->whereHas(
                    'position',
                    function ($q) {
                        $q->whereHas(
                            'location',
                            function ($qq) {
                                $qq->inTembusan();
                            }
                        );
                    }
                );
                break;
            case 'auditee':
                $location_id = 0;
                if ($summary = Summary::find($request->summary_id)) {
                    $location_id = $summary->getStruct()->id ?? 0;
                }
                $items = $items->whereHasLocationId($location_id);
                break;
            case 'survey-auditee':
                $location_id = 0;
                if ($summary = SurveyRegUser::where('survey_reg_id', $request->summary_id)->get()) {
                    $location_id = $summary->pluck('user_id')->toArray() ?? 0;
                }
                $items = $items->whereIn('id',$location_id);
                break;

            default:
                $items = $items->whereNull('id');
                break;
        }
        $items = $items->paginate();

        $results = [];
        $more = $items->hasMorePages();
        foreach ($items as $item) {
            $results[] = ['id' => $item->id, 'text' => $item->name . ' (' . $item->position->name . ')'];
        }
        return response()->json(compact('results', 'more'));
    }

    public function selectIctType($search, Request $request)
    {
        $items = IctType::keywordBy('name')->orderBy('name');
        switch ($search) {
            case 'all':
                $items = $items;
                break;

            default:
                $items = $items->whereNull('id');
                break;
        }

        $items = $items->paginate();
        return $this->responseSelect2($items, 'name', 'id');
    }

    public function selectEselon($search, Request $request)
    {
        $items = Eselon::keywordBy('name')->orderBy('name');

        switch ($search) {
            case 'all':
                $items = $items;
                break;

            default:
                $items = $items->whereNull('id');
                break;
        }

        $items = $items->paginate();
        return $this->responseSelect2($items, 'name', 'id');
    }

    public function selectProvince($search, Request $request)
    {
        $items = Province::keywordBy('name')->orderBy('name');

        switch ($search) {
            case 'all':
                $items = $items;
                break;

            default:
                $items = $items->whereNull('id');
                break;
        }

        $items = $items->paginate();
        return $this->responseSelect2($items, 'name', 'id');
    }

    public function selectCity($search, Request $request)
    {
        $items = City::keywordBy('name')->orderBy('name');

        switch ($search) {
            case 'all':
                $items = $items;
                break;

            default:
                $items = $items->whereNull('id');
                break;
        }

        $items = $items->paginate();
        return $this->responseSelect2($items, 'name', 'id');
    }

    public function selectLevelTemuan($search, Request $request)
    {
        $items = LevelTemuan::keywordBy('nama')->orderBy('nama');

        switch ($search) {
            case 'all':
                $items = $items;
                break;

            default:
                $items = $items->whereNull('id');
                break;
        }

        $items = $items->paginate();
        return $this->responseSelect2($items, 'nama', 'id');
    }

    public function getAuditRating(Request $request)
    {
        $items = AuditRating::keywordBy('audit_rating')->orderBy('audit_rating');
        $items = $items->paginate();
        return $this->responseSelect2($items, 'audit_rating', 'id');
    }

    public function selectDokumen($search, Request $request)
    {
        $items = DocumentDinas::keywordBy('name')->orderBy('name');
        switch ($search) {
            case 'all':
                $items = $items;
                break;

            default:
                $items = $items->whereNull('id');
                break;
        }

        $items = $items->paginate();
        return $this->responseSelect2($items, 'name', 'id');
    }

    public function selectTransportClass($search, Request $request)
    {
        $items = TransportClass::keywordBy('name')->orderBy('name');
        switch ($search) {
            case 'all':
                $items = $items;
                break;

            default:
                $items = $items->whereNull('id');
                break;
        }

        $items = $items->paginate();
        return $this->responseSelect2($items, 'name', 'id');
    }

    public function selectTransportType($search, Request $request)
    {
        $items = TransportType::keywordBy('name')->orderBy('name');
        switch ($search) {
            case 'all':
                $items = $items;
                break;

            default:
                $items = $items->whereNull('id');
                break;
        }

        $items = $items->paginate();
        return $this->responseSelect2($items, 'name', 'id');
    }

    public function selectIctObject($search, Request $request)
    {
        $items = IctObject::keywordBy('name')->has('ictType')->orderBy('name');
        switch ($search) {
            case 'all':
                $items = $items;
                break;
            case 'object_audit':
                $items = $items->where('ict_type_id', $request->object_type);
                break;

            default:
                $items = $items->whereNull('id');
                break;
        }

        $items = $items->paginate();
        return $this->responseSelect2($items, 'name', 'id');
    }

    public function selectAspect($search, Request $request)
    {
        $items = Aspect::keywordBy('name')->orderBy('name');
        switch ($search) {
            case 'all':
                $items = $items;
                break;
            case 'parent_level':
                $category = $request->category;
                $object_type = $request->object_type;
                $items = $items->where('category', $category);
                if ($category == 'ict') {
                    $items->where('ict_object_id', $object_type);
                } else {
                    $items->whereHas('object', function ($q) use ($object_type) {
                        $q->where('level', $object_type);
                    })
                    ->whereIn('id', function ($query) {
                        $query->selectRaw('MIN(id)')
                            ->from('ref_aspects')
                            ->groupBy('name');
                    })
                    ->select('id','name') 
                    ->orderBy('name') 
                    ->distinct('name') 
                    ->get(['name']);
                }
                break;
            case 'parent_doc':
                $category = $request->category;
                $object_id = $request->object_id;
                $items = $items->where('category', $category);
                if ($category == 'ict') {
                    $items->where('ict_object_id', $object_id);
                } else {
                    $items->where('object_id', $object_id);
                }
                break;
            case 'by_object':
                $category = $request->category;
                $object_id = $request->object_id;
                $items = $items->filterByObject($category, $object_id);
                break;
            case 'by_ids':
                $ids = $request->ids ?? [];
                $items = $items->whereIn('id', $ids);
                break;

            default:
                $items = $items->whereNull('id');
                break;
        }

        $items = $items->paginate();
        return $this->responseSelect2($items, 'name', 'id');
    }

    public function selectObject(Request $request)
    {
        switch ($request->category) {
            case 'all':
                $levels = ['division', 'department', 'branch', 'subbranch', 'group'];
                $items = OrgStruct::keywordBy('name')
                    ->whereIn('level', $levels)
                    ->orderBy('level')
                    ->orderBy('name')
                    ->get();
                $results = [];
                $optgroups = [];
                $i = 0;
                if (!empty($request->optstart_id) && !empty($request->optstart_text)) {
                    $results[$i]['id'] = $request->optstart_id;
                    $results[$i]['text'] = $request->optstart_text;
                    $i++;
                }
                foreach ($levels as $level) {
                    foreach ($items->where('level', $level) as $item) {
                        if (!in_array($item->level, $optgroups)) {
                            $optgroups[] = $item->level;
                            $results[$i]['text'] = strtoupper($item->show_level);
                        }
                        $results[$i]['children'][] = ['id' => 'struct--' . $item->id, 'text' => $item->name];
                        $i++;
                    }
                }
                // ICT
                $items = IctObject::keywordBy('name')
                    ->has('ictType')
                    ->orderBy('name')
                    ->get();
                if ($items->count()) {
                    $results[$i]['text'] = strtoupper('ICT');
                    foreach ($items as $item) {
                        $results[$i]['children'][] = ['id' => 'ict--' . $item->id, 'text' => $item->name];
                        $i++;
                    }
                }
                $more = false;
                return response()->json(compact('results', 'more'));
                break;
            case 'operation':
            case 'special':
                $levels = ['division', 'department', 'branch', 'subbranch', 'group'];
                $items = OrgStruct::keywordBy('name')
                    ->whereIn('level', $levels)
                    ->orderBy('level')
                    ->orderBy('name')
                    ->get();
                $results = [];
                $optgroups = [];
                $i = 0;

                foreach ($levels as $level) {
                    foreach ($items->where('level', $level) as $item) {
                        if (!in_array($item->level, $optgroups)) {
                            $optgroups[] = $item->level;
                            $results[$i]['text'] = strtoupper($item->show_level);
                        }
                        $results[$i]['children'][] = ['id' => $item->id, 'text' => $item->name];
                        $i++;
                    }
                }
                $more = false;
                return response()->json(compact('results', 'more'));
                break;

            case 'ict':
                $items = IctObject::keywordBy('name')->has('ictType')->orderBy('name')->paginate();
                return $this->responseSelect2($items, 'name', 'id');

            default:
                return response()
                    ->json(
                        [
                            'results' => [],
                            'more' => false,
                        ]
                    );
                break;
        }
    }

    public function selectDocItem($search, Request $request)
    {
        $items = DocumentItem::keywordBy('name')->has('aspect')->orderBy('name');
        switch ($search) {
            case 'all':
                $items = $items;
                break;
            case 'find':
                return $items->find($request->id);
                break;
            case 'by_aspect':
                $items = $items->where('aspect_id', $request->aspect_id);
                $items = $items->paginate();
                return $this->responseSelect2($items, 'name', 'name');
                break;

            default:
                $items = $items->whereNull('id');
                break;
        }

        $items = $items->paginate();
        return $this->responseSelect2($items, 'name', 'id');
    }

    public function selectDocItemOptionsByAspect(Request $request)
    {
        return DocumentItem::when(
            $aspect_id = $request->aspect_id,
            function ($q) use ($aspect_id) {
                $q->where('aspect_id', $aspect_id);
            }
        )
            ->orderBy('name', 'ASC')
            ->get();
    }

    public function selectCostComponent($search, Request $request)
    {
        $items = CostComponent::keywordBy('name')->orderBy('name');
        switch ($search) {
            case 'all':
                $items = $items;
                break;
            case 'find':
                return $items->find($request->id);
                break;

            default:
                $items = $items->whereNull('id');
                break;
        }

        $items = $items->paginate();
        return $this->responseSelect2($items, 'name', 'id');
    }

    public function selectBankAccount($search, Request $request)
    {
        $items = BankAccount::keywordBy('number')
            ->with('owner')
            ->orderBy('number');
        switch ($search) {
            case 'all':
                $items = $items;
                break;
            case 'find':
                return $items->with('owner')->find($request->id);
                break;

            case 'byOwner':
                // dd(599, $request->owner);
                $owners = json_decode($request->owner);
                $items = $items->whereIn('user_id', $owners);
                break;

            default:
                $items = $items->whereNull('id');
                break;
        }

        $items = $items->paginate();
        $results = [];
        $more = false;
        foreach ($items as $item) {
            $results[] = [
                'id' => $item->id,
                'text' => $item->number . ' - ' . $item->bank . ' - ' . $item->owner->name
            ];
        }
        if (method_exists($items, 'hasMorePages')) {
            $more = $items->hasMorePages();
        }
        return response()->json(compact('results', 'more'));
    }

    public function selectRiskRating($search, Request $request)
    {
        $items = RiskRating::keywordBy('name')->orderBy('name');
        switch ($search) {
            case 'all':
                $items = $items;
                break;
            case 'find':
                return $items->with('owner')->find($request->id);
                break;

            default:
                $items = $items->whereNull('id');
                break;
        }

        $items = $items->paginate();
        return $this->responseSelect2($items, 'name', 'id');
    }

    public function selectAuditRating($search, Request $request)
    {
        $items = AuditRating::keywordBy('audit_rating')->orderBy('audit_rating');
        switch ($search) {
            case 'all':
                $items = $items;
                break;
            default:
                $items = $items->whereNull('id');
                break;
        }

        $items = $items->paginate();
        return $this->responseSelect2($items, 'audit_rating', 'id');
    }

    public function selectDetailApm($search, Request $request)
    {
        $summary_id = $request->summary_id;
        $items = ApmDetail::with('procedureAudit')->whereHas('apm', function ($q) use ($summary_id) {
            $q->where('summary_id', $summary_id);
        })
            ->where('user_id', auth()->id())
            ->keywordBy('agenda')->orderBy('agenda');
        switch ($search) {
            case 'all':
                $items = $items;
                break;

            default:
                $items = $items->whereNull('id');
                break;
        }

        $items = $items->paginate();
        return $this->responseSelect2ProcedureAudit($items, '', 'id');
        // return $this->responseSelect2($items, 'agenda', 'id');
    }

    public function selectDetailApm2(Request $request)
    {
        $summary_id = $request->summary_id;
        $aspect_id = $request->aspect_id;
        $items = ApmDetail::with('procedureAudit')->whereHas('apm', function ($q) use ($summary_id) {
            $q->where('summary_id', $summary_id);
        })
            ->whereHas(
                'procedureAudit',
                function ($q) use ($aspect_id) {
                    $q->where('aspect_id', $aspect_id);
                }
            )
            ->where('user_id', auth()->id())
            ->keywordBy('agenda')->orderBy('agenda');
        $items = $items->paginate();
        return $this->responseSelect2ProcedureAudit($items, '', 'id');
        // return $this->responseSelect2($items, 'agenda', 'id');
    }

    public function selectAuditProcedure($search, Request $request)
    {
        $items = ProcedureAudit::keywordBy('procedure')->orderBy('procedure');
        switch ($search) {
            case 'all':
                $items = $items;
                break;

            default:
                $items = $items->whereNull('id');
                break;
        }
        $items = $items->paginate();
        return $this->responseSelect2($items, 'procedure', 'id');
    }

    public function selectTrainingInstitute($search, Request $request)
    {
        $items = TrainingInstitute::keywordBy('name')->orderBy('name');
        switch ($search) {
            case 'all':
                $items = $items;
                break;

            default:
                $items = $items->whereNull('id');
                break;
        }

        $items = $items->paginate();
        return $this->responseSelect2($items, 'name', 'id');
    }

    public function selectTrainingType($search, Request $request)
    {
        $items = TrainingType::keywordBy('name')->orderBy('name');
        switch ($search) {
            case 'all':
                $items = $items;
                break;

            default:
                $items = $items->whereNull('id');
                break;
        }

        $items = $items->paginate();
        return $this->responseSelect2($items, 'name', 'id');
    }

    public function selectExternInstance($search, Request $request)
    {
        $items = ExternInstance::keywordBy('name')->orderBy('name');
        switch ($search) {
            case 'all':
                $items = $items;
                break;

            default:
                $items = $items->whereNull('id');
                break;
        }

        $items = $items->paginate();
        return $this->responseSelect2($items, 'name', 'id');
    }

    public function selectSurveyCategory($search, Request $request)
    {
        $items = SurveyCategory::keywordBy('name')->orderBy('name');
        switch ($search) {
            case 'all':
                $items = $items;
                break;

            default:
                $items = $items->whereNull('id');
                break;
        }

        $items = $items->paginate();
        return $this->responseSelect2($items, 'name', 'id');
    }
}
