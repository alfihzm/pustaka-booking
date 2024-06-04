<?php

class Datadiri extends CI_Controller
{


    public function index()
    {
        $this->load->view('inputDataDiri/inputDataDiri.php');
    }

    public function tampil()
    {
        $this->form_validation->set_rules('nim', 'NIM', 'required|max_length[8]');
        $this->form_validation->set_rules('nama', 'Nama', 'required');
        $this->form_validation->set_rules('alamat', 'Alamat', 'required');

        if ($this->form_validation->run() != true) {
            $this->load->view('inputDataDiri/inputDataDiri');
        } else {
            $data = [
                'nim' => $this->input->post('nim'),
                'nama' => $this->input->post('nama'),
                'prodi' => $this->input->post('prodi'),
                'alamat' => $this->input->post('alamat'),
            ];

            $this->load->view('tampilDataDiri/tampilDataDiri', $data);
        }
    }
}
