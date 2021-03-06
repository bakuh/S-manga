<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

/**
* @name CI Smarty
* @copyright Dwayne Charrington, 2011.
* @author Dwayne Charrington and other Github contributors
* @license (DWYWALAYAM) Do What You Want As Long As You Attribute Me Licence
* @version 1.2
* @link http://ilikekillnerds.com
*/
class Manga extends CI_Controller {

/********* 初期化 *********/
    public function __construct()
    {
		parent::__construct();
		$this->load->helper(array('form', 'url'));
		$this->load->library('form_validation');
		$this->load->model('Bookmaster');
		$this->load->model('Pagemaster');
    }


/********* book登録 *********/
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
						)
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
				
				// 登録済み件数
				$this->db->select('MAX(page_number) AS page_number');// page_numberカラムの中の最大値を選択(1レコード)。
				$this->db->where('book_id', $book_id);// book_idカラムの↑で登録したbook_id
				$query = $this->db->get('page_master');// page_masterテーブル全レコード
				$result = $query->result('array');// result()はCIメソッド。結果をオブジェクトの配列で返す。page_masterの全レコードはいってる？
				$page_number = $result[0]['page_number'];// ↑でselectしたpage_numberカラムの一番最初
				if ($page_number == "") {
					$page_number = 1;
				}// 変数空だったら1入れる
				
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

    
/********* ファイルアップロード *********/
	public function do_upload($file_name){
		$book_id = $this->input->post('book');
		/***
		$file_count = $this->Pagemaster->get_page_count($book_id);
		**/

		$config['upload_path'] = '/var/www/html/www/img/sp/upload/';
		$config['allowed_types'] = 'gif|jpg|png';
		$config['file_name'] = $file_name;
		$config['overwrite'] = FALSE;
		$config['max_size'] = '0';

		$this->load->library('upload', $config);
		if ( ! $this->upload->do_upload('img-upload01')){
			$data['error'] = array('error' => $this->upload->display_errors());
			$this->parser->parse('manga_create_err.tpl', $data);
		}else{
			$data = array('upload_data' => $this->upload->data());
			$this->parser->parse('manga_create_fin.tpl', $data);
		}
	}

/********* 画像処理 *********/
	public function process_img(){
		$config['image_library'] = 'gd2';
		$config['source_image']	= '/var/www/html/www/img/sp/upload/';
		$config['create_thumb'] = TRUE;
		$config['maintain_ratio'] = TRUE;
		$config['width']	 = 80;
		$config['height']	= 80;

		$this->load->library('image_lib', $config); 

		$this->image_lib->resize();
	}
/********* book一覧 *********/
    public function mangalist(){
	$data['book_list_array'] = $this->Bookmaster->get_book_list_ten();
	$total_rows = $this->db->count_all('book_master');
	// ページネーションの設定
	$this->load->library('pagination');
	$config['base_url'] = 'http://49.212.143.101/manga/mangalist/';
	$config['total_rows'] = $total_rows;
	$config['per_page'] = 20; 

	$this->pagination->initialize($config);
	$data['pagenation_array'] = $this->pagination->create_links();

        $this->parser->parse("manga_list.tpl", $data);
    }

/********* ジャンル一覧 *********/
    public function genrelist($genre_id=null){
	if ($genre_id == "non"){
	  $genre_id = '1';
	}elseif ($genre_id == "love"){
	  $genre_id = '2';
	}elseif ($genre_id == "otona"){
	  $genre_id = '3';
	}elseif ($genre_id == "saspense"){
	  $genre_id = '4';
	}elseif ($genre_id == "action"){
	  $genre_id = '5';
	}elseif ($genre_id == "eat"){
	  $genre_id = '6';
	}elseif ($genre_id == "sports"){
	  $genre_id = '7';
	}elseif ($genre_id == "dorama"){
	  $genre_id = '8';
	}

	$data['book_list_array'] = $this->Bookmaster->get_book_list_genre($genre_id);
        $this->parser->parse("manga_genre.tpl", $data);
    }    

/********* bookコンテンツ *********/
    public function detail($manga_id=null){
		$data['manga_id'] = $manga_id;
		
        $this->db->select('COUNT(*) AS page_count, book_id');//book_idの数
		$this->db->where('book_id', $manga_id);
		$query = $this->db->get('page_master');
		$result = $query->result('array');
		$page_count = $result[0]['page_count'];

		// 漫画情報をDBから取得
		$data['arrBook'] = $this->Bookmaster->get_book_detail($manga_id);
		$data['arrPage'] = $this->Pagemaster->get_last_ten_page_master($page_count);
		
		$this->parser->parse("manga_detail.tpl", $data);
    }

/********* bookコンテンツ編集 *********/
  public function book_edit(){
    $book_id = $this->input->post('book');
    $post_pass = $this->input->post('edit_pass');//postされたパス
    $edit_pass = $this->Bookmaster->get_edit_pass($book_id);//DBから編集パス取得

    if ($post_pass <> $edit_pass) {
        $this->parser->parse("err_book_edit.tpl");//パス間違ってたらエラーページへ。なんか常にtureになるっす
    }else{
      switch (true) {
        case (isset($_POST['del']) and $_POST['del'] == "削除する" ):
        $this->Bookmaster->del_book_master($book_id);//対象のbook削除
        $this->Pagemaster->del_bookpages_page_master($book_id);//bookに紐づいたページ削除
        $this->parser->parse("compleate_del_book.tpl");
        break;

        case (isset($_POST['edit']) and $_POST['edit'] == "編集する" ):
        $this->db->where('book_id', $book_id);//bookとpageを条件検索
        $this->db->where('page_id', $page_id);
        $query = $this->db->get('page_master');

        $this->do_upload($book_id."_");

        $this->Pagemaster->update_page_master();//アップロード成功したらpagemaster上書き
        $this->parser->parse("compleate.tpl", $data);
        break;
      }
    }
  }

/********* pageコンテンツ編集 *********/
  public function page_edit(){
    $book_id = $this->input->post('book');
    $page_id = $this->input->post('page_choice');

    if ($page_id == "") {
        $this->parser->parse("err_page_edit.tpl");
    }else{
      switch ($this->input->post('page-edit')) {
        case '削除する':
        $this->Pagemaster->del_onlypage_master($book_id, $page_id);
        $this->parser->parse("compleate_page_edit.tpl", $data);
        break;

        case '編集する':// ファイル上書き
        $this->db->where('book_id', $book_id);//bookとpageを条件検索
        $this->db->where('page_id', $page_id);
        $query = $this->db->get('page_master');

        $this->do_upload($book_id."_");//画像アップ

        $this->Pagemaster->update_page_master();//アップロード成功したらpagemaster上書き
        $this->parser->parse("compleate.tpl", $data);
        break;
      }
    }
  }
/********* pageコンテンツ追加 *********/
  public function page_add(){
    $book_id = $this->input->post('book');
    $this->do_upload($book_id."_");//画像アップ⇒OK
    $this->Pagemaster->insert_page_master($book_id);//画像アップ成功したらレコード追加⇒OK
    $page_count = $this->Pagemaster->get_page_count($book_id);//タイトルのページ総数取得←これがうまくいかん
    $this->Bookmaster->update_page_count($book_id, $page_count);//Bookmasterのpage_countと更新日をupdate
  }

/********* faq *********/
    public function faq(){
        $this->parser->parse("faq.tpl");
    }

}
