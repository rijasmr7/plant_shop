<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class MyCart extends Model
{
    use HasFactory;

    protected $table = 'cart';

    protected $fillable = [
        'user_id',
        'plant_id',
        'pot_id',
    ];

    
    public function user()
    {
        return $this->belongsTo(User_accounts::class, 'user_id');
    }

    public function plant()
    {
        return $this->belongsTo(Plant::class, 'plant_id');
    }

    public function pot()
    {
        return $this->belongsTo(Pot::class, 'pot_id');
    }
}
