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
        $this->load->library('session');
    }

    public function index()
    {
        /*$query = $this->db->get('clients');
        $clients = $query->result();
        $query = $this->db->get('products');
        $products = $query->result();
        $data = array('clients' => $clients, 'products' => $products);*/
        if($this->session->has_userdata('logged_in'))
        {
            $this->load->view('welcome');
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
            $newdata = array(
                'username'  => $username,
                'logged_in' => TRUE
            );

            $this->session->set_userdata($newdata);
        }
        redirect('welcome');
    }

    public function logout()
    {
        $this->session->unset_userdata('logged_in');
        $this->session->unset_userdata('username');
        redirect('welcome');
    }

    public function check_user()
    {
        echo json_encode(array('res' => $this->session->userdata('username')));
    }
}
