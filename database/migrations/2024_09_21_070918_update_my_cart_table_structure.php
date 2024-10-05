<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class UpdateMyCartTableStructure extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::table('my_cart', function (Blueprint $table) {
            // Add the foreign key columns if they don't exist
            if (!Schema::hasColumn('my_cart', 'user_id')) {
                $table->unsignedBigInteger('user_id')->after('id');
                $table->foreign('user_id')->references('id')->on('user_accounts')->onDelete('cascade');
            }
            if (!Schema::hasColumn('my_cart', 'plant_id')) {
                $table->unsignedBigInteger('plant_id')->nullable()->default(null)->after('user_id');
                $table->foreign('plant_id')->references('id')->on('plant')->onDelete('set null');
            }
            if (!Schema::hasColumn('my_cart', 'pot_id')) {
                $table->unsignedBigInteger('pot_id')->nullable()->default(null)->after('plant_id');
                $table->foreign('pot_id')->references('id')->on('pot')->onDelete('set null');
            }
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::table('my_cart', function (Blueprint $table) {
            $table->dropForeign(['user_id']);
            $table->dropForeign(['plant_id']);
            $table->dropForeign(['pot_id']);

            $table->dropColumn(['user_id', 'plant_id', 'pot_id']);
        });
    }
}
