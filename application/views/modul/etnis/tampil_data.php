   <!-- page content -->
   <div class="right_col" role="main">
          <div class="">
            <div class="page-title">
              <div class="title_left">
                <h3><?php echo $title;?></h3>
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
                    <table class="table table-striped" id="TableEtnis">
                    <thead>
                      <tr>
                      <th>No.</th>
                      <th>Etnis</th>
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
                          <form name="form1" action="<?php echo base_url().'Eling/simpan_etnis'?>" enctype="multipart/form-data" method="post">
                          <div class="modal-header bg-primary">
                              <button type="button" class="close" data-dismiss="modal">&times;</button>
                              <h4 class="modal-title">TAMBAH DATA ETNIS</h4>
                          </div>
                          <!-- body modal -->
                          <div class="modal-body">
						                  
                              <label for="email">Etnis</label>
                              <input type="hidden" id="kode_etnis" class="form-control" name="kode_etnis" maxlength="16"  />
                              <input type="text" id="etnis" class="form-control" name="etnis" required />
                            
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
                          <form name="form1" action="<?php echo base_url().'Eling/update_etnis'?>" enctype="multipart/form-data" method="post">
                          <div class="modal-header bg-primary">
                              <button type="button" class="close" data-dismiss="modal">&times;</button>
                              <h4 class="modal-title">EDIT DATA</h4>
                          </div>
                          <!-- body modal -->
                          <div class="modal-body">
                             <label for="email">Nama Lengkap</label>
                             <input type="hidden" id="kode_etnis" class="form-control" name="kode_etnis" maxlength="16" required />
                             <input type="text" id="etnis" class="form-control" name="etnis" required />
                            
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
                          <form name="form1" action="<?php echo base_url().'Eling/delete_etnis'?>" enctype="multipart/form-data" method="post">
                          <div class="modal-header bg-primary">
                              <button type="button" class="close" data-dismiss="modal">&times;</button>
                              <h4 class="modal-title">HAPUS DATA</h4>
                          </div>
                          <!-- body modal -->
                          <div class="modal-body">
						                <input type="text" id="kode_etnis" name="kode_etnis" class="form-control" placeholder="etnis" required>
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
			 