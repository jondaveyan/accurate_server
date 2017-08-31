<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Welcome extends CI_Controller {

    /**
     * Index Page for this controller.
     *
     * Maps to the following URL
     * 		http://example.com/index.php/welcome
     *	- or -
     * 		http://example.com/index.php/welcome/index
     *	- or -
     * Since this controller is set as the default controller in
     * config/routes.php, it's displayed at http://example.com/
     *
     * So any other public methods not prefixed with an underscore will
     * map to /index.php/welcome/<method_name>
     * @see https://codeigniter.com/user_guide/general/urls.html
     */
    function __construct() {
        parent::__construct();
        $this->load->database();
    }

    public function index()
    {
        /*$query = $this->db->get('clients');
        $clients = $query->result();
        $query = $this->db->get('products');
        $products = $query->result();
        $data = array('clients' => $clients, 'products' => $products);*/
        $this->db->select('logged_in');
        $this->db->where('id', 1);
        $query = $this->db->get('sess');
        $res = $query->result()[0]->logged_in;
        if($res != 'logout')
        {
            $data = array('user' => $res);
            $this->load->view('welcome', $data);
        }
        else
        {
            $this->load->view('login');
        }
    }

    public function login()
    {
        $username = $this->input->post('username');
        $password = $this->input->post('password');
        $this->db->select();
        $this->db->from('users');
        $this->db->where('username', $username);
        $this->db->where('password', md5($password));
        $query = $this->db->get();
        if($query->num_rows() > 0)
        {
            $data = array('logged_in' => $username);
            $this->db->where('id', 1);
            $this->db->update('sess', $data);
        }
        redirect('welcome');
    }

    public function logout()
    {
        $data = array('logged_in' => 'logout');
        $this->db->where('id', 1);
        $this->db->update('sess', $data);
        redirect('welcome');
    }

    public function check_user()
    {
        $this->db->select('logged_in');
        $this->db->where('id', 1);
        $query = $this->db->get('sess');
        $res = $query->result()[0]->logged_in;
        echo json_encode(array('res' => $res));
    }
}
