<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateHalamanTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('halaman', function(Blueprint $table)
		{
			$table->integer('id', true);
			$table->integer('no_halaman')->nullable();
			$table->integer('juz')->nullable();
			$table->integer('surat')->nullable();
			$table->integer('ayat')->nullable();
			$table->integer('halaman')->nullable();
			$table->integer('nilai')->nullable()->index('idxnilai');
		});
	}


	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down()
	{
		Schema::drop('halaman');
	}

}
