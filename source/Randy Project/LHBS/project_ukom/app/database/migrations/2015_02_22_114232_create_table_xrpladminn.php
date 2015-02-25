<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateTableXrpladminn extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
			Schema::create('xrpladmins', function(Blueprint $table)
		{
            $table->increments('id');
			$table->string('nisn');
			$table->string('nama');
			$table->string('kelas');
			$table->string('nilai_angka');
			$table->string('nilai_huruf');
			$table->timestamps();
		});
	}

	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down()
	{
		Schema::drop("xrpladmins");
	}

}
