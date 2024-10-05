<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class UpdateMyCartTable extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::table('my_cart', function (Blueprint $table) {
            // Adding foreign key columns and relationships
            $table->unsignedBigInteger('user_id')->after('id'); // Adding user_id column
            $table->unsignedBigInteger('plant_id')->nullable()->default(null)->after('user_id'); // Adding plant_id column
            $table->unsignedBigInteger('pot_id')->nullable()->default(null)->after('plant_id'); // Adding pot_id column

            // Adding foreign key constraints
            $table->foreign('user_id')->references('id')->on('user_accounts')->onDelete('cascade');
            $table->foreign('plant_id')->references('id')->on('plant')->onDelete('set null');
            $table->foreign('pot_id')->references('id')->on('pot')->onDelete('set null');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::table('my_cart', function (Blueprint $table) {
            // Dropping the foreign keys and columns
            $table->dropForeign(['user_id']);
            $table->dropForeign(['plant_id']);
            $table->dropForeign(['pot_id']);

            $table->dropColumn(['user_id', 'plant_id', 'pot_id']);
        });
    }
}
