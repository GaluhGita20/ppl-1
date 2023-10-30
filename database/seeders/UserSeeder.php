<?php

namespace Database\Seeders;

use App\Models\Auth\User;
use Illuminate\Database\Seeder;

class UserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        // angkatan 19
        for ($i = 1905551001; $i <= 1905551150; $i++) {
            $record = User::firstOrNew(['username' => (string)$i]);
            $record->name = (string)$i;
            $record->username = (string)$i;
            $record->email = (string)$i . "@gmail.com";
            $record->password = bcrypt((string)$i);
            $record->save();
        }

        // angkatan 20
        for ($i = 2005551001; $i <= 2005551150; $i++) {
            $record = User::firstOrNew(['username' => (string)$i]);
            $record->name = (string)$i;
            $record->username = (string)$i;
            $record->email = (string)$i . "@gmail.com";
            $record->password = bcrypt((string)$i);
            $record->save();
        }

        // angkatan 21
        for ($i = 2105551001; $i <= 2105551150; $i++) {
            $record = User::firstOrNew(['username' => (string)$i]);
            $record->name = (string)$i;
            $record->username = (string)$i;
            $record->email = (string)$i . "@gmail.com";
            $record->password = bcrypt((string)$i);
            $record->save();
        }
    }
}
