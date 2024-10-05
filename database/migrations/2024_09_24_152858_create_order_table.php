<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('order', function (Blueprint $table) {
            $table->id();
            $table->foreignId('customer_id')->constrained('customer')->onDelete('cascade');
            $table->foreignId('plant_id')->constrained('plant')->onDelete('cascade');
            $table->date('ordered_date');
            $table->date('delivery_date'); // 10 days after the order date
            $table->decimal('unit_price', 10, 2); // Unit price of the plant
            $table->integer('quantity'); // Quantity of plants ordered
            $table->decimal('total_amount', 10, 2); // Total amount = unit_price * quantity
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('order');
    }
};
