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
            $table->renameColumn('plant_id', 'pot_id');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::table('pot', function (Blueprint $table) {
            $table->renameColumn('pot_id', 'plant_id');
        });
    }
};
