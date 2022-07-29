<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateJuzTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('juz', function(Blueprint $table)
		{
			$table->integer('id', true);
			$table->integer('id_surat')->nullable();
			$table->integer('juz')->nullable();
			$table->string('surat', 20)->nullable();
			$table->integer('ayat')->nullable();
			$table->integer('nilai')->nullable();
		});
	}


	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down()
	{
		Schema::drop('juz');
	}

}
