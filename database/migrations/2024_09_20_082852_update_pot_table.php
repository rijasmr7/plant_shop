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
        Schema::table('pot', function (Blueprint $table) {
            $table->dropColumn('pot_id');
            $table->boolean('is_available')->default(true)->change();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::table('pot', function (Blueprint $table) {
            $table->integer('pot_id')->nullable(); 
            $table->boolean('is_available')->change(); 
        });
    }
};
