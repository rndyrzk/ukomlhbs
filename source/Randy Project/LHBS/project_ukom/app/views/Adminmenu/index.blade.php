@extends("layout.adminmenu")

@section("content")

<!--============================== content =================================-->      
      <div id="content"><div class="ic">More Website Templates @ TemplateMonster.com. November19, 2012!</div>
    <div class="container">
          <div class="row">
          <div align="center">
            <h3>Tambah Admin</h3>
          <a href="{{URL::to("#"><img src="img/administrator.png" alt=""></a>
            <input type="text" name="username" placeholder="username"/><br />
             <input type="text" name="nama" placeholder="nama"/><br />
              <input type="text" name="email" placeholder="email"/><br />
            <input type="password" name="password" placeholder="password"/><br />
             <input type="text" name="alamat" placeholder="alamat"/><br />
            <div align="center"><button>Simpan</button></div>
            <div align="center">
      </div>
        </div>
  </div>
    </div>

@stop