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
        Schema::table('order', function (Blueprint $table) {
            $table->unsignedBigInteger('pot_id')->nullable()->after('plant_id');
            $table->foreign('pot_id')->references('id')->on('pot')->onDelete('cascade');
            $table->unsignedBigInteger('plant_id')->nullable()->change();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::table('order', function (Blueprint $table) {
            $table->dropForeign(['pot_id']); // If you added the foreign key constraint
            $table->dropColumn('pot_id');
            $table->unsignedBigInteger('plant_id')->nullable(false)->change(); // Make plant_id non-nullable
        });
    }
};
