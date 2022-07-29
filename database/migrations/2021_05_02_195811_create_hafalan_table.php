<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateHafalanTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('hafalan', function(Blueprint $table)
		{
			$table->integer('id', true);
			$table->integer('id_santri')->index('idxs');
			$table->integer('id_ustads')->index('idxu');
			$table->integer('id_surat')->index('idxr');
			$table->integer('ayat_dari');
			$table->integer('ayat_ke');
			$table->timestamp('tgl')->nullable()->default(DB::raw('CURRENT_TIMESTAMP'));
			$table->text('catatan')->nullable();
			$table->integer('khatam')->default(0);
			$table->string('stat', 50)->nullable()->default('');
			$table->integer('jenis')->nullable();
			$table->integer('status')->nullable();
			$table->integer('halaman')->nullable();
			$table->integer('juz')->nullable()->index('idxj');
			$table->integer('hal_dr')->nullable();
			$table->integer('hal_ke')->nullable();
			$table->string('status_juz', 50)->nullable();
			$table->integer('khatam_juz')->nullable()->default(0);
		});
	}


	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down()
	{
		Schema::drop('hafalan');
	}

}
