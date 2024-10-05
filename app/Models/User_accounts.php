<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Notifications\Notifiable;
use Illuminate\Foundation\Auth\User as Authenticatable;

class User_accounts extends Authenticatable
{
    use HasFactory, Notifiable;

    
    protected $table = 'user_accounts';

    
    protected $fillable = ['name', 'email', 'city', 'password'];

    
    protected $hidden = [
        'password',
    ];

    
    protected $casts = [
        'email_verified_at' => 'datetime',
    ];
}
