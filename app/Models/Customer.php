<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Customer extends Model
{
    use HasFactory;
    
    protected $table = 'customer';

    protected $fillable = [
        'user_id',
        'first_name',
        'last_name',
        'phone',
        'address',
        'city',
        'province',
        'district',
        'postal_code',
    ];

    
    public function user()
    {
        return $this->belongsTo(User_accounts::class, 'user_id');
    }
}
