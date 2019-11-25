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
                    <table class="table table-striped table-hover table-responsive" id="TableKK">
						<thead>
							<tr>

							<th>No. KK</th>
							<th>NIK Kepala Keluarga</th>
							<th>Nama Kepala Keluarga</th>
							<th>Alamat</th>
							<th>Kecamatan</th>
							<th>Kelurahan</th>
                            <th>RT</th>
							<th>RW</th>
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
                          <form name="form1" action="<?php echo base_url().'Eling/simpan_kk'?>" enctype="multipart/form-data" method="post">
                          <div class="modal-header bg-primary">
                              <button type="button" class="close" data-dismiss="modal">&times;</button>
                              <h4 class="modal-title">TAMBAH DATA KK</h4>
                          </div>
                          <!-- body modal -->
                          <div class="modal-body">
						     <label for="fullname">No Kartu Keluarga *</label>
                              <input type="number" class="form-control" name="no_kk" placeholder="1234567890" required="required"  />
                              <input type="hidden" class="form-control" name="status_kk" value="Kepala keluarga" required="required"  />
                              <label>No KTP Kepala Keluarga</label>
                              <select data-live-search="true" name="nik" class="form-control selectpicker colorful-select" required>
                              <option value="">Silahkan Pilih NIK atau ketik Nama </option>
                                  <?php foreach ($nik->result() as $row) :?>
                                  <option value="<?php echo $row->nomas;?>"><?php echo $row->nik;?> - <?php echo $row->nama_lengkap;?></option>
                                  <?php endforeach;?>
                              </select>
                              <label>Status KK</label>
                              <select data-live-search="true" name="status_kk" class="form-control selectpicker" required>
                                  <option value="">Pilih Status KK </option>
                                  <option value="Kepala Keluarga">Kepala Keluarga</option>
                                  <option value="Anak">Anak</option>
                                  <option value="Istri">Istri</option>
                              </select>
                              <label>Status Kawin</label>
                              <select data-live-search="true" name="status_kawin" class="form-control selectpicker" required>
                              <option value="">Pilih Status Kawin </option>
                                   <option value="Kawin">Kawin</option>
                                   <option value="Belum Kawin">Belum Kawin</option>
                                   <option value="Janda">Janda</option>
                                   <option value="Duda">Duda</option>
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
                              <label for="fullname">No Kartu Keluarga *</label>
                              <input type="text" id="no_kk" class="form-control" name="no_kk" placeholder="1234567890" required="required"  />
                              <input type="hidden" class="form-control" name="status_kk" value="Kepala keluarga" required="required"  />
                              <label>No KTP Kepala Keluarga</label>
                              <select data-live-search="true" name="nik" class="form-control selectpicker" required>
                                  <option value="">Silahkan Pilih NIK atau ketik Nama </option>
                                  <?php foreach ($nik->result() as $row) :?>
                                      <option value="<?php echo $row->nomas;?>"><?php echo $row->nik;?> - <?php echo $row->nama_lengkap;?></option>
                                  <?php endforeach;?>
                              </select>
                              <label>Status KK</label>
                              <select data-live-search="true" name="status_kk" class="form-control selectpicker" required>
                                  <option value="">Pilih Status KK </option>
                                  <option value="Kepala Keluarga">Kepala Keluarga</option>
                                  <option value="Anak">Anak</option>
                                  <option value="Istri">Istri</option>
                              </select>
                              <label>Status Kawin</label>
                              <select data-live-search="true" name="status_kawin" class="form-control selectpicker" required>
                                  <option value="">Pilih Status Kawin </option>
                                  <option value="Kawin">Kawin</option>
                                  <option value="Belum Kawin">Belum Kawin</option>
                                  <option value="Janda">Janda</option>
                                  <option value="Duda">Duda</option>
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
               <div id="ModalDetail" class="modal fade" role="dialog">
                   <div class="modal-dialog modal-lg">
                       <!-- konten modal-->
                       <div class="modal-content ">
                           <!-- heading modal -->
                           <form name="form1" action="<?php echo base_url().'Eling/delete_masyarakat'?>" enctype="multipart/form-data" method="post">
                               <div class="modal-header bg-primary">
                                   <button type="button" class="close" data-dismiss="modal">&times;</button>
                                   <h4 class="modal-title">Detail Kartu Keluarga</h4>
                               </div>
                               <!-- body modal -->
                               <div class="modal-body">
                                   <center><h3>KARTU KELUARGA</h3></center>
                                   <center><h2>No.9999999999999999</h2></center>
                                   <table class="table table-responsive">
                                       <tr>
                                           <td><b>
                                               Nama Kepala keluarga : <br>
                                               Alamat               : <br>
                                               RT/RW                :<br>
                                               Desa/kelurahan       :<br></b>
                                           </td>
                                           <td><b>
                                               Kecamatan : <br>
                                               Kab/Kota : <br>
                                               Kode POS :<br>
                                               Provinsi :<br></b>
                                           </td>
                                       </tr>

                                   </table>
                                   <table class="table table-striped table-hover table-responsive table-bordered" id="datatable-fixed-header">
                                       <thead>
                                       <tr>
                                           <th>No.</th>
                                           <th>Nama Lengkap</th>
                                           <th>NIK</th>
                                           <th>Alamat</th>
                                           <th>Jenis<br>Kelamin</th>
                                           <th>Tempat Lahir</th>
                                           <th>Agama</th>
                                           <th>Pendidikan</th>
                                           <th>Jenis Pekerjaan</th>
                                       </tr>

                                       </thead>
                                   </table>
                               </div>
                               <!-- footer modal -->
                               <div class="modal-footer">
                                   <button type="button" class="btn btn-success btn-sm"><i class="fa fa-print"></i> Cetak Kartu Keluarga </button>

                               </div>
                       </div>
                       </form>
                   </div>
               </div>
               </div>
              </div> 