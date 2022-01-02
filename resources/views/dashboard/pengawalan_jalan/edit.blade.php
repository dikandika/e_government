@extends('dashboard.base')

@section('content')

<div class="container-fluid">
  <div class="fade-in">
    <div class="row">
      <div class="col-sm-12">
        <div class="card">
          <div class="card-header"><h4>Edit Surat Izin Keramaian</h4></div>
            <div class="card-body">
                @if(Session::has('message'))
                    <div class="alert alert-success" role="alert">{{ Session::get('message') }}</div>
                @endif
                @if ($errors->any())
                    <div class="alert alert-danger">
                        <ul>
                            @foreach ($errors->all() as $error)
                                <li>{{ $error }}</li>
                            @endforeach
                        </ul>
                    </div>
                @endif
                <form action="/pengawalan-jalan/update/{{ $service["service_history_id"] }}" method="POST" enctype='multipart/form-data'>
                    @csrf
                    {{ method_field('PUT') }}
                    <table class="table table-bordered datatable">
                        <tbody>
                            <tr>
                                <th>
                                    NIK
                                </th>
                                <td>
                                    <input type="text" class="form-control" name="nik" placeholder="NIK" value="{{ $service["nik"] }}" required />
                                </td>
                            </tr>
                            <tr>
                                <th>
                                    Nama Lengkap
                                </th>
                                <td>
                                    <input type="text" class="form-control" name="nama" placeholder="Nama" value="{{ $service["nama"] }}" required />
                                </td>
                            </tr>
                            <tr>
                                <th>
                                    Alamat
                                </th>
                                <td>
                                    <input type="text" class="form-control" name="alamat" placeholder="Alamat" value="{{ $service["alamat"] }}" required />
                                </td>
                            </tr>
                            <tr>
                                <th>
                                    Domisili
                                </th>
                                <td>
                                    <input type="text" class="form-control" name="domisili" placeholder="Domisili" value="{{ $service["domisili"] }}" required />
                                </td>
                            </tr>
                            <tr>
                                <th>
                                    No. HP
                                </th>
                                <td>
                                    <input type="phone" class="form-control" name="no_hp" placeholder="no HP" value="{{ $service["no_hp"] }}" required />
                                </td>
                            </tr>
                            <tr>
                                <th>
                                    Email
                                </th>
                                <td>
                                    <input type="email" class="form-control" name="email" placeholder="Email" value="{{ $service["email"] }}" required />
                                </td>
                            </tr>
                            <tr>
                                <th>
                                    KTP
                                </th>
                                <td>
                                  <div class="form-group">
                                      <label for="file_ktp"><a href="{{ $service["url_ktp"] }}">Old File</a></label>
                                    <input type="file" class="form-control-file" name="file_ktp" id="file_ktp" accept="application/pdf" />
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
                                        <input type="file" class="form-control-file" name="file_selfie_ktp" id="file_selfie_ktp" accept="image/jpeg" />
                                  </div>
                                </td>
                            </tr>
                            <tr>
                                <th>
                                    Surat Permohonan
                                </th>
                                <td>
                                  <div class="form-group">
                                    <label for="file_surat_permohonan"><a href="{{ $service["url_suratpermohonan"] }}">Old File</a></label>
                                    <input type="file" class="form-control-file" name="file_surat_permohonan" id="file_surat_permohonan" accept="application/pdf" />
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
                                    <input type="file" class="form-control-file" name="file_suket" id="file_suket" accept="application/pdf" />
                                  </div>
                                </td>
                            </tr>
                            @if (count($statuses) > 0)
                                <tr>
                                    <th>
                                        Status
                                    </th>
                                    <td>
                                    <div class="form-group">
                                        <select class="form-control" id="status" name="status">
                                            @foreach ($statuses as $status)
                                                <option value="{{$status->status_id}}" {{$service["status"]["status_id"] == $status->status_id ? "selected" : ""}}>{{$status->status_name}}</option>
                                            @endforeach
                                        </select>
                                    </div>
                                    </td>
                                </tr>
                            @endif

                            
                        </tbody>
                    </table>
                    <button class="btn btn-primary" type="submit">Update</button>
                    <a class="btn btn-secondary" href="{{ route('pengawalan_jalan.index') }}">Return</a>
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