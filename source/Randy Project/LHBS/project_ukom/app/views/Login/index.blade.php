@extends("layout.login")

@section("content")

<!--============================== content =================================-->      
      <div id="content"><div class="ic">More Website Templates @ TemplateMonster.com. November19, 2012!</div>
    <div class="container">
          <div>
        <span>Login</span>
            <h3>Admin</h3>
            <a href="{{URL::to("Admin")}}"><img src="img/administrator.png" alt=""></a>
            </div>
                        <div>
						<h3>User/Pengguna</h3>
						<a href="{{URL::to("Beranda")}}"><img src="img/gI_59236_Icon512.png" alt=""></a>
					
        </div>
        </div>
  </div>
    </div>

@stop