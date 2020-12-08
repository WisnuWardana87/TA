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
                        <form role="form" id="quickForm" action="<?= site_url('Prestasi/save_register_bidang'); ?>" method="POST">
                            <input type="hidden" name="id_bidang" value="<?= (isset($id_bidang['id_bidang'])) ? md5($id_bidang['id_bidang']) : ''; ?>">
                            <div class="card-body">
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Nama Bidang Prestasi</label>
                                    <input type="text" name="nama_bidang" class="form-control" id="nama_bidang" placeholder="Masukan Nama Bidang Prestasi" value="<?= (isset($id_bidang['nama_bidang'])) ? ($id_bidang['nama_bidang']) : ''; ?>">
                                </div>
                            </div>
                            <div class="card-body">
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Keterang Bidang Prestasi</label>
                                    <input type="text" name="ket_bidang" class="form-control" id="ket_bidang" placeholder="Masukan Keterangan Bidang Prestasi" value="<?= (isset($id_bidang['ket_bidang'])) ? ($id_bidang['ket_bidang']) : ''; ?>">
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

    </section>
</div>

<!-- /.content-wrapper -->