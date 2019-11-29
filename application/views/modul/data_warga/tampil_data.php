   <!-- page content -->
   <div class="right_col" role="main">
          <div class="">
            <div class="page-title">

            </div>
            <div class="clearfix"></div>
            <div class="row">
              <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                  <div class="x_title">
                    <h2><?php echo $title;?></h2>
                    <div class="clearfix"></div>
                  </div>
                  <div class="x_content">
				  <p class="text-muted font-13 m-b-30">
        				<button class="btn btn-success" data-toggle="modal" data-target="#TambahData">Tambah Data</button>
                    </p>
                    <table class="table table-striped table-hover table-responsive" id="TablePenduduk">
                    <thead>
                      <tr>
                      <th>No. KTP</th>
                      <th>Nama Lengkap</th>
                      <th>Alamat</th>
                      <th>Pendidikan</th>
                      <th>Pekerjaan</th>
                      <th>Etnis</th>
                      <th>Agama</th>
                      <th>Action</th>
                      </tr>
                    </thead>
						</table>
                  </div>
                  </div>
				</div>
				
              </div>
            </div>
          </div>
		</div>
		<div id="TambahData" class="modal fade" role="dialog">
            <div class="modal-dialog ">
                      <!-- konten modal-->
                      <div class="modal-content ">
                          <!-- heading modal -->
                          <form name="form1" action="<?php echo base_url().'Eling/simpan_masyarakat'?>" enctype="multipart/form-data" method="post">
                          <div class="modal-header bg-primary">
                              <button type="button" class="close" data-dismiss="modal">&times;</button>
                              <h4 class="modal-title">PENDATAAN WARGA</h4>
                          </div>
                          <!-- body modal -->
                          <div class="modal-body">
						      <label>No KTP </label>
                              <select data-live-search="true" name="nik" class="form-control selectpicker" required>
                              <option value="">Silahkan Pilih NIK atau ketik Nama </option>
                                  <?php foreach ($nik->result() as $row) :?>
                                  <option value="<?php echo $row->nik;?>"><?php echo $row->nik;?> - <?php echo $row->nama_lengkap;?></option>
                                  <?php endforeach;?>
                              </select>
                              <label>Wilayah </label>
                              <select data-live-search="true" name="wilayah" class="form-control selectpicker" required>
                              <?php foreach ($wil->result() as $row) :?>
                              <optgroup label="Provinsi : <?php echo $row->provinsi;?>">
                                <option value="<?php echo $row->kode_wilayah;?>"> <?php echo $row->kecamatan;?> <?php echo $row->kelurahan;?><br> <?php echo $row->rt;?>/<?php echo $row->rw;?></option>
                              </optgroup>
                              <?php endforeach;?>
                             </select>
                              
                              <label for="heard">Tempat Lahir</label>
                              <input type="text" name="tempat_lahir" class="form-control" required>
                              <label for="heard">Tanggal Lahir</label>
                              <input type="date" name="tgl_lahir" class="form-control" required>
                              <label>Jenis Kelamin</label><br>
                              <select data-live-search="true" name="jk" class="form-control selectpicker" required>
                                  <option value="">Jenis Kelamin</option>
                                  <option value="Laki-Laki">Laki-Laki</option>
                                  <option value="Perempuan">Perempuan</option>
                              </select><br>
                              <label for="email">Alamat</label>
                              <textarea class="form-control" name="alamat" required></textarea>
                              <label for="heard">Warganegara</label>
                              <select data-live-search="true" name="negara" class="form-control selectpicker" required>
                              <option value="">Kewarganegaraan</option>
                               <option value="Indonesia">Warganegara Indonesia</option>
							   <option value="Asing">Warganegara Asing</option>
                              </select>
                            
                          </div>
                          <!-- footer modal -->
                          <div class="modal-footer">
                              <button type="button" class="btn btn-danger btn-sm" data-dismiss="modal"><i class="fa fa-close"></i> Tutup </button>
                              <button type="submit" class="btn btn-primary btn-sm"><i class="fa fa-floppy-o"></i> Simpan</button>
                          </div>
                      </div>
                      </form>
                  </div>
			  </div>
			  <div id="ModalUpdate" class="modal fade" role="dialog">
            <div class="modal-dialog ">
                      <!-- konten modal-->
                      <div class="modal-content ">
                          <!-- heading modal -->
                          <form name="form1" action="<?php echo base_url().'Eling/update_masyarakat'?>" enctype="multipart/form-data" method="post">
                          <div class="modal-header bg-primary">
                              <button type="button" class="close" data-dismiss="modal">&times;</button>
                              <h4 class="modal-title">EDIT DATA</h4>
                          </div>
                          <!-- body modal -->
                          <div class="modal-body">

                              <label for="fullname">NO KTP *</label>
                              <input type="number" id="noinduk" class="form-control" name="nik" maxlength="16" required readonly     />
                              <label for="email">Nama Lengkap</label>
                              <input type="text" id="nama" class="form-control" name="nama" required />
                              <label for="heard">Tempat Lahir</label>
                              <input type="text" name="tempat_lahir" class="form-control" require>
                              <label for="heard">Tanggal Lahir</label>
                              <input type="date" name="tgl_lahir" class="form-control" require>
                              <label>Jenis Kelamin</label><br>
                              <select data-live-search="true" name="jk" class="form-control selectpicker" required>
                                  <option value="">Jenis Kelamin</option>
                                  <option value="Laki-Laki">Laki-Laki</option>
                                  <option value="Perempuan">Perempuan</option>
                              </select><br>
                              <label for="email">Alamat</label>
                              <textarea class="form-control" name="alamat" required></textarea>
                              <label for="heard">Warganegara</label>
                              <select data-live-search="true" name="negara" class="form-control selectpicker" required>
                              <option value="">Kewarganegaraan</option>
                               <option value="Indonesia">Warganegara Indonesia</option>
							   <option value="Asing">Warganegara Asing</option>
                              </select>
                          </div>
                          <!-- footer modal -->
                          <div class="modal-footer">
                              <button type="button" class="btn btn-danger btn-sm" data-dismiss="modal"><i class="fa fa-close"></i> Tutup </button>
                              <button type="submit" class="btn btn-primary btn-sm"><i class="fa fa-floppy-o"></i> Simpan</button>
                          </div>
                      </div>
                      </form>
                  </div>
              </div> 
			  <div id="ModalHapus" class="modal fade" role="dialog">
            <div class="modal-dialog ">
                      <!-- konten modal-->
                      <div class="modal-content ">
                          <!-- heading modal -->
                          <form name="form1" action="<?php echo base_url().'Eling/delete_masyarakat'?>" enctype="multipart/form-data" method="post">
                          <div class="modal-header bg-primary">
                              <button type="button" class="close" data-dismiss="modal">&times;</button>
                              <h4 class="modal-title">HAPUS DATA</h4>
                          </div>
                          <!-- body modal -->
                          <div class="modal-body">
						  <input type="hidden" name="nik" class="form-control" placeholder="NIK" required>
                            <strong>Anda yakin mau menghapus record ini?</strong>
                          </div>
                          <!-- footer modal -->
                          <div class="modal-footer">
                              <button type="button" class="btn btn-danger btn-sm" data-dismiss="modal"><i class="fa fa-close"></i> Tutup </button>
                              <button type="submit" class="btn btn-primary btn-sm"><i class="fa fa-trash-o"></i> Hapus</button>
                          </div>
                      </div>
                      </form>
                  </div>
              </div> 

              </div>
        </div>
			 