<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateHafalanJuzTempTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('hafalan_juz_temp', function(Blueprint $table)
		{
			$table->integer('id', true);
			$table->integer('id_santri')->nullable();
			$table->string('nama', 100)->nullable();
			$table->string('kelas', 20)->nullable();
			$table->string('ruang', 100)->nullable();
			$table->integer('juz')->nullable();
			$table->string('halaman', 50)->nullable();
			$table->string('status_juz', 20)->nullable();
			$table->string('khatam_juz', 10)->nullable();
		});
	}


	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down()
	{
		Schema::drop('hafalan_juz_temp');
	}

}
