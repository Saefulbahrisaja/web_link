<?php
defined('BASEPATH') OR exit('No direct script access allowed');
class Eling extends CI_Controller {
  function __construct()
    {
        parent::__construct();
        
        $this->load->library('datatables'); //load library ignited-dataTable
        $this->load->model('crud_model'); //load model crud_model
        $this->load->model('Grapik_model');
        if($this->session->userdata('masuk') != TRUE){
          $url=base_url();
          redirect($url);
        }
        
    }
	function index()
  	{
        $judul['title']   = "Halaman Login";
		    $this->load->view('login',$judul);
    }
  //data Home mulai
  function Home()
    {
     
        $judul['title']              = "Informasi Kondisi Warga  ";
        $data['total_laki']          = $this->crud_model->hitungLaki();
        $data['total_perempuan']     = $this->crud_model->hitungPerempuan(); 
        $data['total_all']           = $data['total_laki']+$data['total_perempuan'];
        $data['kk']                  = $this->crud_model->hitungKK();
        $data['graph']               = $this->crud_model->graph_pendidikan();
        $data['graph_jk']            = $this->crud_model->graph_jk();
        $data['graph_agama']         = $this->crud_model->graph_agama();
        $data['graph_etnis']         = $this->crud_model->graph_etnis();
        $data['graph_negara']        = $this->crud_model->graph_negara();
        $data['graph_usia']        = $this->crud_model->graph_usia();
        $this->load->view('template/header',$judul);
        $this->load->view('template/menu');
        $this->load->view('template/index');
        $this->load->view('modul/home/home',$data);
        $this->load->view('template/footer');
     
    }

  //Home Selesai

    //data pengajuan surat Mulai
    function Pengajuan_surat()
    {
        if($this->session->userdata('akses')=='Admin' || $this->session->userdata('akses')=='Ketua'){
            $data['nik']=$this->crud_model->get_nik();
            $data['jenis']=$this->crud_model->get_jenis_surat();
            $data['title']   ="Data Pengajuan Surat";
            $this->load->view('template/header',$data);
            $this->load->view('template/menu');
            $this->load->view('modul/pengajuan_surat/tampil_data',$data);
            $this->load->view('template/footer');
        }else{
            echo "Anda tidak berhak mengakses halaman ini";
        }

    }
    function get_dataajuansurat_json() {
        header('Content-Type: application/json');
        echo $this->crud_model->get_all_masyarakat();
    }
    function simpan_ajuansurat(){ //function simpan data
        $cek = $this->db->query("SELECT * FROM tb_masyarakat where nik='" . $this->input->post('nik') . "'")->num_rows();
        if ($cek <= 0) {
            $data=array(
                'nik'              => $this->input->post('nik'),
                'nama_lengkap'     => $this->input->post('nama'),
                'jenis_kelamin'    => $this->input->post('jk'),
                'alamat'           => $this->input->post('alamat'),
                'warganegara'      => $this->input->post('negara'),
                'tgl_lahir'        => $this->input->post('tgl_lahir'),
                'tempat_lahir'     => $this->input->post('tempat_lahir')
            );
            ?>
            <script>
                alert("Data berhasil disimpan");
            </script>
            <?php
            $this->db->insert('tb_masyarakat', $data);
            redirect('eling/masyarakat','refresh');
        }else{
            ?>
            <script>
                alert("No KTP sudah digunakan");
            </script>
            <?php
            redirect('eling/masyarakat','refresh');

        }
    }
    function update_ajuansurat(){ //function update data
        $kode=$this->input->post('nik');
        $data=array(
            'nik'              => $this->input->post('nik'),
            'nama_lengkap'     => $this->input->post('nama'),
            'jenis_kelamin'    => $this->input->post('jk'),
            'alamat'           => $this->input->post('alamat'),
            'warganegara'      => $this->input->post('negara'),
            'tgl_lahir'        => $this->input->post('tgl_lahir'),
            'tempat_lahir'     => $this->input->post('tempat_lahir')
        );
        $this->db->where('nik',$kode);
        $this->db->update('tb_masyarakat', $data);
        redirect('eling/Masyarakat');
    }
    function delete_ajuansurat(){ //function hapus data
        $kode=$this->input->post('nik');
        $this->db->where('nik',$kode);
        $this->db->delete('tb_masyarakat');
        redirect('eling/Masyarakat');
    }
    //data pengajuan surat Selesai


