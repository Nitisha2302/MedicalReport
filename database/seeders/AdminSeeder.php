<?php

namespace Database\Seeders;

use App\Models\User;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Spatie\Permission\Models\Role;

class AdminSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        // Create admin role if not exists
        $role = Role::firstOrCreate(['name' => 'admin']);

        // Create admin user
        $user = User::firstOrCreate([
            'name' => 'Admin User',
            'username' => 'Admin',
            'email' => 'admin@admin.com',
            'password' => bcrypt('12345678'),
        ]);

        // Assign admin role to the user
        $user->assignRole($role);
    }
}
