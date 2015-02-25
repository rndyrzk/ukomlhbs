<?php

class SepuluhrpladminController extends \BaseController {

	/**
	 * Display a listing of the resource.
	 *
	 * @return Response
	 */
	public function index()
	{
	   $admin = Xrpladmin::All();
		return View::make("Sepuluhrpladmin.index")->with("data", $admin);
	}


	/**
	 * Show the form for creating a new resource.
	 *
	 * @return Response\
	 */
	public function create()
	{
		return View::make("Sepuluhrpladmin.index");
	}


	/**
	 * Store a newly created resource in storage.
	 *
	 * @return Response
	 */
	public function store()
	{
		$rules = array(
        'nisn' => 'required',
        'nama' => 'required',
        'kelas' => 'required',
        'nilai_angka' => 'required',
        'nilai_huruf' => 'required'
        
        
        );
    
        $validation = Validator::make(Input::all(), $rules);
        if($validation->fails()) {
        return Redirect::back()->withInput()->withErrors($validation->messages());
        }
        else{
        $admin = new Xrpladmin;

		$admin->nisn = Input::get('nisn');
		$admin->nama = Input::get('nama');		
		$admin->kelas = Input::get('kelas');
		$admin->nilai_angka = Input::get('nilai_angka');		
		$admin->nilai_huruf = Input::get('nilai_huruf');

		$admin->save();

		return Redirect::to('Sepuluhrpladmin');
        }
	}


	/**
	 * Display the specified resource.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function show($id)
	{
		//
	}


	/**
	 * Show the form for editing the specified resource.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function edit($id)
	{
		$admin = DB::table('xrpladmins')->where('id',$id)->first();
      $admin =
      ['xrpladminsbyid' => $admin];
  return View::make('Sepuluhrpladmin.edit', $admin);
	}


	/**
	 * Update the specified resource in storage.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function update($id)
	{
		$rules = array(
            'nisn' => 'required',
            'nama' => 'required',
        	'kelas' => 'required',
            'nilai_angka' => 'required',
        	'nilai_huruf' => 'required',
     
      );
 
      $validator = Validator::make(Input::all(), $rules);
 
      if ($validator->fails()) {   
            echo "string";
            return Redirect::to('Sepuluhrpladmin/edit/'.$id)->withErrors($validator)->withInput();
      } else {
      DB::table('xrpladmins')
      ->where('id', $id)
      ->update(array(
                  'nisn' => Input::get('nisn'),
                  'nama' => Input::get('nama'),
                  'kelas' => Input::get('kelas'),
                  'nilai_angka' => Input::get('nilai_angka'),
                  'nilai_huruf' => Input::get('nilai_huruf')
            ));
 
      Session::flash('message', 'Data Berhasil Diubah');
      return Redirect::to('Sepuluhrpladmin');
      }
	}


	/**
	 * Remove the specified resource from storage.
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function destroy($id)
	{
        $admin = Xrpladmin::find($id);
		$admin->delete();
		return Redirect::to("Sepuluhrpladmin");
	}


}
