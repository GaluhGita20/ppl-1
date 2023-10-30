<?php

namespace App\Models\Auth;

use App\Models\Traits\RaidModel;
use App\Models\Traits\ResponseTrait;
use App\Models\Traits\Utilities;
use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Laravel\Passport\HasApiTokens;

class User extends Authenticatable
{
    use HasFactory, Notifiable;
    use RaidModel, Utilities, ResponseTrait;

    protected $table = 'sys_users';
    public $remember_token = false;

    /**
     * The attributes that are mass assignable.
     *
     * @var array<int, string>
     */
    protected $fillable = [
        'name',
        'username',
        'email',
        'last_login',
        'password',
        'image',
        'status',
        'address',
        'phone',
        'deleted_at',
    ];

    /**
     * The attributes that should be hidden for serialization.
     *
     * @var array<int, string>
     */
    protected $hidden = [
        'password',
        'remember_token',
    ];

    /**
     * The attributes that should be cast.
     *
     * @var array<string, string>
     */
    protected $casts = [
        'email_verified_at' => 'datetime',
        'last_login' => 'datetime',
    ];

    /** MUTATOR **/
    /** ACCESSOR **/

    /** RELATION **/

    /** SCOPE **/
    public function scopeGrid($query)
    {
        return $query->orderBy('created_at', 'DESC')->orderBy('updated_at', 'DESC');
    }

    public function scopeFilters($query)
    {
        return $query
            ->filterBy('status', '=')
            ->when(
                $name = request()->post('name'),
                function ($q) use ($name) {
                    $q->where('name', 'LIKE', '%' . $name . '%');
                    $q->orWhere('email', 'LIKE', '%' . $name . '%');
                }
            );
    }

    /** SAVE DATA */
    public function handleStoreOrUpdate($request, $cek = true)
    {
        $this->beginTransaction();
        try {
            $this->fill($request->all());
            if ($request->password) {
                $this->password = bcrypt($request->password);
            }
            $this->save();
            $this->saveLogNotify();

            return $this->commitSaved();
        } catch (\Exception $e) {
            return $this->rollbackSaved($e);
        }
    }

    public function handleDestroy()
    {
        $this->beginTransaction();
        try {
            if (!$this->canDeleted()) {
                return $this->rollback(__('base.error.related'));
            }
            $this->saveLogNotify();
            $this->delete();

            return $this->commitDeleted();
        } catch (\Exception $e) {
            return $this->rollbackDeleted($e);
        }
    }

    public function handleResetPassword()
    {
        $this->beginTransaction();
        try {
            $this->password = bcrypt('qwerty123456');
            $this->save();
            $this->saveLogNotify();

            return $this->commitSaved(['redirect' => route(request()->get('routes') . '.index')]);
        } catch (\Exception $e) {
            return $this->rollbackSaved($e);
        }
    }
    public function saveLogNotify()
    {
        $data = $this->name;
        $routes = request()->get('routes');
        switch (request()->route()->getName()) {
            case $routes . '.store':
                $this->addLog('Membuat Data ' . $data);
                break;
            case $routes . '.update':
                $this->addLog('Mengubah Data ' . $data);
                break;
            case $routes . '.destroy':
                $this->addLog('Menghapus Data ' . $data);
                break;
            case $routes . '.resetPassword':
                $this->addLog('Reset Password ' . $data);
                break;
            case $routes . '.updateProfile':
                $this->addLog('Mengubah Profil ' . $data);
                break;
            case $routes . '.updatePassword':
                $this->addLog('Mengubah Password ' . $data);
                break;
            case $routes . '.importSave':
                auth()->user()->addLog('Import Data User');
                break;
        }
    }

    /** OTHER FUNCTION **/
    public function canDeleted()
    {
        if (in_array($this->id, [1])) return false;
        if ($this->id == auth()->id()) return false;
        if (Approval::where('user_id', $this->id)->exists()) return false;

        return true;
    }
}
