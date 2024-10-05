<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Plant extends Model
{
    use HasFactory;
    protected $table = 'plant';
    protected $fillable = ['plant_id', 'name', 'price', 'size', 'description', 'category', 'is_available', 'quantity', 'leave_color', 'purchased_date','image'];
}
