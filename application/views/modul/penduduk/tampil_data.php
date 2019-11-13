   <!-- page content -->
   <div class="right_col" role="main">
          <div class="">
            <div class="page-title">
              <div class="title_left">
                <h3>Echarts <small>Some examples to get you started</small></h3>
              </div>

              <div class="title_right">
                <div class="col-md-5 col-sm-5 col-xs-12 form-group pull-right top_search">
                  <div class="input-group">
                    <input type="text" class="form-control" placeholder="Search for...">
                    <span class="input-group-btn">
                      <button class="btn btn-default" type="button">Go!</button>
                    </span>
                  </div>
                </div>
              </div>
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
                    <table class="table table-striped" id="TablePenduduk">
                    <thead>
                      <tr>
                      <th>No. KTP</th>
                      <th>Nama Lengkap</th>
                      <th>Jenis Kelamin</th>
                      <th>Alamat</th>
                      <th>Warganegara</th>
                      <th>Photo</th>
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
                              <h4 class="modal-title">TAMBAH DATA PENDUDUK</h4>
                          </div>
                          <!-- body modal -->
                          <div class="modal-body">
						  <label for="fullname">NO KTP *</label>
                              <input type="number" id="noinduk" class="form-control" name="nik" maxlength="16" required />
                              <label for="email">Nama Lengkap</label>
                              <input type="text" id="nama" class="form-control" name="nama" required />
                              <label>Jenis Kelamin</label><br>
                                <div id="gender" class="btn-group" data-toggle="buttons">
                                  <label class="btn btn-default" data-toggle-class="btn-primary" data-toggle-passive-class="btn-default">
                                    <input type="radio" name="jk" value="Laki-Laki"> &nbsp; Laki-Laki &nbsp;
                                  </label>
                                  <label class="btn btn-danger" data-toggle-class="btn-primary" data-toggle-passive-class="btn-default">
                                    <input type="radio" name="jk" value="Perempuan"> Perempuan
                                  </label>
                                </div><br>
                              <label for="email">Alamat</label>
                              <textarea class="form-control" name="alamat" required></textarea>
                              <label for="heard">Warganegara</label>
                              <input type="text" id="nama" class="form-control" name="negara" required />
                              <label for="heard">Photo</label>
                              <input type="file" name="photo">
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
                              <input type="number" id="noinduk" class="form-control" name="nik" maxlength="16" required />
                              <label for="email">Nama Lengkap</label>
                              <input type="text" id="nama" class="form-control" name="nama" required />
                            
                              <label>Jenis Kelamin</label><br>
                                <div id="gender" class="btn-group" data-toggle="buttons">
                                  <label class="btn btn-default" data-toggle-class="btn-primary" data-toggle-passive-class="btn-default">
                                    <input type="radio" name="jk" value="Laki-Laki"> &nbsp; Laki-Laki &nbsp;
                                  </label>
                                  <label class="btn btn-danger" data-toggle-class="btn-primary" data-toggle-passive-class="btn-default">
                                    <input type="radio" name="jk" value="Perempuan"> Perempuan
                                  </label>
                                </div><br>
                              <label for="email">Alamat</label>
                              <textarea class="form-control" name="alamat" required></textarea>
                              <label for="heard">Warganegara</label>
                              <input type="text" id="nama" class="form-control" name="negara" required />
                              <label for="heard">Photo</label>
                              <input type="file" name="photo">
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
			 