@extends("layout.xrpl")

@section("content")

<!--============================== content =================================-->      
      <div id="content"><div class="ic">More Website Templates @ TemplateMonster.com. November19, 2012!</div>
    <div class="container"><br />
    <div align="right">
    <input type="text" name="search" placeholder="Search"/>
    <button class="btn btn-warning">Search</button>
    </div>
    <div align="center">
    <table border="5" cellspacing="20" cellpadding="10" width="956">
     <thead>
       <tr>
      <th class="success">   Nisn   </th>
      <th class="success">   Nama Lengkap   </th>
       <th class="success">   Kelas   </th>
       <th class="success">   Nilai angka   </th>
       <th class="success">   Nilai huruf   </th>
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
    </tr>
    @endforeach
  </tbody>
   </table>
   </div>
         <!-- <div class="row">
        <article class="span12">
        <h3>Tentang</h3>
         </article>
        <div class="clear"></div>
         <ul class="portfolio clearfix">           
          <li class="box"><a href="img/image-blank.png" class="magnifier" ><img alt="" src="img/page3-img1.jpg"></a></li> 
           <li class="box"><a href="img/image-blank.png" class="magnifier" ><img alt="" src="img/page3-img2.jpg"></a></li> 
           <li class="box"><a href="img/image-blank.png" class="magnifier" ><img alt="" src="img/page3-img3.jpg"></a></li> 
           <li class="box"><a href="img/image-blank.png" class="magnifier" ><img alt="" src="img/page3-img4.jpg"></a></li> 
           <li class="box"><a href="img/image-blank.png" class="magnifier" ><img alt="" src="img/page3-img5.jpg"></a></li> 
           <li class="box"><a href="img/image-blank.png" class="magnifier" ><img alt="" src="img/page3-img6.jpg"></a></li> 
           <li class="box"><a href="img/image-blank.png" class="magnifier" ><img alt="" src="img/page3-img7.jpg"></a></li> 
           <li class="box"><a href="img/image-blank.png" class="magnifier" ><img alt="" src="img/page3-img8.jpg"></a></li> 
           <li class="box"><a href="img/image-blank.png" class="magnifier" ><img alt="" src="img/page3-img9.jpg"></a></li> 
           <li class="box"><a href="img/image-blank.png" class="magnifier" ><img alt="" src="img/page3-img10.jpg"></a></li> 
           <li class="box"><a href="img/image-blank.png" class="magnifier" ><img alt="" src="img/page3-img11.jpg"></a></li> 
           <li class="box"><a href="img/image-blank.png" class="magnifier" ><img alt="" src="img/page3-img12.jpg"></a></li> 
           <li class="box"><a href="img/image-blank.png" class="magnifier" ><img alt="" src="img/page3-img13.jpg"></a></li> 
           <li class="box"><a href="img/image-blank.png" class="magnifier" ><img alt="" src="img/page3-img14.jpg"></a></li> 
           <li class="box"><a href="img/image-blank.png" class="magnifier" ><img alt="" src="img/page3-img15.jpg"></a></li> 
           <li class="box"><a href="img/image-blank.png" class="magnifier" ><img alt="" src="img/page3-img16.jpg"></a></li>                       
            </ul> 
      </div> -->
        </div>
  </div>
    </div>
    
    @stop