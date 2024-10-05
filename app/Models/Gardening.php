<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Gardening extends Model
{
    use HasFactory;
    protected $table = 'gardening';

    protected $fillable = [
        'user_id',
        'customer_name',
        'phone',
        'address',
        'gardening_date',
    ];

    
    public function user()
    {
        return $this->belongsTo(User_accounts::class, 'user_id');
    }
}
