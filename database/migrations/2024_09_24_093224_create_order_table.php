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
            $table->unsignedBigInteger('customer_id'); // Foreign key reference to user_accounts
            $table->unsignedBigInteger('plant_id')->nullable()->default(null); // Nullable foreign key reference to Plant
            $table->unsignedBigInteger('pot_id')->nullable()->default(null); // Nullable foreign key reference to Pot
            $table->foreign('customer_id')->references('id')->on('customer')->onDelete('cascade'); // Foreign key constraint for user_id
            $table->foreign('plant_id')->references('id')->on('plant')->onDelete('set null'); // Foreign key constraint for plant_id
            $table->foreign('pot_id')->references('id')->on('pot')->onDelete('set null'); // Foreign key constraint for pot_id
            // Order details
            $table->date('ordered_date');
            $table->date('order_cancellation_by'); // 7 days from ordered date
            $table->date('delivery_date');         // 14 days from ordered date
            
            // Payment details
            $table->enum('payment_option', ['card', 'cash on delivery']);
            $table->enum('payment_status', ['pending', 'paid'])->default('pending');
            
            // Pricing and quantity
            $table->decimal('unit_price', 10, 2);  // Unit price of the plant
            $table->integer('quantity');           // Quantity selected
            $table->decimal('total_amount', 10, 2); // Total amount (unit price * quantity)

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
