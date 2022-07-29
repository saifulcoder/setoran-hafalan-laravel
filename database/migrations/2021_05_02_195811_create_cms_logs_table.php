<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateCmsLogsTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('cms_logs', function(Blueprint $table)
		{
			$table->increments('id');
			$table->string('ipaddress', 50)->nullable();
			$table->string('useragent')->nullable();
			$table->string('url')->nullable();
			$table->string('description')->nullable();
			$table->text('details')->nullable();
			$table->integer('id_cms_users')->nullable();
			$table->timestamps(10);
		});
	}


	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down()
	{
		Schema::drop('cms_logs');
	}

}
