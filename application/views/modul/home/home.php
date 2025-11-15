<div class="right_col" role="main">
          <div class="">
            <div class="page-title">
              <div class="title_left">
                <h3><?php echo $title ?></h3>
              </div>

            </div>

            <div class="clearfix"></div>
            <div class="row tile_count">
                    <div class="col-md-2 col-sm-4 col-xs-6 tile_stats_count">
                    <span class="count_top"><i class="fa fa-user"></i> Total Warga </span>
                    
                    <div class="count"><?php echo $total_all; ?></div>
                    <span class="count_bottom">Jiwa</span>
                    </div>
                    <div class="col-md-2 col-sm-4 col-xs-6 tile_stats_count">
                    <span class="count_top"><i class="fa fa-clock-o"></i> Laki-Laki</span>
                    
                    <div class="count"><?php echo $total_laki; ?></div>
                    <span class="count_bottom">Jiwa</span>
                    </div>
                    <div class="col-md-2 col-sm-4 col-xs-6 tile_stats_count">
                    <span class="count_top"><i class="fa fa-user"></i> Perempuan</span>
                    
                    <div class="count green"><?php echo $total_perempuan; ?></div>
                    <span class="count_bottom">Jiwa</span>
                    </div>
                    <div class="col-md-2 col-sm-4 col-xs-6 tile_stats_count">
                    <span class="count_top"><i class="fa fa-user"></i> Jumlah KK</span>
                    
                    <div class="count red"><?php echo $kk; ?></div>
                    <span class="count_bottom">KK</span>
                    </div>
                    <div class="col-md-2 col-sm-4 col-xs-6 tile_stats_count">
                    <span class="count_top"><i class="fa fa-user"></i> Kelahiran/Tahun</span>
                    
                    <div class="count red">0</div>
                    <span class="count_bottom">Jiwa</span>
                    </div>
                    <div class="col-md-2 col-sm-4 col-xs-6 tile_stats_count">
                    <span class="count_top"><i class="fa fa-user"></i> Kematian/Tahun</span>
                    
                    <div class="count red">0</div>
                    <span class="count_bottom">Jiwa</span>
                    </div>
              </div>
            <div class="row">
              <div class="col-md-6 col-sm-6 col-xs-12">
                <div class="x_panel">
                  <div class="x_title">
                    <h2>Pendidikan Warga</h2>
                    
                    <div class="clearfix"></div>
                  </div>
                  <div class="x_content">
                    <canvas id="Pendidikan"></canvas>
                  </div>
                </div>
              </div>

              <div class="col-md-6 col-sm-6 col-xs-12">
                <div class="x_panel">
                  <div class="x_title">
                    <h2>Usia</h2>
                   
                    <div class="clearfix"></div>
                  </div>
                  <div class="x_content">
                    <canvas id="usia"></canvas>
                  </div>
                </div>
              </div>
            </div>
            <div class="clearfix"></div>
            <div class="row">
              <div class="col-md-6 col-sm-6 col-xs-12">
                <div class="x_panel">
                  <div class="x_title">
                    <h2>Agama/Kepercayaan</h2>
                   
                    <div class="clearfix"></div>
                  </div>
                  <div class="x_content">
                    <canvas id="agama"></canvas>
                  </div>
                </div>
              </div>

              <div class="col-md-6 col-sm-6 col-xs-12">
                <div class="x_panel">
                  <div class="x_title">
                    <h2>Etnis/Suku Bangsa</h2>
                    <div class="clearfix"></div>
                  </div>
                  <div class="x_content">
                    <canvas id="etnis"></canvas>
                  </div>
                </div>
              </div>
            </div>
            <div class="clearfix"></div>
            <div class="row">
              <div class="col-md-6 col-sm-6 col-xs-12">
                <div class="x_panel">
                  <div class="x_title">
                    <h2>Kewarganegaraan</h2>
                    <div class="clearfix"></div>
                  </div>
                  <div class="x_content">
                    <canvas id="negara"></canvas>
                  </div>
                </div>
              </div>

              <div class="col-md-6 col-sm-6 col-xs-12">
                <div class="x_panel">
                  <div class="x_title">
                    <h2>Jenis Kelamin</h2>
                    
                    <div class="clearfix"></div>
                  </div>
                  <div class="x_content">
                    <canvas id="jk"></canvas>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <script type="text/javascript">
            var ctx = document.getElementById('Pendidikan').getContext('2d');
            var chart = new Chart(ctx, {
            type: 'bar',
            data: {
                labels: [
                  <?php
                    if (count($graph)>0) {
                      foreach ($graph as $data) {
                        echo "'" .$data->pendidikan ."',";
                      }
                    }
                  ?>
                ],
                datasets: [{
                    label: 'Jumlah Warga',
                    backgroundColor: '#9B59B6',
                   
                    data: [
                      <?php
                        if (count($graph)>0) {
                          foreach ($graph as $data) {
                            echo $data->total_pendidikan . ", ";
                          }
                        }
                      ?>
                    ]
                }]
            },
        });


        var ctx = document.getElementById('usia').getContext('2d');
            var chart = new Chart(ctx, {
            type: 'bar',
            data: {
                labels: [
                  <?php
                    if (count($graph_usia)>0) {
                      foreach ($graph_usia as $data) {
                        echo "'" .$data->range_umur ."',";
                      }
                    }
                  ?>
                ],
                datasets: [{
                    label: 'Perempuan',
                    backgroundColor:'#E08283',
                   
                    data: [
                      <?php
                        if (count($graph_usia)>0) {
                          foreach ($graph_usia as $data) {
                            echo $data->Perempuan . ", ";
                          }
                        }
                      ?>
                    ],
                    
                },
                {
                    label: 'Laki-Laki',
                    backgroundColor:'#19B5FE',
                  
                    data: [
                      <?php
                        if (count($graph_usia)>0) {
                          foreach ($graph_usia as $data) {
                            echo $data->Laki . ", ";
                          }
                        }
                      ?>
                    ],
                    
                }
              ]
            },
        });



        var ctx = document.getElementById('jk').getContext('2d');
            var chart = new Chart(ctx, {
            type: 'pie',
            data: {
                labels: [
                  <?php
                    if (count($graph_jk)>0) {
                      foreach ($graph_jk as $data) {
                        echo "'" .$data->jenis_kelamin ."',";
                      }
                    }
                  ?>
                ],
                datasets: [{
                    label: 'Jumlah Warga',
                    backgroundColor: [
                    "#19B5FE",
                    "#E08283"
                    ],
                    data: [
                      <?php
                        if (count($graph_jk)>0) {
                          foreach ($graph_jk as $data) {
                            echo  $data->jumlah . ", ";
                          }
                        }
                      ?>
                    ]
                }]

                
            },
        });


        var ctx = document.getElementById('negara').getContext('2d');
            var chart = new Chart(ctx, {
            type: 'pie',
            data: {
                labels: [
                  <?php
                    if (count($graph_negara)>0) {
                      foreach ($graph_negara as $data) {
                        echo "'" .$data->warganegara ."',";
                      }
                    }
                  ?>
                ],
                datasets: [{
                    label: 'Jumlah Warga',
                    backgroundColor: [
                    "#19B5FE",
                    "#E08283"
                    ],
                   
                    data: [
                      <?php
                        if (count($graph_negara)>0) {
                          foreach ($graph_negara as $data) {
                            echo  $data->jumlah . ", ";
                          }
                        }
                      ?>
                    ]
                }]
            },
        });


        var ctx = document.getElementById('agama').getContext('2d');
            var chart = new Chart(ctx, {
            type: 'doughnut',
            data: {
                labels: [
                  <?php
                    if (count($graph_agama)>0) {
                      foreach ($graph_agama as $data) {
                        echo "'" .$data->agama ."',";
                      }
                    }
                  ?>
                ],
                datasets: [{
                    label: 'Jumlah Warga',
                    backgroundColor: [
                    "#E08283",
                    "#9B59B6",
                    "#BDC3C7",
                    "#26B99A",
                    "#3498DB",
                    "#19B5FE",
                    "#455C73"
                    ],
                   
                    data: [
                      <?php
                        if (count($graph_agama)>0) {
                          foreach ($graph_agama as $data) {
                            echo $data->jumlah . ", ";
                          }
                        }
                      ?>
                    ]
                }]
            },
        });

        var ctx = document.getElementById('etnis').getContext('2d');
            var chart = new Chart(ctx, {
            type: 'doughnut',
            data: {
                labels: [
                  <?php
                    if (count($graph_etnis)>0) {
                      foreach ($graph_etnis as $data) {
                        echo "'" .$data->etnis ."',";
                      }
                    }
                  ?>
                ],
                datasets: [{
                    label: 'Jumlah Warga',
                    backgroundColor: [
                    "#E08283",
                    "#9B59B6",
                    "#BDC3C7",
                    "#26B99A",
                    "#3498DB",
                    "#19B5FE",
                    "#455C73"
                    ],
                   
                    data: [
                      <?php
                        if (count($graph_etnis)>0) {
                          foreach ($graph_etnis as $data) {
                            echo $data->jumlah . ", ";
                          }
                        }
                      ?>
                    ]
                }]
            },
        });
        
  </script>