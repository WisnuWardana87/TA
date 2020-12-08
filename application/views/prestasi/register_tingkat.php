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
                        <form role="form" id="quickForm" action="<?= site_url('Prestasi/save_register_tingkat'); ?>" method="POST">
                            <input type="hidden" name="id_tingkat" value="<?= (isset($id_tingkat['id_tingkat'])) ? md5($id_tingkat['id_tingkat']) : ''; ?>">
                            <div class="card-body">
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Nama Tingkat Prestasi</label>
                                    <input type="text" name="nama_tingkat" class="form-control" id="nama_tingkat" placeholder="Masukan Nama Tingkat Prestasi" value="<?= (isset($id_tingkat['nama_tingkat'])) ? ($id_tingkat['nama_tingkat']) : ''; ?>">
                                </div>
                            </div>
                            <div class="card-body">
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Keterang Tingkat Prestasi</label>
                                    <input type="text" name="ket_tingkat" class="form-control" id="ket_tingkat" placeholder="Masukan Keterangan Tingkat Prestasi" value="<?= (isset($id_tingkat['ket_tingkat'])) ? ($id_tingkat['ket_tingkat']) : ''; ?>">
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
    </section>
</div>
<!--/.col (left) -->