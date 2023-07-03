<?php
class Matakuliah extends CI_Controller
{
    public function index()
    {
        $this->load->view('v_header');
        $this->load->view('view-form-matakuliah');
        $this->load->view('v_footer');
    }
    public function cetak()
        
   
    {
        
        $this->form_validation->set_rules('nama', 'nama Matakuliah', 'required|min_length[3]',[
            'required' => 'Nama Lengkap Harus diisi', 
            'min_length' => 'nama terlalu pendek'
        ]);
        $this->form_validation->set_rules('nis', 'nis Matakuliah', 'required|min_length[3]', ['required' => 'NIS Harus diisi', 'min_length' => 'nis terlalu pendek']);
        $this->form_validation->set_rules('kelas', 'kelas Matakuliah', 'required|min_length[3]', ['required' => 'Kelas Harus diisi', 'min_length' => 'kelas terlalu pendek']);
        $this->form_validation->set_rules('tanggal', 'tanggal Matakuliah', 'required|min_length[3]', ['required' => 'tanggal Harus diisi', 'min_length' => 'tanggal terlalu pendek']);
        $this->form_validation->set_rules('tempat', 'tempat Matakuliah', 'required|min_length[3]', ['required' => 'tempat Harus diisi', 'min_length' => 'tempat terlalu pendek']);
        $this->form_validation->set_rules('alamat', 'alamat Matakuliah', 'required|min_length[3]', ['required' => 'alamat Harus diisi', 'min_length' => 'alamat terlalu pendek']);
        
        if ($this->form_validation->run() != true) {
            $this->load->view('v_header');
            $this->load->view('view-form-matakuliah');
            $this->load->view('v_footer');
        } else {
            $data = [
                'nama' => $this->input->post('nama'),
                'nis' => $this->input->post('nis'),
                'kelas' => $this->input->post('kelas'),
                'tanggal' => $this->input->post('tanggal'),
                'tempat' => $this->input->post('tempat'),
                'alamat' => $this->input->post('alamat'),
                'jenis' => $this->input->post('jenis'),
                'agama' => $this->input->post('agama')];

                $this->load->view('v_header');
                $this->load->view('view-data-matakuliah', $data);
        $this->load->view('v_footer');
                
    }
}
}