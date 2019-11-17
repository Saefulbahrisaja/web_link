<?php
class Crud_model extends CI_Model{

    function get_jenis_surat(){
        $hsl=$this->db->get('tb_jenissurat');
        return $hsl;
    }

    function get_nik(){
        $hsl=$this->db->get('tampil_niknama');
        return $hsl;
    }


  function get_all_masyarakat() {
        $this->datatables->select('nik,nama_lengkap,jenis_kelamin,alamat,warganegara,tgl_lahir,tempat_lahir');
        $this->datatables->from('tb_masyarakat');
        //$this->datatables->join('kategori', 'barang_kategori_id=kategori_id');
        $this->datatables->add_column('view','<a href="javascript:void(0);" 
                                            class="edit_record btn btn-info btn-xs" 
                                            data-nik="$1" 
                                            data-nama_lengkap="$2" 
                                            data-jenis_kelamin="$3"
                                            data-alamat="$4" 
                                            data-warganegara="$5" 
                                            data-tgl_lahir="$6"
                                            data-tempat_lahir="$7"><i class="glyphicon glyphicon-pencil"></i></a>  
                                            <a href="javascript:void(0);" 
                                            class="hapus_record btn btn-danger btn-xs" 
                                            data-nik="$1"><i class="glyphicon glyphicon-trash"></i></a>','nik,nama_lengkap,jenis_kelamin,alamat,warganegara,tgl_lahir,tempat_lahir');
        return $this->datatables->generate();
    }

  function get_all_pendidikan() { 
    $this->datatables->select('kode_pendidikan,jenis_pendidikan,pendidikan');
    $this->datatables->from('tb_pendidikan');
    //$this->datatables->join('kategori', 'barang_kategori_id=kategori_id');
    $this->datatables->add_column('view','<a href="javascript:void(0);" 
                                        class="edit_record btn btn-info btn-xs" 
                                        data-kode="$1" 
                                        data-jenis="$2" 
                                        data-pendidikan="$3"><i class="glyphicon glyphicon-pencil"></i></a>  
                                        <a href="javascript:void(0);" 
                                        class="hapus_record btn btn-danger btn-xs" 
                                        data-kode="$1"><i class="glyphicon glyphicon-trash"></i></a>','kode_pendidikan,jenis_pendidikan,pendidikan');
    return $this->datatables->generate();
}

  function get_all_etnis() { 
    $this->datatables->select('kode_etnis,etnis');
    $this->datatables->from('tb_etnis');
    //$this->datatables->join('kategori', 'barang_kategori_id=kategori_id');
    $this->datatables->add_column('view','<a href="javascript:void(0);" 
                                        class="edit_record btn btn-info btn-xs" 
                                        data-kode="$1" 
                                        data-etnis="$2"><i class="glyphicon glyphicon-pencil"></i></a>  
                                        <a href="javascript:void(0);" 
                                        class="hapus_record btn btn-danger btn-xs" 
                                        data-kode="$1"><i class="glyphicon glyphicon-trash"></i></a>','kode_etnis,etnis');
    return $this->datatables->generate();
}

  function get_all_agama() {
  $this->datatables->select('kode_agama,agama');
  $this->datatables->from('tb_agama');
  //$this->datatables->join('kategori', 'barang_kategori_id=kategori_id');
  $this->datatables->add_column('view','<a href="javascript:void(0);" 
                                      class="edit_record btn btn-info btn-xs" 
                                      data-kode="$1" 
                                      data-agama="$2"><i class="glyphicon glyphicon-pencil"></i></a>  
                                      <a href="javascript:void(0);" 
                                      class="hapus_record btn btn-danger btn-xs" 
                                      data-kode="$1"><i class="glyphicon glyphicon-trash"></i></a>','kode_agama,agama');
  return $this->datatables->generate();
}


  function get_all_kk() {
    $this->datatables->select('NO_KK,NIK,KODE_WIL,NAMA,PROVINSI,KECAMATAN,KELURAHAN,RT,RW');
    $this->datatables->from('data_kk');
    //$this->datatables->join('tb_masyarakat', 'nik');
    $this->datatables->add_column('view','<a href="javascript:void(0);" 
                                        class="edit_record btn btn-info btn-xs" 
                                        data-no_kk="$1" 
                                        data-nik="$2" 
                                        data-kode_wil="$3"><i class="glyphicon glyphicon-pencil"></i></a>  
                                        <a href="javascript:void(0);" 
                                        class="hapus_record btn btn-danger btn-xs" 
                                        data-no_kk="$1"><i class="glyphicon glyphicon-trash"></i> </a>','NO_KK,NIK,KODE_WIL,NAMA,PROVINSI,KECAMATAN,KELURAHAN,RT,RW');
    return $this->datatables->generate();
}
//menampilkan jumlah
  public function hitungLaki()
  {
    $query = $this->db->query("SELECT * FROM tb_masyarakat,tb_warga WHERE tb_masyarakat.jenis_kelamin= 'Laki-Laki' AND tb_warga.nik=tb_masyarakat.nik");
    $laki=$query->num_rows();
    return $laki;
  }

  public function hitungPerempuan()
  {
    $query = $this->db->query("SELECT * FROM tb_masyarakat,tb_warga WHERE tb_masyarakat.jenis_kelamin= 'Perempuan' AND tb_warga.nik=tb_masyarakat.nik");
    $perempuan=$query->num_rows();
    return $perempuan;
  }

  public function hitungKK()
  {
    $tahun=date('Y');
    $query = $this->db->query("SELECT * FROM data_kk ");
    $kk=$query->num_rows();
    return $kk;
  }
  //menampilkan jumlah selesais
  public function graph_pendidikan()
	{
		$data = $this->db->query("SELECT * from data_warga_pendidikan");
		return $data->result();
  }

  public function graph_jk()
	{
		$data = $this->db->query("SELECT * from data_warga_jk");
		return $data->result();
  }

  public function graph_negara()
	{
		$data = $this->db->query("SELECT * from data_warga_negara");
		return $data->result();
  }

  public function graph_agama()
	{
    $tahun=date('Y');
		$data = $this->db->query("SELECT * from data_warga_agama");
		return $data->result();
  }

  public function graph_etnis()
	{
		$data = $this->db->query("SELECT * from data_warga_etnis");
		return $data->result();
  }
  
  public function graph_usia()
	{
		$data = $this->db->query("SELECT * from data_warga_usia");
		return $data->result();
  }
  
}