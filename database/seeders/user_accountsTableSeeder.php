<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB; // Import the DB facade
use Illuminate\Support\Facades\Hash;

class user_accountsTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run()
    {
        DB::table('user_accounts')->insert([
            'name' => 'Mohamed Rijas',
            'email' => 'rijasmohamedmr7@gmail.com',
            'city' => 'Kandy',
            'password' => Hash::make('1234'),
            'role' => 'admin',
            ]);
    }
}
