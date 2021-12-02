@extends('dashboard.base')

@section('content')

<div class="container-fluid">
  <div class="fade-in">
    <div class="row">
      <div class="col-sm-12">
        <div class="card">
          <div class="card-header"><h4>Edit SKCK</h4></div>
            <div class="card-body">
                @if(Session::has('message'))
                    <div class="alert alert-success" role="alert">{{ Session::get('message') }}</div>
                @endif
                <form action="/skck/update/{{ $service["service_history_id"] }}" method="POST" enctype='multipart/form-data'>
                    @csrf
                    {{ method_field('PUT') }}
                    <table class="table table-bordered datatable">
                        <tbody>
                            <tr>
                                <th>
                                    NIK
                                </th>
                                <td>
                                    <input type="text" class="form-control" name="nik" placeholder="NIK" value="{{ $service["nik"] }}"/>
                                </td>
                            </tr>
                            <tr>
                                <th>
                                    Nama Lengkap
                                </th>
                                <td>
                                    <input type="text" class="form-control" name="nama" placeholder="Nama" value="{{ $service["nama"] }}"/>
                                </td>
                            </tr>
                            <tr>
                                <th>
                                    Alamat
                                </th>
                                <td>
                                    <input type="text" class="form-control" name="alamat" placeholder="Alamat" value="{{ $service["alamat"] }}"/>
                                </td>
                            </tr>
                            <tr>
                                <th>
                                    Domisili
                                </th>
                                <td>
                                    <input type="text" class="form-control" name="domisili" placeholder="Domisili" value="{{ $service["domisili"] }}"/>
                                </td>
                            </tr>
                            <tr>
                                <th>
                                    No. HP
                                </th>
                                <td>
                                    <input type="phone" class="form-control" name="no_hp" placeholder="no HP" value="{{ $service["no_hp"] }}"/>
                                </td>
                            </tr>
                            <tr>
                                <th>
                                    Email
                                </th>
                                <td>
                                    <input type="email" class="form-control" name="email" placeholder="Email" value="{{ $service["email"] }}"/>
                                </td>
                            </tr>
                            <tr>
                                <th>
                                    KTP
                                </th>
                                <td>
                                  <div class="form-group">
                                      <label for="file_ktp"><a href="{{ $service["url_ktp"] }}">Old File</a></label>
                                    <input type="file" class="form-control-file" name="file_ktp" id="file_ktp" accept="image/png, image/jpeg">
                                  </div>
                                </td>
                            </tr>
                            <tr>
                                <th>
                                    Foto dengan KTP
                                </th>
                                <td>
                                  <div class="form-group">
                                        <label for="file_selfie_ktp"><a href="{{ $service["url_selfie"] }}">Old File</a></label>
                                        <input type="file" class="form-control-file" name="file_selfie_ktp" id="file_selfie_ktp" accept="image/png, image/jpeg">
                                  </div>
                                </td>
                            </tr>
                            <tr>
                                <th>
                                    KK
                                </th>
                                <td>
                                  <div class="form-group">
                                    <label for="file_kk"><a href="{{ $service["url_kk"] }}">Old File</a></label>
                                    <input type="file" class="form-control-file" name="file_kk" id="file_kk" accept="image/png, image/jpeg">
                                  </div>
                                </td>
                            </tr>
                            <tr>
                                <th>
                                    Akte Kelahiran
                                </th>
                                <td>
                                  <div class="form-group">
                                    <label for="file_akte"><a href="{{ $service["url_akta_lahir"] }}">Old File</a></label>
                                    <input type="file" class="form-control-file" name="file_akte" id="file_akte" accept="image/png, image/jpeg">
                                  </div>
                                </td>
                            </tr>
                            <tr>
                                <th>
                                    Pass Foto
                                </th>
                                <td>
                                  <div class="form-group">
                                    <label for="file_pass_foto"><a href="{{ $service["url_akta_lahir"] }}">Old File</a></label>
                                    <input type="file" class="form-control-file" name="file_pass_foto" id="file_pass_foto" accept="image/png, image/jpeg">
                                  </div>
                                </td>
                            </tr>
                            <tr>
                                <th>
                                    Surat Keterangan
                                </th>
                                <td>
                                  <div class="form-group">
                                    <label for="file_suket"><a href="{{ $service["url_akta_lahir"] }}">Old File</a></label>
                                    <input type="file" class="form-control-file" name="file_suket" id="file_suket" accept="image/png, image/jpeg">
                                  </div>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                    <button class="btn btn-primary" type="submit">Update</button>
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