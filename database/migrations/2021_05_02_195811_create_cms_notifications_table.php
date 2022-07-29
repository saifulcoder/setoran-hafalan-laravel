<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateCmsNotificationsTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('cms_notifications', function(Blueprint $table)
		{
			$table->increments('id');
			$table->integer('id_cms_users')->nullable();
			$table->string('content')->nullable();
			$table->string('url')->nullable();
			$table->boolean('is_read')->nullable();
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
		Schema::drop('cms_notifications');
	}

}
