<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

class Manga_model extends CI_Model {
    var $book_id   = '';
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
        // Model クラスのコンストラクタを呼び出す
        parent::__construct();
  	$this->load->database();
    }
    
    function get_last_ten_entries()
    {
        $query = $this->db->get('entries', 10);
        return $query->result();
    }

    function insert_entry()
    {
        $this->title_name   = $this->input->post('tittle_name');
        $this->description   = $this->input->post('description');
/**        $this->create_style   = $this->input->post('create_style', TRUE);
        $this->genre_id   = $this->input->post('genre_id', TRUE);
        $this->author_flg   = $this->input->post('author_flg', TRUE);
        $this->edit_pass   = $this->input->post('edit_pass', TRUE);*/

        $this->db->insert('book_master', $this);
    }

    function update_entry()
    {
        $this->title   = $_POST['title'];
        $this->content = $_POST['content'];
        $this->date    = time();

        $this->db->update('entries', $this, array('id' => $_POST['id']));
    }
}