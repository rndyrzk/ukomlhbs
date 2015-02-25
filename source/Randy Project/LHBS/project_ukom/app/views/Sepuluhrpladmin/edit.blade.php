@extends("layout.sepuluhrpladmin")

@section("content")

 <div id="content"><div class="ic">More Website Templates @ TemplateMonster.com. November19, 2012!</div>
    <div class="container"><br />
        <div align="center">
            {{ Form::model($xrpladminsbyid, array('route' => array('Sepuluhrpladmin.update', $xrpladminsbyid->id))) }}
                            <div class="form-group">
		                      {{ Form::label('nisn', 'Nisn') }}
                                {{ Form::text('nisn', null, array('class' => 'form-control','placeholder'=>'Nisn')) }}
                                {{ '<div>'.$errors->first('nisn').'</div>' }}
                            </div>
                 
                            <div class="form-group">
                                {{ Form::label('nama', 'Nama') }}
                                {{ Form::text('nama', null, array('class' => 'form-control','placeholder'=>'Nama Lengkap')) }}  
                                {{ '<div>'.$errors->first('nama').'</div>' }}
                            </div>
                            <div class="form-group">
                                {{ Form::label('kelas', 'Kelas') }}
                                {{ Form::text('kelas', null, array('class' => 'form-control','placeholder'=>'Kode SK')) }}  
                                {{ '<div>'.$errors->first('kelas').'</div>' }}
                            </div>
                            <div class="form-group">
                                {{ Form::label('nilai_angka', 'Nilai_angka') }}
                                {{ Form::text('nilai_angka', null, array('class' => 'form-control','placeholder'=>'Nilai Angka')) }}  
                                {{ '<div>'.$errors->first('nilai_angka').'</div>' }}
                            </div>
                            <div class="form-group">
                                {{ Form::label('nilai_huruf', 'Nilai_huruf') }}
                                {{ Form::text('nilai_huruf', null, array('class' => 'form-control','placeholder'=>'Nilai Huruf')) }}  
                                {{ '<div>'.$errors->first('nilai_huruf').'</div>' }}
                            </div>
                            {{ Form::submit('SIMPAN', array('class' => 'form-control')) }}
                        {{ Form::close() }}
        </div>
        </div>
  </div>
    </div>

@stop