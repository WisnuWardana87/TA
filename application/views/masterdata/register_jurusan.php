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
                        <form role="form" id="quickForm" action="<?= site_url('MasterData/save_register_jurusan'); ?>" method="POST">
                            <input type="hidden" name="id_jurusan" value="<?= (isset($id_jurusan['id_jurusan'])) ? md5($id_jurusan['id_jurusan']) : ''; ?>">
                            <div class="card-body">
                                <div class="form-group">
                                    <label>Nama Fakultas</label>
                                    <select class="form-control" name="id_fakultas">
                                        <?php
                                        foreach ($nama_fakultas as $val) { ?>
                                            <option value="<?= $val['id_fakultas']; ?>"><?= $val['nama_fakultas']; ?></option>
                                        <?php } ?>
                                    </select>
                                </div>
                            </div>
                            <div class="card-body">
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Nama Jurusan</label>
                                    <input type="text" name="nama_jurusan" class="form-control" id="nama_jurusan" placeholder="Masukan Nama Jurusan" value="<?= (isset($id_jurusan['nama_jurusan'])) ? ($id_jurusan['nama_jurusan']) : ''; ?>">
                                </div>
                                <small class="text-danger"><?= form_error('nama_jurusan'); ?></small>
                                <div>
                                    <button type="submit" class="btn btn-primary">Submit</button>
                                </div>
                            </div>
                            <!-- /.card-body -->
                        </form>
                    </div>
                    <!-- /.card -->
                </div>
                <!--/.col (left) -->

            </div>
            <!-- /.row -->
        </div><!-- /.container-fluid -->
    </section>
</div>