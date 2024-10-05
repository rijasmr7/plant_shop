<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User_accounts;
use Illuminate\Support\Facades\Auth;

class LoginController extends Controller
{
    public function showLoginForm()
    {
        return view('login');
    }

    public function login(Request $request)
    {
        $credentials = $request->only('email', 'password');

        if (Auth::attempt($credentials)) {
            $user = Auth::user(); 
        
            // Check if the user's role is 'admin'
            if ($user->role === 'admin') {
                return redirect()->intended('/admin')->with('success', 'Welcome Admin, ' . $user->name);
            }
        
            // If not admin, redirect to the home page
            return redirect()->intended('/home')->with('success', 'Welcome, ' . $user->name);
        } else {
            return redirect()->back()->withErrors(['error' => 'Invalid credentials. Please try again.']);
        }
        
    }
}
