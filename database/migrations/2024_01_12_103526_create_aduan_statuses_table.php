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
        Schema::create('aduan_statuses', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('aduan_id');
            $table->string('status');
            $table->string('daftar_desa');
            $table->text('keteranga')->nullable();
            $table->timestamps();
            $table->foreign('aduan_id')->references('id')->on('aduans')->onDelete('cascade');
// Membuat foreign key yang menghubungkan kolom 'aduan_id' dengan kolom 'id' di tabel 'aduans'. 
// onDelete('cascade') berarti jika rekaman di tabel 'aduans' dihapus, maka juga akan dihapus dari tabel 'aduan_status'.

        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('aduan_statuses');
    }
};
