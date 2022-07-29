<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateSantriTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('santri', function(Blueprint $table)
		{
			$table->integer('id', true);
			$table->string('nis', 30)->nullable();
			$table->string('nama', 100)->default('');
			$table->integer('id_kelas');
			$table->integer('id_ruang');
			$table->integer('id_halaqoh');
		});
	}


	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down()
	{
		Schema::drop('santri');
	}

}
