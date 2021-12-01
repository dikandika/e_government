@extends('dashboard.base')

@section('content')

<div class="container-fluid">
  <div class="fade-in">
    <div class="row">
      <div class="col-sm-12">
        <div class="card">
          <div class="card-header"><h4>Create menu</h4></div>
            <div class="card-body">
                @if(Session::has('message'))
                    <div class="alert alert-success" role="alert">{{ Session::get('message') }}</div>
                @endif
                <form action="{{ route('skck.store') }}" method="POST" enctype='multipart/form-data'>
                    @csrf
                    <table class="table table-bordered datatable">
                        <tbody>
                            <tr>
                                <th>
                                    NIK
                                </th>
                                <td>
                                    <input type="text" class="form-control" name="nik" placeholder="NIK"/>
                                </td>
                            </tr>
                            <tr>
                                <th>
                                    Nama Lengkap
                                </th>
                                <td>
                                    <input type="text" class="form-control" name="nama" placeholder="Nama"/>
                                </td>
                            </tr>
                            <tr>
                                <th>
                                    Alamat
                                </th>
                                <td>
                                    <input type="text" class="form-control" name="alamat" placeholder="Alamat"/>
                                </td>
                            </tr>
                            <tr>
                                <th>
                                    Domisili
                                </th>
                                <td>
                                    <input type="text" class="form-control" name="domisili" placeholder="Domisili"/>
                                </td>
                            </tr>
                            <tr>
                                <th>
                                    No. HP
                                </th>
                                <td>
                                    <input type="phone" class="form-control" name="no_hp" placeholder="no HP"/>
                                </td>
                            </tr>
                            <tr>
                                <th>
                                    Email
                                </th>
                                <td>
                                    <input type="email" class="form-control" name="email" placeholder="Email"/>
                                </td>
                            </tr>
                            <tr>
                                <th>
                                    KTP
                                </th>
                                <td>
                                  <div class="form-group">
                                    <input type="file" class="form-control-file" name="file_ktp" accept="image/png, image/jpeg">
                                  </div>
                                </td>
                            </tr>
                            <tr>
                                <th>
                                    Foto dengan KTP
                                </th>
                                <td>
                                  <div class="form-group">
                                    <input type="file" class="form-control-file" name="file_selfie_ktp" accept="image/png, image/jpeg">
                                  </div>
                                </td>
                            </tr>
                            <tr>
                                <th>
                                    KK
                                </th>
                                <td>
                                  <div class="form-group">
                                    <input type="file" class="form-control-file" name="file_kk" accept="image/png, image/jpeg">
                                  </div>
                                </td>
                            </tr>
                            <tr>
                                <th>
                                    Akte Kelahiran
                                </th>
                                <td>
                                  <div class="form-group">
                                    <input type="file" class="form-control-file" name="file_akte" accept="image/png, image/jpeg">
                                  </div>
                                </td>
                            </tr>
                            <tr>
                                <th>
                                    Pass Foto
                                </th>
                                <td>
                                  <div class="form-group">
                                    <input type="file" class="form-control-file" name="file_pass_foto" accept="image/png, image/jpeg">
                                  </div>
                                </td>
                            </tr>
                            <tr>
                                <th>
                                    Surat Keterangan
                                </th>
                                <td>
                                  <div class="form-group">
                                    <input type="file" class="form-control-file" name="file_suket" accept="image/png, image/jpeg">
                                  </div>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                    <button class="btn btn-primary" type="submit">Save</button>
                    <a class="btn btn-primary" href="{{ route('skck.index') }}">Return</a>
                </form>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>

@endsection

@section('javascript')

@endsection