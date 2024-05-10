<?php

namespace Database\Seeders;

// use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use App\Models\User;
use Illuminate\Database\Seeder;
use App\Services\UserReferenceUpdater;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     */
    public function run(UserReferenceUpdater $userReferenceUpdater): void
    {
        User::factory(10)->create();
        //call userReferenceUpdater service to update reference id 
        $userReferenceUpdater->updateReferenceIds();
    }
}
