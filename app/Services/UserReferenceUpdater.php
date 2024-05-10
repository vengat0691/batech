<?php

namespace App\Services;

use App\Models\User;

class UserReferenceUpdater
{
    public function updateReferenceIds($limit = 3)
    {
        $usersForReference = User::inRandomOrder()->limit($limit)->pluck('id');

        User::whereNotIn('id', $usersForReference)->get()->each(function ($user) use ($usersForReference) {
            $randomReferenceId = $usersForReference->random();
            $user->update(['reference_id' => $randomReferenceId]);
        });
    }
}
