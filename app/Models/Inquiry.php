<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Inquiry extends Model
{
    use HasFactory;
    
    protected $table = 'inquiry';

    
    protected $fillable = [
        'user_id',
        'name',
        'phone',
        'address',
        'message',
        'replies'
    ];

    
    public function user()
    {
        return $this->belongsTo(User_accounts::class, 'user_id');
    }
}
