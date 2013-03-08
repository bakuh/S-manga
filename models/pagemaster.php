<?php

class Pagemaster extends CI_Model {
	
  var $page_number   = '';
  var $file_name    = '';
  var $edit_pass    = '';
  var $update_date    = '';

  function __construct() {
    parent::__construct();
  }

/********* GET *********/
  function get_page_count($manga_id) {
    $this->db->select('book_id');
    $this->db->where('book_id', $manga_id);
    $this->db->get('page_master');
    $query = $this->db->count_all_results();
    return $query->result();
  }

  function get_last_ten_page_master($manga_id) {
    $this->db->where('book_id', $manga_id);
    $query = $this->db->get('page_master', 10);
    return $query->result('array');
  }

/********* insert *********/
  function insert_page_master($manga_id){
	$time = date("Y-m-d H:i:s");
	$data = array(
		'book_id' =>  $manga_id,
		'file_name' =>  $save_dir.$_FILES["upfile"]["name"],
		'edit_pass' =>  $this->input->post('edit_pass'),
   		'start_date' =>  $time
		);
        $this->db->insert('page_master', $data);
  }

/********* update *********/
  function update_page_master() {
    $this->title_name = $this->input->post('title_name');
    $this->description = $this->input->post('description');
    $this->create_style = $this->input->post('create_style', TRUE);
    $this->genre_id = $this->input->post('genre_id', TRUE);
    $this->author_flg = $this->input->post('author_flg', TRUE);
    $this->edit_pass = $this->input->post('edit_pass', TRUE);
    $this->db->update('page_master', $this, array('book_id' => $this->input->post('book_id')));
  }

/********* del *********/
//bookに紐ずくページ削除
  function del_bookpages_page_master($book_id){
    $this->db->where('book_id', $book_id);
    $this->db->delete('page_master');
  }

//単一ページ削除
  function del_onlypage_master($book_id, $page_id){
    $this->db->where('book_id', $book_id && 'page_id', $page_id);
    $this->db->delete('page_master');
  }
}