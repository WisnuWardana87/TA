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
                        <form role="form" id="quickForm" action="<?= site_url('MasterData/save_register_pembimbing'); ?>" method="POST">
                            <input type="hidden" name="id_pembimbing" value="<?= (isset($id_pembimbing['id_pembimbing'])) ? md5($id_pembimbing['id_pembimbing']) : ''; ?>">
                            <div class="card-body">
                                <div class="form-group">
                                    <label for="exampleInputEmail1">NIP Pembimbing</label>
                                    <input type="text" name="nip_pembimbing" class="form-control" id="nip_pembimbing" placeholder="Masukan NIP Pembimbing" value="<?= (isset($id_pembimbing['nip_pembimbing'])) ? ($id_pembimbing['nip_pembimbing']) : ''; ?>">
                                </div>
                                <small class="text-danger"><?= form_error('nip_pembimbing'); ?></small>
                            </div>

                            <div class="card-body">
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Nama Pembimbing</label>
                                    <input type="text" name="nama_pembimbing" class="form-control" id="nama_pembimbing" placeholder="Masukan Nama Pembimbing" value="<?= (isset($id_pembimbing['nama_pembimbing'])) ? ($id_pembimbing['nama_pembimbing']) : ''; ?>">
                                </div>
                                <small class="text-danger"><?= form_error('nama_pembimbing'); ?></small>
                                <div>
                                    <button type="submit" class="btn btn-primary">Submit</button>
                                </div>
                            </div>

                    </div>
                    </form>

                </div>
                <!-- /.card-body -->
            </div>
            <!-- /.card -->
        </div>
    </section>
</div>
<!--/.col (left) -->