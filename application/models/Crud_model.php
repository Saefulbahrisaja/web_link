<?php
class Crud_model extends CI_Model{

  function get_all_masyarakat() { 
        $this->datatables->select('nik,nama_lengkap,jenis_kelamin,alamat,warganegara,photo');
        $this->datatables->from('tb_masyarakat');
        //$this->datatables->join('kategori', 'barang_kategori_id=kategori_id');
        $this->datatables->add_column('view','<a href="javascript:void(0);" 
                                            class="edit_record btn btn-info btn-xs" 
                                            data-nik="$1" 
                                            data-nama="$2" 
                                            data-jk="$3"
                                            data-alamat="$4" 
                                            data-negara="$5" 
                                            data-photo="$6">Edit</a>  
                                            <a href="javascript:void(0);" 
                                            class="hapus_record btn btn-danger btn-xs" 
                                            data-nik="$1">Hapus</a>','nik,nama_lengkap,jenis_kelamin,alamat,warganegara,photo');
        return $this->datatables->generate();
  }
  function get_all_pendidikan() { 
    $this->datatables->select('nik,nama_lengkap,jenis_kelamin,alamat,warganegara,photo');
    $this->datatables->from('tb_masyarakat');
    //$this->datatables->join('kategori', 'barang_kategori_id=kategori_id');
    $this->datatables->add_column('view','<a href="javascript:void(0);" 
                                        class="edit_record btn btn-info btn-xs" 
                                        data-nik="$1" 
                                        data-nama="$2" 
                                        data-jk="$3"
                                        data-alamat="$4" 
                                        data-negara="$5" 
                                        data-photo="$6">Edit</a>  
                                        <a href="javascript:void(0);" 
                                        class="hapus_record btn btn-danger btn-xs" 
                                        data-nik="$1">Hapus</a>','nik,nama_lengkap,jenis_kelamin,alamat,warganegara,photo');
    return $this->datatables->generate();
}

  function get_all_etnis() { 
    $this->datatables->select('kode_etnis,etnis');
    $this->datatables->from('tb_etnis');
    //$this->datatables->join('kategori', 'barang_kategori_id=kategori_id');
    $this->datatables->add_column('view','<a href="javascript:void(0);" 
                                        class="edit_record btn btn-info btn-xs" 
                                        data-kode="$1" 
                                        data-etnis="$2">Edit</a>  
                                        <a href="javascript:void(0);" 
                                        class="hapus_record btn btn-danger btn-xs" 
                                        data-kode="$1">Hapus</a>','kode_etnis,etnis');
    return $this->datatables->generate();
}

function get_all_agama() { 
  $this->datatables->select('kode_agama,agama');
  $this->datatables->from('tb_agama');
  //$this->datatables->join('kategori', 'barang_kategori_id=kategori_id');
  $this->datatables->add_column('view','<a href="javascript:void(0);" 
                                      class="edit_record btn btn-info btn-xs" 
                                      data-kode="$1" 
                                      data-agama="$2">Edit</a>  
                                      <a href="javascript:void(0);" 
                                      class="hapus_record btn btn-danger btn-xs" 
                                      data-kode="$1">Hapus</a>','kode_agama,agama');
  return $this->datatables->generate();
}


  function get_nik(){ 
    $hsl=$this->db->get('tb_masyarakat');
    return $hsl;
  }


    function get_all_kk() { 
    $this->datatables->select('NO_KK,NIK,KODE_WIL,NAMA,PROVINSI,KECAMATAN,KELURAHAN,RT,RW');
    $this->datatables->from('data_kk');
    $this->datatables->join('tb_masyarakat', 'nik');
    $this->datatables->add_column('view','<a href="javascript:void(0);" 
                                        class="edit_record btn btn-info btn-xs" 
                                        data-kk="$1" 
                                        data-nik="$2" 
                                        data-wil="$3"
                                        data-nama="$4" 
                                        data-provinsi="$5"
                                        data-kec="$6" 
                                        data-kel="$7"  
                                        data-rt="$8"
                                        data-rw="$9">Edit</a>  
                                        <a href="javascript:void(0);" 
                                        class="hapus_record btn btn-danger btn-xs" 
                                        data-kk="$1">Hapus</a>','NO_KK,NIK,KODE_WIL,NAMA,PROVINSI,KECAMATAN,KELURAHAN,RT,RW');
    return $this->datatables->generate();
}
//menampilkan jumlah
  public function hitungLaki()
  {
    $query = $this->db->query("SELECT * FROM tb_masyarakat WHERE jenis_kelamin= 'Laki-Laki'");
    $laki=$query->num_rows();
    return $laki;
  }

  public function hitungPerempuan()
  {
    $query = $this->db->query("SELECT * FROM tb_masyarakat WHERE jenis_kelamin= 'Perempuan'");
    $perempuan=$query->num_rows();
    return $perempuan;
  }

  public function hitungKK()
  {
    $tahun=date('Y');
    $query = $this->db->query("SELECT * FROM tb_kk ");
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