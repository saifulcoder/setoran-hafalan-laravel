<?php namespace App\Http\Controllers;

	use Session;
	use Request;
	use DB;
	use CRUDBooster;

	class AdminLaporanController extends \crocodicstudio\crudbooster\controllers\CBController {

	    public function cbInit() {
	    	# START CONFIGURATION DO NOT REMOVE THIS LINE
			$this->table 			   = "tahfizh";	        
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
		$this->col[] = array("label"=>"Dr Surat","name"=>"dr_surat" );
		$this->col[] = array("label"=>"Dr Ayat","name"=>"dr_ayat" );
		$this->col[] = array("label"=>"Ke Surat","name"=>"ke_surat" );
		$this->col[] = array("label"=>"Ke Ayat","name"=>"ke_ayat" );
		$this->col[] = array("label"=>"Tot Halaman","name"=>"tot_halaman" );

			# END COLUMNS DO NOT REMOVE THIS LINE
			# START FORM DO NOT REMOVE THIS LINE
		$this->form = [];
		$this->form[] = ["label"=>"Santri","name"=>"id_santri","type"=>"select2","required"=>TRUE,"validation"=>"required|integer|min:0","datatable"=>"santri,nama"];
		$this->form[] = ["label"=>"Dr Surat","name"=>"dr_surat","type"=>"text","required"=>TRUE,"validation"=>"required|min:1|max:255"];
		$this->form[] = ["label"=>"Dr Ayat","name"=>"dr_ayat","type"=>"number","required"=>TRUE,"validation"=>"required|integer|min:0"];
		$this->form[] = ["label"=>"Ke Surat","name"=>"ke_surat","type"=>"text","required"=>TRUE,"validation"=>"required|min:1|max:255"];
		$this->form[] = ["label"=>"Ke Ayat","name"=>"ke_ayat","type"=>"number","required"=>TRUE,"validation"=>"required|integer|min:0"];
		$this->form[] = ["label"=>"Tot Halaman","name"=>"tot_halaman","type"=>"number","required"=>TRUE,"validation"=>"required|integer|min:0"];
		$this->form[] = ["label"=>"Tgl","name"=>"tgl","type"=>"date","required"=>TRUE,"validation"=>"required|date"];

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
				asset('assets/laporan.js?3334')
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