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
                        <form role="form" id="quickForm" action="<?= site_url('Prestasi/save_register_jenis'); ?>" method="POST">
                            <input type="hidden" name="id_jenis" value="<?= (isset($id_jenis['id_jenis'])) ? md5($id_jenis['id_jenis']) : ''; ?>">
                            <div class="card-body">
                                <div class="form-group">
                                    <label>Nama Bidang</label>
                                    <select class="form-control" name="id_bidang">
                                        <?php
                                        foreach ($nama_bidang as $val) { ?>
                                            <option value="<?= $val['id_bidang']; ?>"><?= $val['nama_bidang']; ?></option>
                                        <?php } ?>
                                    </select>
                                </div>
                            </div>
                            <div class="card-body">
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Nama Jenis Prestasi</label>
                                    <input type="text" name="nama_jenis" class="form-control" id="nama_jenis" placeholder="Masukan Nama Jenis Prestasi" value="<?= (isset($id_jenis['nama_jenis'])) ? ($id_jenis['nama_jenis']) : ''; ?>">
                                </div>
                            </div>
                            <div class="card-body">
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Keterang Jenis Prestasi</label>
                                    <input type="text" name="ket_jenis" class="form-control" id="ket_jenis" placeholder="Masukan Keterangan Jenis Prestasi" value="<?= (isset($id_jenis['ket_jenis'])) ? ($id_jenis['ket_jenis']) : ''; ?>">
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