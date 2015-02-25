@extends("layout.sepuluhrpladmin")

@section("content")

<!--============================== content =================================-->      
      <div id="content"><div class="ic">More Website Templates @ TemplateMonster.com. November19, 2012!</div>
    <div class="container"><br />
        <div align="center">
            <form method="post">
            <input type="text" name="nisn" placeholder="nisn" />
            {{ $errors->first('nisn')}}<br />
            <input type="text" name="nama" placeholder="nama_lengkap" />
            {{ $errors->first('nama')}}<br />
            <select name="kelas">
            <option>X-RPL</option>
            <option>XI-RPL</option>
            <option>XII-RPL</option>
            </select>
            {{ $errors->first('kelas')}}<br />
            <input type="text" name="nilai_angka" placeholder="nilai_angka" />
            {{ $errors->first('nilai_angka')}}<br />
            <input type="text" name="nilai_huruf" placeholder="nilai_huruf" />
            {{$errors->first('nilai_huruf')}}<br />
			<a href="{{URL::to('Sepuluhrpladmin/post')}}"><button>Simpan</button></a>
            </form>
             <table border="5" cellspacing="20" cellpadding="10" width="956">
     <thead>
       <tr>
      <th class="success">   Nisn   </th>
      <th class="success">   Nama Lengkap   </th>
       <th class="success">   Kelas   </th>
       <th class="success">   Nilai angka   </th>
       <th class="success">   Nilai huruf   </th>
       <th class="success">   Action   </th>
      <th colspan="2" class="success"></th>
        </tr>
     </thead>
     <tbody>
  	@foreach($data as $tampil)
    <tr>
        <td height="21" align="center" valign=" "bottomnowrap="nowrap" class="error">{{ $tampil->nisn  }}</td>
    	<td height="21" align="center" valign=" "bottomnowrap="nowrap" class="error">{{ $tampil->nama  }}</td>
    	<td height="21" align="center" valign=" "bottomnowrap="nowrap" class="warning">{{ $tampil->kelas  }}</td>
    	<td height="21" align="center" valign=" "bottomnowrap="nowrap" class="warning">{{ $tampil->nilai_angka  }}</td>
      <td height="21" align="center" valign=" "bottomnowrap="nowrap" class="warning">{{ $tampil->nilai_huruf  }}</td>
      <td height="21" align="center" valign=" "bottomnowrap="nowrap" class="text-center">
         <a href="{{URL::to("Sepuluhrpladmin/edit/".$tampil->id) }}"><button class="btn btn-success">Edit</button></a>
        <a href="{{URL::to("Sepuluhrpladmin/" .$tampil->id. "/destroy")}}"><button class="btn btn-success">Hapus</button>
        </td>
    </tr>
    @endforeach
  </tbody>
   </table>
        </div>
           </div>
  </div>
    </div>
    
    @stop