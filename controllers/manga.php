<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

/**
* @name CI Smarty
* @copyright Dwayne Charrington, 2011.
* @author Dwayne Charrington and other Github contributors
* @license (DWYWALAYAM) 
           Do What You Want As Long As You Attribute Me Licence
* @version 1.2
* @link http://ilikekillnerds.com
*/
class Manga extends CI_Controller {

	/**
     * Construct
     * 初期化
     */
    public function __construct()
    {
		parent::__construct();
		$this->load->helper(array('form', 'url'));
		$this->load->library('form_validation');
		$this->load->model('Bookmaster');
		$this->load->model('Pagemaster');
    }


	/**
     * Index
     *
     */
	public function index(){
		$this->create();
	}
    /**
     * つくる
     *
     */
    public function create(){
    	
    	switch ($this->input->post('mode')) {
    		// 登録処理
			case 'REGIST':
				// 入力チェック
				$config = array(
						array(
								'field'   => 'title_name',
								'label'   => 'タイトル名',
								'rules'   => 'required'
						),
						array(
								'field'   => 'description',
								'label'   => '内容',
								'rules'   => 'required'
						),
						array(
								'field'   => 'create_style',
								'label'   => '制作スタイル',
								'rules'   => 'required'
						),
						array(
								'field'   => 'genre_id',
								'label'   => 'ジャンル',
								'rules'   => 'required'
						),
						array(
								'field'   => 'edit_pass',
								'label'   => '編集用パスワード',
								'rules'   => 'required'
						),
				);
				$this->form_validation->set_rules($config);
				if ($this->form_validation->run() === FALSE){
					$data['arrMsgErr'] = $this->form_validation->_error_array;
					$this->parser->parse('manga_create.tpl', $data);
					return;
				}
				
				// 登録
				$this->Bookmaster->insert_book_master();
				$book_id = $this->db->insert_id();
				
				// ===============================================================
				// 登録済み件数
				$this->db->select('MAX(page_number) AS page_number');
				$this->db->where('book_id', $book_id);
				$query = $this->db->get('page_master');
				$result = $query->result('array');
				$page_number = $result[0]['page_number'];
				if ($page_number == "") {
					$page_number = 1;
				}
				// ===============================================================
				
				$time = date("Y-m-d H:i:s");
				$this->db->trans_start();
					$data = array(
   					'book_id' => $book_id,
   					'file_name' =>  $book_id.'_',
   					'page_number' =>  $page_number,
   					'start_date' =>  $time,
					);
				$this->db->insert('page_master', $data);
				$this->db->trans_complete();
				
				$this->parser->parse('manga_create_fin.tpl', $data);
				break;
			
			// 登録画面表示
			default:
				$this->parser->parse('manga_create.tpl');
				break;
		}
    }

    
    /**
     * ファイルアップロード
     *
     */
	public function do_upload(){
		$config['upload_path'] = '/var/www/html/www/img/sp/upload/';
		$config['allowed_types'] = 'gif|jpg|png';
		
		$this->load->library('upload', $config);
		if ( ! $this->upload->do_upload('img-upload01')){
			$data['error'] = array('error' => $this->upload->display_errors());
			$this->parser->parse('manga_create_err.tpl', $data);
		}else{
			$data = array('upload_data' => $this->upload->data());
			$this->parser->parse('manga_create_fin.tpl', $data);
		}
	}

	
	/**
     * 一覧
     *
     */
    public function mangalist($genre_id=null){
	$data['genre_id'] = $genre_id;

	$data['book_list_array'] = $this->Bookmaster->get_last_ten_book_master();
/**
	// ページネーションの設定
	$this->pagination->initialize(
    	Array(
        	'base_url' => '/manga/mangalist',
        	'total_rows' => $this->Data->count('1=1'),
        	'per_page' => $limit,
        	'num_links' => 9,
        	'first_link' => false,
        	'last_link' => false,
        	'prev_link' => '前へ',
        	'next_link' => '次へ'
    		)
	); 

	$data = Array(
    	'items' => $items,
    	'paginate' => $this->pagination->create_links()
	);
*/
        $this->parser->parse("manga_list.tpl", $data);
    }
    
    
    /**
     * 詳細
     *
     */
    public function detail($manga_id=null)
    {
		$data['manga_id'] = $manga_id;
		
		// 漫画情報をDBから取得
		$data['arrBook'] = $this->Bookmaster->get_last_ten_book_master();
		$data['arrPage'] = $this->Pagemaster->get_last_ten_page_master();
		
		$this->parser->parse("manga_detail.tpl", $data);
    }
    
    
    public function faq(){
        $this->parser->parse("faq.tpl");
    }
    public function camp(){
        $this->parser->parse("camp.tpl");
    }

}
