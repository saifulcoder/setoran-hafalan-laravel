<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateCmsStatisticComponentsTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('cms_statistic_components', function(Blueprint $table)
		{
			$table->increments('id');
			$table->integer('id_cms_statistics')->nullable();
			$table->string('componentID')->nullable();
			$table->string('component_name')->nullable();
			$table->string('area_name', 55)->nullable();
			$table->integer('sorting')->nullable();
			$table->string('name')->nullable();
			$table->text('config')->nullable();
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
		Schema::drop('cms_statistic_components');
	}

}
