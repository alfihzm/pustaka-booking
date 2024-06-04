<?php
defined('BASEPATH') or exit('no direct script access allowed');

class Web extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->helper('url');
        $this->load->library('form_validation');
    }

    public function index()
    {
        $data['judul'] = 'Halaman Depan';

        $this->load->view('web/v_header', $data);
        $this->load->view('web/v_index', $data);
        $this->load->view('web/v_footer', $data);
    }

    public function about()
    {
        $data['judul'] = 'Halaman About';

        $this->load->view('web/v_header', $data);
        $this->load->view('web/v_about', $data);
        $this->load->view('web/v_footer', $data);
    }

    public function profil()
    {
        $data['judul'] = 'Halaman Profile';

        $this->load->view('web/v_header', $data);
        $this->load->view('web/v_profil', $data);
        $this->load->view('web/v_footer', $data);
    }
}
