<?php namespace App\Http\Controllers;
use Illuminate\Http\Request;
	use Session;
	//use Request;
	use DB;
	use CRUDBooster;
	use Carbon\Carbon;
	


	class AdminSetoranhafalanController extends \crocodicstudio\crudbooster\controllers\CBController {

	    public function cbInit() {
			//dd(Session());

			# START CONFIGURATION DO NOT REMOVE THIS LINE
			$this->title_field = "id";
			$this->limit = "20";
			$this->orderby = "id,desc";
			$this->global_privilege = false;
			$this->button_table_action = true;
			$this->button_bulk_action = true;
			$this->button_action_style = "button_icon";
			$this->button_add = false;
			$this->button_edit = false;
			$this->button_delete = false;
			$this->button_detail = true;
			$this->button_show = true;
			$this->button_filter = true;
			$this->button_import = false;
			$this->button_export = false;
			$this->table = "santri";
			# END CONFIGURATION DO NOT REMOVE THIS LINE

			# START COLUMNS DO NOT REMOVE THIS LINE
			$this->col = [];
			$this->col[] = ["label"=>"Nama","name"=>"nama"];
			$this->col[] = ["label"=>"Kelas","name"=>"id_kelas","join"=>"kelas,kelas"];
			$this->col[] = ["label"=>"Ruang","name"=>"id_ruang","join"=>"ruang,ruang"];
			# END COLUMNS DO NOT REMOVE THIS LINE

			# START FORM DO NOT REMOVE THIS LINE
			$this->form = [];
			$this->form[] = ['label'=>'Nama','name'=>'nama','type'=>'select2','validation'=>'required|integer|min:0','width'=>'col-sm-10','datatable'=>'santri,nama'];
			$this->form[] = ['label'=>'Kelas','name'=>'id_kelas','type'=>'select2','validation'=>'required|integer|min:0','width'=>'col-sm-10','datatable'=>'kelas,kelas'];
			$this->form[] = ['label'=>'Ruang','name'=>'id_ruang','type'=>'select2','validation'=>'required|integer|min:0','width'=>'col-sm-10','datatable'=>'surat,nama'];
			# END FORM DO NOT REMOVE THIS LINE

			# OLD START FORM
			//$this->form = [];
			//$this->form[] = ['label'=>'Nama','name'=>'nama','type'=>'select2','validation'=>'required|integer|min:0','width'=>'col-sm-10','datatable'=>'santri,nama'];
			//$this->form[] = ['label'=>'Ruang','name'=>'id_kelas','type'=>'select2','validation'=>'required|integer|min:0','width'=>'col-sm-10','datatable'=>'ustads,id'];
			//$this->form[] = ['label'=>'Ruang','name'=>'id_ruang','type'=>'select2','validation'=>'required|integer|min:0','width'=>'col-sm-10','datatable'=>'surat,nama'];
			# OLD END FORM

			/* 
	        | ---------------------------------------------------------------------- 
	        | Sub Module
	        | ----------------------------------------------------------------------     
			| @label          = Label of action 
			| @path           = Path of sub module
			| @foreign_key 	  = foreign key of sub table/module
			| @button_color   = Bootstrap Class (primary,success,warning,danger)
			| @button_icon    = Font Awesome Class  
			| @parent_columns = Sparate with comma, e.g : name,created_at
	        | 
	        */
	        $this->sub_module = array();


	        /* 
	        | ---------------------------------------------------------------------- 
	        | Add More Action Button / Menu
	        | ----------------------------------------------------------------------     
	        | @label       = Label of action 
	        | @url         = Target URL, you can use field alias. e.g : [id], [name], [title], etc
	        | @icon        = Font awesome class icon. e.g : fa fa-bars
	        | @color 	   = Default is primary. (primary, warning, succecss, info)     
	        | @showIf 	   = If condition when action show. Use field alias. e.g : [id] == 1
	        | 
	        */
	        $this->addaction = array();


	        /* 
	        | ---------------------------------------------------------------------- 
	        | Add More Button Selected
	        | ----------------------------------------------------------------------     
	        | @label       = Label of action 
	        | @icon 	   = Icon from fontawesome
	        | @name 	   = Name of button 
	        | Then about the action, you should code at actionButtonSelected method 
	        | 
	        */
	        $this->button_selected = array();

	                
	        /* 
	        | ---------------------------------------------------------------------- 
	        | Add alert message to this module at overheader
	        | ----------------------------------------------------------------------     
	        | @message = Text of message 
	        | @type    = warning,success,danger,info        
	        | 
	        */
	        $this->alert        = array();
	                

	        
	        /* 
	        | ---------------------------------------------------------------------- 
	        | Add more button to header button 
	        | ----------------------------------------------------------------------     
	        | @label = Name of button 
	        | @url   = URL Target
	        | @icon  = Icon from Awesome.
	        | 
	        */
	        $this->index_button = array();



	        /* 
	        | ---------------------------------------------------------------------- 
	        | Customize Table Row Color
	        | ----------------------------------------------------------------------     
	        | @condition = If condition. You may use field alias. E.g : [id] == 1
	        | @color = Default is none. You can use bootstrap success,info,warning,danger,primary.        
	        | 
	        */
	        $this->table_row_color = array();     	          

	        
	        /*
	        | ---------------------------------------------------------------------- 
	        | You may use this bellow array to add statistic at dashboard 
	        | ---------------------------------------------------------------------- 
	        | @label, @count, @icon, @color 
	        |
	        */
	        $this->index_statistic = array();



	        /*
	        | ---------------------------------------------------------------------- 
	        | Add javascript at body 
	        | ---------------------------------------------------------------------- 
	        | javascript code in the variable 
	        | $this->script_js = "function() { ... }";
	        |
	        */
	        $this->script_js = NULL;


            /*
	        | ---------------------------------------------------------------------- 
	        | Include HTML Code before index table 
	        | ---------------------------------------------------------------------- 
	        | html code to display it before index table
	        | $this->pre_index_html = "<p>test</p>";
	        |
	        */
	        $this->pre_index_html = null;
	        
	        
	        
	        /*
	        | ---------------------------------------------------------------------- 
	        | Include HTML Code after index table 
	        | ---------------------------------------------------------------------- 
	        | html code to display it after index table
	        | $this->post_index_html = "<p>test</p>";
	        |
	        */
	        $this->post_index_html = null;
	        
	        
	        
	        /*
	        | ---------------------------------------------------------------------- 
	        | Include Javascript File 
	        | ---------------------------------------------------------------------- 
	        | URL of your javascript each array 
	        | $this->load_js[] = asset("myfile.js");
	        |
	        */
	        $this->load_js = array();
	        
	        
	        
	        /*
	        | ---------------------------------------------------------------------- 
	        | Add css style at body 
	        | ---------------------------------------------------------------------- 
	        | css code in the variable 
	        | $this->style_css = ".style{....}";
	        |
	        */
	        $this->style_css = NULL;
	        
	        
	        
	        /*
	        | ---------------------------------------------------------------------- 
	        | Include css File 
	        | ---------------------------------------------------------------------- 
	        | URL of your css each array 
	        | $this->load_css[] = asset("myfile.css");
	        |
	        */
	        $this->load_css = array();
	        
	        
	    }
		public function getDetail($id) {
			//Create an Auth
			//dd(Session());
			if(!CRUDBooster::isRead() && $this->global_privilege==TRUE || $this->button_edit==FALSE) {CRUDBooster::redirect(CRUDBooster::adminPath(),trans("crudbooster.denied_access"));}
			

			$data = [];
			$data['page_title'] = 'Detail Hafalan Santri';
			$data['row'] = DB::table('hafalan')->where('id_santri',$id)->first();
			$data['dt'] = DB::table('santri')
			->leftJoin('kelas','kelas.id','=','santri.id_kelas')
			->leftJoin('ruang','ruang.id','=','santri.id_ruang')
			->where('santri.id',$id)
			->select('santri.nama','kelas.kelas','ruang.ruang','santri.id')
			->first();
			//$data['result'] = DB::table('hafalan')->select('id_santri','id_surat')->where('id_santri',$id)->orderby('tgl','desc')->paginate(10);

			$data['result'] = DB::table('hafalan')
			->leftJoin('cms_users','cms_users.id','=','hafalan.id_ustads')
			->leftJoin('surat','surat.id','=','hafalan.id_surat')
			->where('hafalan.id_santri',$id)
			->select('hafalan.khatam','hafalan.id','hafalan.id_santri','hafalan.id_ustads','hafalan.id_surat','hafalan.ayat_dari','hafalan.ayat_ke','hafalan.tgl','hafalan.catatan','cms_users.name','surat.nama','surat.ayat')
			->orderby('tgl','desc')
			->paginate(20);
			//->get();
			//dd($data);
			//Please use view method instead view method from laravel
			//$data['script_js'] = " $(function () { $('#example').DataTable({ pageLength: 20, paging: false }); } );";
			
			return $this->view('hafalan.index',$data);
		  }

		  public function addayat($id) {
			    //Create an Auth
			if(!CRUDBooster::isCreate() && $this->global_privilege==TRUE || $this->button_add==FALSE) {CRUDBooster::redirect(CRUDBooster::adminPath(),trans("crudbooster.denied_access"));}
			$santri = DB::table('santri')->select('id','nama')->where('id',$id)->count();
				if($santri <> 1){
					return redirect('/admin/setoranhafalan');
				}
			$data = [];
			$data['page_title'] = 'Tambah Hafalan Santri';
			$data['dt'] = DB::table('santri')
			->leftJoin('kelas','kelas.id','=','santri.id_kelas')
			->leftJoin('ruang','ruang.id','=','santri.id_ruang')
			->where('santri.id',$id)
			->select('santri.nama','kelas.kelas','ruang.ruang','santri.id')
			->first();
			$data['surat'] = DB::table('surat')->select('id','nama','ayat')->get();
			//dd($data);
			
			

			$data['load_js'] = array(asset("vendor/crudbooster/assets/select2/dist/js/select2.full.min.js"));
			$data['script_js'] = "
			$(function () {	$('#ayat').select2(); }); 
			$(function () {	$('#surat').select2(); });       
			$('#surat').on('select2:select', function() {
            var suratID = $(this).val();
            if(suratID) {
                $.ajax({
                    url: location.origin +'/surat/'+suratID+'/'+{$id},
                    type: \"GET\",
                    dataType: \"json\",
                    success:function(data) {                      
                        $('select[name=\"ayat\"]').empty();
						
						document.getElementById('jmlayat').value = data[0];
						document.getElementById('hafalan').value = data[1];
						document.getElementById('id_santri').value = {$id};
                        $.each(JSON.parse(data[2]), function(key, val) {
							
							$.each(val, function(key, value){
								$('select[name=\"ayat\"]').append('<option value=\"'+ value +'\">'+ value +'</option>');
							});
						});
                    }
                });
            }else{
                $('select[name=\"ayat\"]').empty();
            }
        });";
			$data['load_css'] = array(asset("vendor/crudbooster/assets/select2/dist/css/select2.min.css"));
			//$data['style_css'] = " .select2-container--default .select2-selection--single {border-radius: 0px !important}.select2-container .select2-selection--single {height: 35px}.select2-container--default .select2-selection--multiple .select2-selection__choice {background-color: #3c8dbc !important;border-color: #367fa9 !important;color: #fff !important;}.select2-container--default .select2-selection--multiple .select2-selection__choice__remove {color: #fff !important;}";
			
			//Please use view method instead view method from laravel
			//dd(Session::get('admin_id'));
			return $this->view('hafalan.setoranayat',$data);

		  }
		  public function saveayat(Request $request) {
			  //dd($request);
			  $validatedData = $request->validate([
				'id_santri'=>'required',
				'surat'=>'required',
				'ayat'=>'required',
				'hafalan'=>'required',
			]);
			//jika ayat lebih dari yg seharusnya  
			if($request->ayat > $request->jmlayat) {
				\Session::flash('warning','jumlah ayat tidak sesuai');
				return redirect()->back();
			  }
			  else if($request->ayat < $request->hafalan){
				\Session::flash('warning','jumlah ayat tidak sesuai dengah hafalan sebelumnya');
				return redirect()->back();
			  }
			  else{
			
			
			  $data['id_santri'] = $request->id_santri;
			  $data['id_surat'] = $request->surat;
			  $data['ayat_dari'] = $request->hafalan;
			  $data['ayat_ke'] = $request->ayat;
			  $data['catatan'] = $request->catatan;
			  $data['id_ustads'] = Session::get('admin_id');
			  DB::table("hafalan")->insert($data);
			  //echo $request->ayat .' - '.$request->jmlayat;
			  //dd($data);

			  if($request->ayat == $request->jmlayat){
				  DB::table('hafalan')
				  ->where('id_santri',$request->id_santri)
				  ->where('id_surat',$request->surat)
				  ->update(['khatam' => 1, 'stat'=> 'ok']);
				  //dd($cek);
			  } elseif($request->ayat < $request->jmlayat){
				DB::table('hafalan')
				->where('id_santri',$request->id_santri)
				->where('id_surat',$request->surat)
				->update(['stat'=> $request->ayat]);
			  }

			  \Session::flash('success','Setoran hafalan berhasil disimpan');
			  return redirect('/admin/setoranhafalan/detail/'.$request->id_santri);
			}

			  //\Session::flash('sukses','Data berhasil diupdate');

		  }
		  public function delhafalan($id){
			//coming soon  
			//DB::table('hafalan')->where('id', $id)->delete();
			  return redirect()->back();
		  }


	    /*
	    | ---------------------------------------------------------------------- 
	    | Hook for button selected
	    | ---------------------------------------------------------------------- 
	    | @id_selected = the id selected
	    | @button_name = the name of button
	    |
	    */
	    public function actionButtonSelected($id_selected,$button_name) {
	        //Your code here
	            
	    }


	    /*
	    | ---------------------------------------------------------------------- 
	    | Hook for manipulate query of index result 
	    | ---------------------------------------------------------------------- 
	    | @query = current sql query 
	    |
	    */
	    public function hook_query_index(&$query) {
	        //Your code here
	            
	    }

	    /*
	    | ---------------------------------------------------------------------- 
	    | Hook for manipulate row of index table html 
	    | ---------------------------------------------------------------------- 
	    |
	    */    
	    public function hook_row_index($column_index,&$column_value) {	        
	    	//Your code here
	    }

	    /*
	    | ---------------------------------------------------------------------- 
	    | Hook for manipulate data input before add data is execute
	    | ---------------------------------------------------------------------- 
	    | @arr
	    |
	    */
	    public function hook_before_add(&$postdata) {        
	        //Your code here

	    }

	    /* 
	    | ---------------------------------------------------------------------- 
	    | Hook for execute command after add public static function called 
	    | ---------------------------------------------------------------------- 
	    | @id = last insert id
	    | 
	    */
	    public function hook_after_add($id) {        
	        //Your code here

	    }

	    /* 
	    | ---------------------------------------------------------------------- 
	    | Hook for manipulate data input before update data is execute
	    | ---------------------------------------------------------------------- 
	    | @postdata = input post data 
	    | @id       = current id 
	    | 
	    */
	    public function hook_before_edit(&$postdata,$id) {        
	        //Your code here

	    }

	    /* 
	    | ---------------------------------------------------------------------- 
	    | Hook for execute command after edit public static function called
	    | ----------------------------------------------------------------------     
	    | @id       = current id 
	    | 
	    */
	    public function hook_after_edit($id) {
	        //Your code here 

	    }

	    /* 
	    | ---------------------------------------------------------------------- 
	    | Hook for execute command before delete public static function called
	    | ----------------------------------------------------------------------     
	    | @id       = current id 
	    | 
	    */
	    public function hook_before_delete($id) {
	        //Your code here

	    }

	    /* 
	    | ---------------------------------------------------------------------- 
	    | Hook for execute command after delete public static function called
	    | ----------------------------------------------------------------------     
	    | @id       = current id 
	    | 
	    */
	    public function hook_after_delete($id) {
	        //Your code here

	    }



	    //By the way, you can still create your own method in here... :) 


	}