   //data Masyarakat Mulai
    function Masyarakat()
    {
      if($this->session->userdata('akses')=='Admin' || $this->session->userdata('akses')=='Ketua'){
      
        $data['title']   ="Data Penduduk";
        $this->load->view('template/header',$data);
        $this->load->view('template/menu');
        $this->load->view('modul/penduduk/tampil_data',$data);
        $this->load->view('template/footer');
      }else{
        echo "Anda tidak berhak mengakses halaman ini";
      }

        }
    function get_datamasyarakat_json() {
         header('Content-Type: application/json');
         echo $this->crud_model->get_all_masyarakat();
    }
    function simpan_masyarakat(){ //function simpan data
        $cek = $this->db->query("SELECT * FROM tb_masyarakat where nik='" . $this->input->post('nik') . "'")->num_rows();
        if ($cek <= 0) {
        $data=array(
          'nik'              => $this->input->post('nik'),
          'nama_lengkap'     => $this->input->post('nama'),
          'jenis_kelamin'    => $this->input->post('jk'),
          'alamat'           => $this->input->post('alamat'),
          'warganegara'      => $this->input->post('negara'),
          'tgl_lahir'        => $this->input->post('tgl_lahir'),
          'tempat_lahir'     => $this->input->post('tempat_lahir')
        );
            ?>
            <script>
                alert("Data berhasil disimpan");
            </script>
            <?php
            $this->db->insert('tb_masyarakat', $data);
            redirect('eling/masyarakat','refresh');
        }else{
            ?>
            <script>
                alert("No KTP sudah digunakan");
            </script>
            <?php
            redirect('eling/masyarakat','refresh');

        }
    }
    function update_masyarakat(){ //function update data
        $kode=$this->input->post('nik');
        $data=array(
          'nik'              => $this->input->post('nik'),
          'nama_lengkap'     => $this->input->post('nama'),
          'jenis_kelamin'    => $this->input->post('jk'),
          'alamat'           => $this->input->post('alamat'),
          'warganegara'      => $this->input->post('negara'),
          'tgl_lahir'        => $this->input->post('tgl_lahir'),
          'tempat_lahir'     => $this->input->post('tempat_lahir')
        );
        $this->db->where('nik',$kode);
        $this->db->update('tb_masyarakat', $data);
        redirect('eling/Masyarakat');
      }
    function delete_masyarakat(){ //function hapus data
        $kode=$this->input->post('nik');
        $this->db->where('nik',$kode);
        $this->db->delete('tb_masyarakat');
        redirect('eling/Masyarakat');
      }
   //data Masyarakat Selesai
   //data KK Mulai
    function KK()
    {
        $data['nik']     =$this->crud_model->get_nik();
        $data['title']   = "Data Kepala Keluarga";
        $this->load->view('template/header',$data);
        $this->load->view('template/menu');
        $this->load->view('template/index');
        $this->load->view('modul/kk/tampil_data',$data);
        $this->load->view('template/footer');

    }
    function get_datakk_json() {
        header('Content-Type: application/json');
        echo $this->crud_model->get_all_kk();
    }
    function simpan_kk()
    { //function simpan data
        $cek = $this->db->query("SELECT * FROM tb_kk where no_kk='" . $this->input->post('no_kk') . "' OR no_masyarakat='". $this->input->post('nik') ."'")->num_rows();
        if ($cek <= 0) {
            $data = array(
                'no_kk' => $this->input->post('no_kk'),
                'status_kk' => $this->input->post('status_kk'),
                'status_kawin' => $this->input->post('status_kawin'),
                'kode_wilayah' => $this->input->post('kode_wilayah'),
                'no_masyarakat' => $this->input->post('nik'),
            );
            ?>
            <script>
                alert("Data berhasil disimpan");
            </script>
            <?php
            $this->db->insert('tb_kk', $data);
            redirect('eling/kk','refresh');
        }else{
            ?>
            <script>
                alert("No.kartu keluarga sudah ada");
            </script>
            <?php
            redirect('eling/kk','refresh');

        }
    }
    function update_kk(){ //function update data
        $kode=$this->input->post('nik');
        $data=array(
            'nik'              => $this->input->post('nik'),
            'nama_lengkap'     => $this->input->post('nama'),
            'jenis_kelamin'    => $this->input->post('jk'),
            'alamat'           => $this->input->post('alamat'),
            'warganegara'      => $this->input->post('negara'),
            'photo' => $this->input->post('photo')
        );
        $this->db->where('nik',$kode);
        $this->db->update('tb_masyarakat', $data);
        redirect('eling/Masyarakat');
    }
    function delete_kk(){ //function hapus data
        $kode=$this->input->post('nik');
        $this->db->where('nik',$kode);
        $this->db->delete('tb_masyarakat');
        redirect('eling/Masyarakat');
    }
  //data KK Selesai
  //data pendidikan Mulai
    function Pendidikan()
    {
        if($this->session->userdata('akses')=='Admin' || $this->session->userdata('akses')=='Ketua'){

            $data['title']   ="Data Pendidikan";
            $this->load->view('template/header',$data);
            $this->load->view('template/menu');
            $this->load->view('modul/pendidikan/tampil_data',$data);
            $this->load->view('template/footer');
        }else{
            echo "Anda tidak berhak mengakses halaman ini";
        }

    }
    function get_datapendidikan_json() {
        header('Content-Type: application/json');
        echo $this->crud_model->get_all_masyarakat();
    }
    function simpan_pendidikan(){ //function simpan data
        $data=array(
            'nik'              => $this->input->post('nik'),
            'nama_lengkap'     => $this->input->post('nama'),
            'jenis_kelamin'    => $this->input->post('jk'),
            'alamat'           => $this->input->post('alamat'),
            'warganegara'      => $this->input->post('negara'),
            'tgl_lahir'        => $this->input->post('tgl_lahir'),
            'tempat_lahir'     => $this->input->post('tempat_lahir')
        );
        $this->db->insert('tb_masyarakat', $data);
        redirect('eling/Masyarakat');
    }
    function update_pendidikan(){ //function update data
        $kode=$this->input->post('nik');
        $data=array(
            'nik'              => $this->input->post('nik'),
            'nama_lengkap'     => $this->input->post('nama'),
            'jenis_kelamin'    => $this->input->post('jk'),
            'alamat'           => $this->input->post('alamat'),
            'warganegara'      => $this->input->post('negara'),
            'tgl_lahir'        => $this->input->post('tgl_lahir'),
            'tempat_lahir'     => $this->input->post('tempat_lahir')
        );
        $this->db->where('nik',$kode);
        $this->db->update('tb_masyarakat', $data);
        redirect('eling/Masyarakat');
    }
    function delete_pendidikan(){ //function hapus data
        $kode=$this->input->post('nik');
        $this->db->where('nik',$kode);
        $this->db->delete('tb_masyarakat');
        redirect('eling/Masyarakat');
    }
    //data Pendidikan Selesai
      //data Etnis Mulai
      function Etnis()
      {
          $data['nik']=$this->crud_model->get_nik();
          $data['title']   = "Data Etnis";
          $this->load->view('template/header',$data);
          $this->load->view('template/menu');
          $this->load->view('template/index');
          $this->load->view('modul/etnis/tampil_data',$data);
          $this->load->view('template/footer');

      }
      function get_dataetnis_json() { 
          header('Content-Type: application/json');
          echo $this->crud_model->get_all_etnis();
      }
      function simpan_etnis(){ //function simpan data
          $data=array(
            'etnis'     => $this->input->post('etnis')
          );
          $this->db->insert('tb_etnis', $data);
          redirect('eling/Etnis');
        }
      function update_etnis(){ //function update data
          $kode=$this->input->post('kode_etnis');
          $data=array(
            'etnis'            => $this->input->post('etnis')
          );
          $this->db->where('kode_etnis',$kode);
          $this->db->update('tb_etnis', $data);
          redirect('eling/Etnis');
        }
      function delete_etnis(){ //function hapus data
          $kode=$this->input->post('kode_etnis');
          $this->db->where('kode_etnis',$kode);
          $this->db->delete('tb_etnis');
          redirect('eling/Etnis');
        }
    //data Etnis Selesai

    //data Agama Mulai
    function Agama()
    {
      
        $data['title']   = "Data Agama";
        $this->load->view('template/header',$data);
        $this->load->view('template/menu');
        $this->load->view('template/index');
        $this->load->view('modul/agama/tampil_data',$data);
        $this->load->view('template/footer');

    }
    function get_dataagama_json() { 
        header('Content-Type: application/json');
        echo $this->crud_model->get_all_agama();
    }
    function simpan_agama(){ //function simpan data
        $data=array(
          'agama'     => $this->input->post('agama')
        );
        $this->db->insert('tb_agama', $data);
        redirect('eling/Agama');
      }
      function update_agama(){ //function update data
        $kode_agama=$this->input->post('kode_agama');
        $data=array(
          'agama'            => $this->input->post('agama')
        );
        $this->db->where('kode_agama',$kode);
        $this->db->update('tb_agama', $data);
        redirect('eling/Agama');
      }
    
      function delete_agama(){ //function hapus data
        $kode=$this->input->post('kode_agama');
        $this->db->where('kode_agama',$kode);
        $this->db->delete('tb_agama');
        redirect('eling/Agama');
      }
  //data Etnis Selesai
}
