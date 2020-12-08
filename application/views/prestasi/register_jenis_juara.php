<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                </div>
            </div>
        </div><!-- /.container-fluid -->
    </section>

    <!-- Main content -->
    <section class="content">
        <div class="container-fluid">
            <div class="row">
                <!-- left column -->
                <div class="col-md-12">
                    <!-- jquery validation -->
                    <div class="card card-primary">
                        <div class="card-header">
                            <h3 class="card-title"><?= $title ?></h3>
                        </div>
                        <!-- /.card-header -->
                        <!-- form start -->
                        <form role="form" id="quickForm" action="<?= site_url('Prestasi/save_register_jenis_juara'); ?>" method="POST">
                            <input type="hidden" name="id_jenis_juara" value="<?= (isset($id_jenis_juara['id_jenis_juara'])) ? md5($id_jenis_juara['id_jenis_juara']) : ''; ?>">
                            <div class="card-body">
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Nama Jenis Juara</label>
                                    <input type="text" name="nama_jenis_juara" class="form-control" id="nama_jenis_juara" placeholder="Masukan Nama Jenis Juara" value="<?= (isset($id_jenis_juara['nama_jenis_juara'])) ? ($id_jenis_juara['nama_jenis_juara']) : ''; ?>">
                                </div>
                            </div>
                            <div class="card-body">
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Keterang Jenis Juara</label>
                                    <input type="text" name="ket_jenis_juara" class="form-control" id="ket_jenis_juara" placeholder="Masukan Keterangan Jenis Juara" value="<?= (isset($id_jenis_juara['ket_jenis_juara'])) ? ($id_jenis_juara['ket_jenis_juara']) : ''; ?>">
                                </div>
                                <div>
                                    <button type="submit" class="btn btn-primary">Submit</button>
                                </div>
                            </div>

                    </div>

                </div>
                <!-- /.card-body -->
                </form>
            </div>
            <!-- /.card -->
        </div>
        <!--/.col (left) -->

        <!--/.col (right) -->
    </section>
</div>