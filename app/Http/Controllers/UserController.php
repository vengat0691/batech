<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use App\Models\User;
use Exception;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Log;

class UserController extends Controller
{
    /**
     * Store a newly created user.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function createUser(Request $request)
    {
        DB::beginTransaction();
        try {
            // Create a new user
            $user = new User();
            $user->name = $request->input('name');
            $user->email = $request->input('email');
            $user->password = Hash::make('password');
            $user->contact_number = $request->input('contact_number');
            $user->reference_id = $request->input('reference_id') ?? null; // Set the reference id
            $user->save();
            DB::commit();

            return response()->json([
                'message' => 'User created successfully',
                'user' => $user
            ], 201);
            
        } catch (Exception $e){
            DB::rollBack();
            Log::info("Error on inserting user ".$e->getMessage());
        
            return response()->json([
                'message' => 'User not created',
            ], 400);
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */

    public function getUser(Request $request)
    {
        try {
            $user = User::where('reference_id', null)->get();

            return response()->json([
                'message' => 'User retrieved successfully',
                'user' => $user
            ], 200);
        } catch (Exception $e){
            Log::info("Error on inserting user ".$e->getMessage());

            return response()->json([
                'message' => 'User retrieval failed',
            ], 404);
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function getUserWithReference(Request $request, $reference_id = null)
    {
        try {
            if ($reference_id) {
                $users = User::where('reference_id', $reference_id)->get();
            } else {
                $users = User::all();
            }
        
            if ($users->isEmpty()) {
                return response()->json([
                    'message' => 'User not found',
                    'user' => null
                ], 404);
            } else {
                return response()->json([
                    'message' => 'User retrieved successfully',
                    'user' => $users
                ], 200);
            }
        } catch (Exception $e) {
            Log::error("Error on retrieving user: ".$e->getMessage());
            
            return response()->json([
                'message' => 'User retrieval failed',
            ], 404);
        }        
    }
}
