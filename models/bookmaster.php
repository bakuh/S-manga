<?php

class Bookmaster extends CI_Model {
	
    var $page_no   = '';
    var $title_name   = '';
    var $description   = '';
    var $create_style   = '';
    var $genre_id   = '';
    var $author_flg = '';
    var $edit_pass    = '';
    var $comment    = '';
    var $start_date    = '';
    var $update_date    = '';
    
    
    function __construct()
    {
      parent::__construct();
	  $this->load->helper('date');
    }

/********* GET *********/
	function get_book_id($manga_id){
		$this->db->select('book_id');
		$this->db->where('book_id', $manga_id);
		$query = $this->db->get('book_master');
		return $query->result('array');
	}

	function get_file_count($manga_id){
		$this->db->where('book_id', $manga_id);
		$this->db->get('page_master');
		$query = $this->db->count_all_results();
		return $query->result('array');
	}

	function get_book_detail($manga_id){
		$this->db->where('book_id', $manga_id);
		$query = $this->db->get('book_master');
		return $query->result('array');
	}
    
	function get_book_list_ten(){
		$this->db->order_by("book_id", "desc"); 
		$query = $this->db->get('book_master', 10);
		return $query->result('array');
	}
    
	function get_book_list_five(){
		$this->db->order_by("book_id", "desc"); 
		$query = $this->db->get('book_master', 5);
		return $query->result('array');
	}

	function get_book_list_genre($genre_id){
		$this->db->where('genre_id', $genre_id); 
		$this->db->order_by("book_id", "desc"); 
		$query = $this->db->get('book_master', 10);
		return $query->result('array');
	}
	
	function get_edit_pass($manga_id){
		$this->db->select('edit_pass');
		$this->db->where('book_id', $manga_id); 
		$query = $this->db->get('book_master');
		return $query->result();
	}

/********* insert *********/

    function insert_book_master()
    {
	$time = date("Y-m-d H:i:s");
	$data = array(
		'title_name' =>  $this->input->post('title_name'),
		'description' =>  $this->input->post('description'),
		'create_style' =>  $this->input->post('create_style'),
		'genre_id' =>  $this->input->post('genre_id'),
		'edit_pass' =>  $this->input->post('edit_pass'),
   		'start_date' =>  $time
		);
        $this->db->insert('book_master', $data);
    }

/********* update *********/
	function update_page_count($manga_id, $page_count){ // ページが追加された時にページ総数を更新
	  $time = date("Y-m-d H:i:s");
	  $this->db->trans_start();
	  $data = array(
               'page_count' => $page_count,
               'update_date' => $time
            );
            
      $this->db->where('book_id', $manga_id);
	  $this->db->update('book_master', $data);
	  $this->db->trans_complete();
	}
/********* del *********/
    function del_book_master($manga_id){
      $this->db->where('book_id', $manga_id);
      $this->db->delete('book_master');
    }	
}