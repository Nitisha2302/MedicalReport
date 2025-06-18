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
        Schema::table('users', function (Blueprint $table) {
            $table->string('username')->unique();
            $table->string('image')->nullable();
            $table->string('phone')->nullable();
            $table->string('address')->nullable();
            $table->string('specialized')->nullable();
            $table->string('gender')->nullable();
            $table->string('bio')->nullable();

            $table->softDeletes();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::table('users', function (Blueprint $table) {
            $table->dropColumn('username');
            $table->dropColumn('image');
            $table->dropColumn('phone');
            $table->dropColumn('address');
            $table->dropColumn('specialized');
            $table->dropColumn('gender');
            $table->dropColumn('bio');
            $table->dropSoftDeletes();
        });
    }
};
