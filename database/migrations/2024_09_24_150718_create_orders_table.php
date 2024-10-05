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
        Schema::create('orders', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('customer_id');
            $table->unsignedBigInteger('plant_id');
            $table->date('ordered_date');
            $table->date('delivery_date'); // 10 days after the order date
            $table->decimal('unit_price', 10, 2); // Unit price of the plant
            $table->integer('quantity'); // Quantity of plants ordered
            $table->decimal('total_amount', 10, 2); // Total amount = unit_price * quantity
            $table->foreign('customer_id')->references('id')->on('customer')->onDelete('cascade'); // Foreign key constraint for user_id
            $table->foreign('plant_id')->references('id')->on('plant')->onDelete('set null'); // Foreign key constraint for plant_id
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('orders');
    }
};
