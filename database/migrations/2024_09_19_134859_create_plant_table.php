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
        Schema::create('plant', function (Blueprint $table) {
            $table->id();
            $table->integer('plant_id');
            $table->string('name');
            $table->float('price', 8, 2);
            $table->string('size');
            $table->string('description');
            $table->string('category');
            $table->boolean('is_available');
            $table->integer('quantity');
            $table->string('leave_color');
            $table->date('purchased_date');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('plant');
    }
};
