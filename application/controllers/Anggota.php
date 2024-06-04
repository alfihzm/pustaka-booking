<?php
defined('BASEPATH') or exit('No Direct script access allowed');

class Anggota extends CI_Controller
{
    function __construct()
    {
        parent::__construct();
        // Load necessary models
        $this->load->model('ModelUser');
    }

    public function laporan_Anggota()
    {
        $data['judul'] = 'Laporan Data Anggota';
        $data['user'] = $this->ModelUser->cekData(['email' => $this->session->userdata('email')])->row_array();
        $data['anggota'] = $this->ModelUser->cekData()->result_array();

        // Load views
        $this->load->view('templates/header', $data);
        $this->load->view('templates/sidebar', $data);
        $this->load->view('templates/topbar', $data);
        $this->load->view('anggota/laporan_anggota', $data);
        $this->load->view('templates/footer');
    }

    public function cetak_laporan_anggota()
    {
        $data['anggota'] = $this->ModelUser->cekData()->result_array();

        // Load view for printing
        $this->load->view('anggota/laporan_print_anggota', $data);
    }

    public function laporan_anggota_pdf()
    {
        $data['anggota'] = $this->ModelUser->cekData()->result_array();
        
        $sroot = $_SERVER['DOCUMENT_ROOT'];
        include $sroot . "/pustakabooking/application/third_party/dompdf/autoload.inc.php";
        
        $dompdf = new Dompdf\Dompdf();
        
        // Load view for PDF generation
        $this->load->view('anggota/laporan_pdf_anggota', $data);
        
        $paper_size = 'A4'; // Paper size
        $orientation = 'landscape'; // Paper orientation
        $html = $this->output->get_output();
        
        $dompdf->set_paper($paper_size, $orientation);
        $dompdf->load_html($html);
        $dompdf->render();
        
        // Stream the PDF file
        $dompdf->stream("laporan_data_anggota.pdf", array('Attachment' => 0));
    }

    public function export_excel()
    {
        $data = array(
            'title' => 'Laporan Anggota',
            'anggota' => $this->ModelUser->cekData()->result_array()
        );

        // Load view for Excel export
        $this->load->view('anggota/export_excel_anggota', $data);
    }
}
