<?php

class Pagemaster extends CI_Model {
	
var $page_number   = '';
var $file_name    = '';
var $update_date    = '';

  function __construct() {
    parent::__construct();
  }
    
  function get_page_count($manga_id) {
    $this->db->select('book_id');
    $this->db->where('book_id', $manga_id);
    $this->db->get('page_master');
    $query = $this->db->count_all_results();
    return $query->result('array');
  }

  function get_last_ten_page_master($manga_id) {
    $this->db->where('book_id', $manga_id);
    $query = $this->db->get('page_master', 10);
    return $query->result('array');
  }
    
  function insert_page_master(){
    $this->page_number = $this->upload->data('page_number');
    $this->file_name = $this->upload->data('file_name');
    $this->update_date = $this->upload->data('update_date', TRUE);
    $this->db->insert('page_master', $this);
  }

  function update_page_master() {
    $this->title_name = $this->input->post('title_name');
    $this->description = $this->input->post('description');
    $this->create_style = $this->input->post('create_style', TRUE);
    $this->genre_id = $this->input->post('genre_id', TRUE);
    $this->author_flg = $this->input->post('author_flg', TRUE);
    $this->edit_pass = $this->input->post('edit_pass', TRUE);
    $this->db->update('page_master', $this, array('book_id' => $this->input->post('book_id')));
  }

  function del_page_master($book_id, $page_id){
    $this->db->where('book_id', $book_id && 'page_id', $page_id);
    $this->db->delete('page_master');
  }
}