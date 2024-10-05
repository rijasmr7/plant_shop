<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User_accounts;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Auth;

class RegisterController extends Controller
{

    public function showRegistrationForm()
    {
        return view('index'); 
    }

    public function register(Request $request)
    {
        $request->validate([
            'name' => 'required|string|max:255',
            'email' => 'required|string|email|max:255|unique:user_accounts',
            'city' => 'required|string|max:255',
            'password' => 'required|string|confirmed|min:4',
        ]);

        $user = User_accounts::create([
            'name' => $request->name,
            'email' => $request->email,
            'city' => $request->city,
            'password' => Hash::make($request->password),
        ]);

        Auth::login($user);

        return redirect()->route('home')->with('success', 'Welcome, ' . $user->name);
    }
}
