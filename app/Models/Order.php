<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Order extends Model
{
    use HasFactory;

    protected $table = 'order';

    protected $fillable = [
        'customer_id',
        'plant_id',
        'pot_id',
        'ordered_date',
        'delivery_date',
        'unit_price',
        'quantity',
        'total_amount',
    ];

    
    public function customer()
    {
        return $this->belongsTo(Customer::class);
    }

    
    public function plant()
    {
        return $this->belongsTo(Plant::class);
    }

    public function pot()
    {
        return $this->belongsTo(Pot::class);
    }

    
    protected $casts = [
        'ordered_date' => 'datetime',
        'delivery_date' => 'datetime',
    ];
}
