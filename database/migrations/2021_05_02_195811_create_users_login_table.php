<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateUsersLoginTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('users_login', function(Blueprint $table)
		{
			$table->increments('id');
			$table->string('name')->nullable();
			$table->string('photo')->nullable();
			$table->string('email')->nullable();
			$table->string('password')->nullable();
			$table->integer('id_cms_privileges')->nullable();
			$table->timestamps(10);
			$table->string('status', 50)->nullable();
			$table->string('id_santri', 20)->nullable()->default('');
		});
	}


	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down()
	{
		Schema::drop('users_login');
	}

}
