<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User_accounts;
use Illuminate\Support\Facades\Hash;

class UserController extends Controller
{
    public function index()
    {
        $users = User_accounts::all();
        return view('admin.users.index', compact('users'));
    }

    public function create()
    {
        return view('admin.users.create');
    }

    public function store(Request $request)
    {
        $request->validate([
            'name' => 'required|string|max:255',
            'email' => 'required|string|email|max:255|unique:users',
            'city' => 'required|string|max:255',
            'role' => 'required|string|in:admin,user',
            'password' => 'required|string|min:4|confirmed',
        ]);

        User_accounts::create([
            'name' => $request->name,
            'email' => $request->email,
            'city' => $request->city,
            'role' => $request->role,
            'password' => Hash::make($request->password),
        ]);

        return redirect()->route('admin.users.index')->with('success', 'User added successfully.');
    }

    public function edit(User_accounts $user)
    {
        return view('admin.users.edit', compact('user'));
    }

    public function update(Request $request, User_accounts $user)
    {
        $request->validate([
            'name' => 'required|string|max:255',
            'email' => 'required|string|email|max:255',
            'city' => 'required|string|max:255',
            'role' => 'required|string|in:admin,user',
            'password' => 'nullable|string|min:4|confirmed',
        ]);

        $user->name = $request->name;
        $user->email = $request->email;
        $user->city = $request->city;
        $user->role = $request->role;

        if ($request->password) {
            $user->password = Hash::make($request->password);
        }

        $user->save();

        return redirect()->route('admin.users.index')->with('success', 'User updated successfully.');
    }

    public function destroy(User_accounts $user)
    {
        $user->delete();
        return redirect()->route('admin.users.index')->with('success', 'User deleted successfully.');
    }
}
