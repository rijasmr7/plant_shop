<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Wishlist extends Model
{
    use HasFactory;
    protected $table = 'wishlist';
    protected $fillable = [
        'user_id',
        'customer_name',
        'phone',
        'product_name',
        'product_specification',
        'image',
    ];

    
    public function user()
    {
        return $this->belongsTo(User_accounts::class, 'user_id');
    }
}
