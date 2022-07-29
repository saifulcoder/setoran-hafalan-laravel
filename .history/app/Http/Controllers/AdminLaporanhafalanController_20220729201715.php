<?php namespace App\Http\Controllers;

	use Session;
	use Request;
	use DB;
	use CRUDBooster;

	class AdminLaporanhafalanController extends \crocodicstudio\crudbooster\controllers\CBController {

	    public function cbInit() {
	    	# START CONFIGURATION DO NOT REMOVE THIS LINE
			$this->table 			   = "hafalan";	        
			$this->title_field         = "id";
			$this->limit               = 20;
			$this->orderby             = "id,desc";
			$this->show_numbering      = FALSE;
			$this->global_privilege    = FALSE;	        
			$this->button_table_action = TRUE;   
			$this->button_action_style = "button_icon";     
			$this->button_add          = TRUE;
			$this->button_delete       = TRUE;
			$this->button_edit         = TRUE;
			$this->button_detail       = TRUE;
			$this->button_show         = TRUE;
			$this->button_filter       = TRUE;        
			$this->button_export       = FALSE;	        
			$this->button_import       = FALSE;
			$this->button_bulk_action  = TRUE;	
			$this->sidebar_mode		   = "normal"; //normal,mini,collapse,collapse-mini
			# END CONFIGURATION DO NOT REMOVE THIS LINE						      

			# START COLUMNS DO NOT REMOVE THIS LINE
	        $this->col = [];
			$this->col[] = array("label"=>"Santri","name"=>"id_santri","join"=>"santri,nama");
		$this->col[] = array("label"=>"Ustads","name"=>"id_ustads","join"=>"ustads,id");
		$this->col[] = array("label"=>"Surat","name"=>"id_surat","join"=>"surat,nama");
		$this->col[] = array("label"=>"Ayat Dari","name"=>"ayat_dari" );
		$this->col[] = array("label"=>"Ayat Ke","name"=>"ayat_ke" );
		$this->col[] = array("label"=>"Tgl","name"=>"tgl" );
		$this->col[] = array("label"=>"Catatan","name"=>"catatan" );

			# END COLUMNS DO NOT REMOVE THIS LINE
			# START FORM DO NOT REMOVE THIS LINE
		$this->form = [];
		$this->form[] = ["label"=>"Santri","name"=>"id_santri","type"=>"select2","required"=>TRUE,"validation"=>"required|integer|min:0","datatable"=>"santri,nama"];
		$this->form[] = ["label"=>"Ustads","name"=>"id_ustads","type"=>"select2","required"=>TRUE,"validation"=>"required|integer|min:0","datatable"=>"ustads,id"];
		$this->form[] = ["label"=>"Surat","name"=>"id_surat","type"=>"select2","required"=>TRUE,"validation"=>"required|integer|min:0","datatable"=>"surat,nama"];
		$this->form[] = ["label"=>"Ayat Dari","name"=>"ayat_dari","type"=>"number","required"=>TRUE,"validation"=>"required|integer|min:0"];
		$this->form[] = ["label"=>"Ayat Ke","name"=>"ayat_ke","type"=>"number","required"=>TRUE,"validation"=>"required|integer|min:0"];
		$this->form[] = ["label"=>"Tgl","name"=>"tgl","type"=>"datetime","required"=>TRUE,"validation"=>"required|date_format:Y-m-d H:i:s"];
		$this->form[] = ["label"=>"Catatan","name"=>"catatan","type"=>"textarea","required"=>TRUE,"validation"=>"required|string|min:5|max:5000"];
		$this->form[] = ["label"=>"Khatam","name"=>"khatam","type"=>"number","required"=>TRUE,"validation"=>"required|integer|min:0"];

			# END FORM DO NOT REMOVE THIS LINE     
	        $this->sub_module = array();
	        $this->addaction = array();
	        $this->button_selected = array();
	        $this->alert        = array();
	        $this->index_button = array();
	        $this->table_row_color = array();     	          
	        $this->index_statistic = array();
	        $this->script_js = NULL;
	        $this->pre_index_html = null;
	        $this->post_index_html = null;
	        $this->load_js = array();
	        $this->style_css = NULL;
	        $this->load_css = array();
	        
	        
	    }
		public function getIndex()
		{
			if (!CRUDBooster::isRead() && $this->global_privilege == TRUE || $this->button_edit == FALSE) {CRUDBooster::redirect(CRUDBooster::adminPath(), trans("crudbooster.denied_access"));}
			$data = [];
			$data['page_title'] = 'Laporan Mutabaah Per Bulan';
			$data['load_js'] = [
				asset('assets/laporan.js')
			];
			return $this->view('laporan.index',$data);
		}
	    public function actionButtonSelected($id_selected,$button_name) {
	            
	    }
	    public function hook_query_index(&$query) {
	            
	    }
	    public function hook_row_index($column_index,&$column_value) {	        
	    }
	    public function hook_before_add(&$postdata) {        

	    }
	    public function hook_after_add($id) {        

	    }
	    public function hook_before_edit(&$postdata,$id) {        

	    }
	    public function hook_after_edit($id) {

	    }
	    public function hook_before_delete($id) {

	    }
	    public function hook_after_delete($id) {

	    }


	}