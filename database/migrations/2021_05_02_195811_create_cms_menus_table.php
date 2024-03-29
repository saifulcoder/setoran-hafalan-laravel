<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateCmsMenusTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('cms_menus', function(Blueprint $table)
		{
			$table->increments('id');
			$table->string('name')->nullable();
			$table->string('type')->default('url');
			$table->string('path')->nullable();
			$table->string('color')->nullable();
			$table->string('icon')->nullable();
			$table->integer('parent_id')->nullable();
			$table->boolean('is_active')->default(1);
			$table->boolean('is_dashboard')->default(0);
			$table->integer('id_cms_privileges')->nullable();
			$table->integer('sorting')->nullable();
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
		Schema::drop('cms_menus');
	}

}
