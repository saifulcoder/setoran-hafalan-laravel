<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateHafalanTempTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('hafalan_temp', function(Blueprint $table)
		{
			$table->integer('id', true);
			$table->integer('id_santri')->nullable();
			$table->string('nama', 100)->nullable();
			$table->string('kelas', 20)->nullable();
			$table->string('ruang', 100)->nullable();
			$table->integer('id_surat')->nullable();
			$table->string('nama_surat', 50)->nullable();
			$table->integer('jml_ayat')->nullable();
			$table->string('stat', 20)->nullable();
			$table->string('khatam', 10)->nullable();
		});
	}


	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down()
	{
		Schema::drop('hafalan_temp');
	}

}
