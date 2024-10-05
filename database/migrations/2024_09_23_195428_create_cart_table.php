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
        Schema::create('cart', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('user_id'); // Foreign key reference to user_accounts
            $table->unsignedBigInteger('plant_id')->nullable()->default(null); // Nullable foreign key reference to Plant
            $table->unsignedBigInteger('pot_id')->nullable()->default(null); // Nullable foreign key reference to Pot
            $table->foreign('user_id')->references('id')->on('user_accounts')->onDelete('cascade'); // Foreign key constraint for user_id
            $table->foreign('plant_id')->references('id')->on('plant')->onDelete('set null'); // Foreign key constraint for plant_id
            $table->foreign('pot_id')->references('id')->on('pot')->onDelete('set null'); // Foreign key constraint for pot_id
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('cart');
    }
};
