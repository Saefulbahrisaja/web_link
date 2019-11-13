<?php
class Proses_login extends CI_Controller{
    function __construct(){
        parent::__construct();
        
        $this->load->model('login'); //load model crud_model
    }
 
    function index(){
        $judul['title']   = "Halaman Login";
        $this->load->view('login',$judul);
    }
 
    function auth(){
        $username=htmlspecialchars($this->input->post('username',TRUE),ENT_QUOTES);
        $password=htmlspecialchars($this->input->post('password',TRUE),ENT_QUOTES);
 
        $cek_dosen=$this->login->auth_rt($username,$password);
        if($cek_dosen->num_rows() > 0){ 
                $data=$cek_dosen->row_array();
                $this->session->set_userdata('masuk',TRUE);
                 if($data['akses']=='Admin'){ 
                    $this->session->set_userdata('akses','Admin');
                    $this->session->set_userdata('ses_id',$data['nik']);
                    $this->session->set_userdata('ses_nama',$data['akses']);
                    redirect('eling/home');
 
                 }else{ 
                    $this->session->set_userdata('akses','Ketua');
                    $this->session->set_userdata('ses_id',$data['nik']);
                    $this->session->set_userdata('ses_nama',$data['akses']);
                    redirect('eling/home');
                 }
 
        }else{ 
                $cek_mahasiswa=$this->login->auth_mahasiswa($username,$password);
                  if($cek_mahasiswa->num_rows() > 0){
                        $data=$cek_mahasiswa->row_array();
                    $this->session->set_userdata('masuk',TRUE);
                        $this->session->set_userdata('akses','3');
                        $this->session->set_userdata('ses_id',$data['nik']);
                        $this->session->set_userdata('ses_nama',$data['notlp']);
                        redirect('eling/home');
                    }else{  
                            $url=base_url();
                            echo $this->session->set_flashdata("msg","Username Atau Password Salah");
                            redirect($url);
                    }
        }
 
    }
 
    function logout(){
        $this->session->sess_destroy();
        $url=base_url('');
        redirect($url);
    }
 
}