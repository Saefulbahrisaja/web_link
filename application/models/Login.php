<?php
class Login extends CI_Model{
    //cek nip dan password rt
    function auth_rt($username,$password){
        $query=$this->db->query("SELECT * FROM tb_akses WHERE nik='$username' AND pass_akses=MD5('$password') LIMIT 1");
        return $query;
    }
 
    //cek nim dan password mahasiswa
  function auth_mahasiswa($username,$password){
   $query=$this->db->query("SELECT * FROM tb_aktivasi WHERE nik='$username' AND passsword=MD5('$password') LIMIT 1");
   return $query;
 }
 
}
?>