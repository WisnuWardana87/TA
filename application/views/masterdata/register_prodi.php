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
                        <form role="form" id="quickForm" action="<?= site_url('MasterData/save_register_prodi'); ?>" method="POST">
                            <input type="hidden" name="id_prodi" value="<?= (isset($id_prodi['id_prodi'])) ? md5($id_prodi['id_prodi']) : ''; ?>">
                            <div class="card-body">
                                <div class="form-group">
                                    <label>Nama Jurusan</label>
                                    <select class="form-control" name="id_jurusan">
                                        <?php
                                        foreach ($nama_jurusan as $val) { ?>
                                            <option value="<?= $val['id_jurusan']; ?>"><?= $val['nama_jurusan']; ?></option>
                                        <?php } ?>
                                    </select>
                                </div>
                            </div>
                            <div class="card-body">
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Nama Prodi</label>
                                    <input type="text" name="nama_prodi" class="form-control" id="nama_prodi" placeholder="Masukan Nama Prodi" value="<?= (isset($id_prodi['nama_prodi'])) ? ($id_prodi['nama_prodi']) : ''; ?>">
                                </div>
                                <small class="text-danger"><?= form_error('nama_prodi'); ?></small>
                            </div>
                            <div class="card-body">
                                <div class="form-group">
                                    <label>Jenjang</label>
                                    <select class="form-control" name="jenjang">
                                        <option>D3</option>
                                        <option>S1</option>
                                    </select>
                                </div>
                                <div>
                                    <button type="submit" class="btn btn-primary">Submit</button>
                                </div>
                            </div>

                        </form>
                    </div>
                </div>
            </div>
        </div>
    </section>
</div>