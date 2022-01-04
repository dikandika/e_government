@extends('dashboard.base')

@section('content')

<div class="container-fluid">
  <div class="fade-in">
    <div class="row">
      <div class="col-sm-12">
        <div class="card">
          <div class="card-header"><h4>Buat Surat Pengawalan Jalan</h4></div>
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
                <form action="{{ route('pengawalan_jalan.store') }}" method="POST" enctype='multipart/form-data'>
                    @csrf
                    <table class="table table-bordered datatable">
                        <tbody>
                            <tr>
                                <th>
                                    NIK
                                </th>
                                <td>
                                    <input type="text" class="form-control" name="nik" placeholder="NIK" value="{{ old('nik') ?? "" }}" required/>
                                </td>
                            </tr>
                            <tr>
                                <th>
                                    Nama Lengkap
                                </th>
                                <td>
                                    <input type="text" class="form-control" name="nama" placeholder="Nama" value="{{ old('nama') ?? "" }}" required/>
                                </td>
                            </tr>
                            <tr>
                                <th>
                                    Alamat
                                </th>
                                <td>
                                    <input type="text" class="form-control" name="alamat" placeholder="Alamat" value="{{ old('alamat') ?? "" }}" required/>
                                </td>
                            </tr>
                            <tr>
                                <th>
                                    Domisili
                                </th>
                                <td>
                                    <input type="text" class="form-control" name="domisili" placeholder="Domisili" value="{{ old('domisili') ?? "" }}" required/>
                                </td>
                            </tr>
                            <tr>
                                <th>
                                    No. HP
                                </th>
                                <td>
                                    <input type="phone" class="form-control" name="no_hp" placeholder="no HP" value="{{ old('no_hp') ?? "" }}" required/>
                                </td>
                            </tr>
                            <tr>
                                <th>
                                    Email
                                </th>
                                <td>
                                    <input type="email" class="form-control" name="email" placeholder="Email" value="{{ old('email') ?? "" }}" required/>
                                </td>
                            </tr>
                            <tr>
                                <th>
                                    KTP
                                </th>
                                <td>
                                  <div class="form-group">
                                    <input type="file" class="form-control-file" name="file_ktp" accept="application/pdf" required/>
                                  </div>
                                </td>
                            </tr>
                            <tr>
                                <th>
                                    Foto dengan KTP
                                </th>
                                <td>
                                  <div class="form-group">
                                    <input type="file" class="form-control-file" name="file_selfie_ktp" accept="image/jpeg" required/>
                                  </div>
                                </td>
                            </tr>
                            <tr>
                                <th>
                                    Surat Permohonan
                                </th>
                                <td>
                                  <div class="form-group">
                                    <input type="file" class="form-control-file" name="file_surat_permohonan" accept="application/pdf" required/>
                                  </div>
                                </td>
                            </tr>
                            <tr>
                                <th>
                                    Surat Keterangan
                                </th>
                                <td>
                                  <div class="form-group">
                                    <input type="file" class="form-control-file" name="file_suket" accept="application/pdf" required/>
                                  </div>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                    <button class="btn btn-primary" type="submit">Save</button>
                    @auth
                        <a class="btn btn-secondary" href="{{ route('pengawalan_jalan.index') }}">Return</a>
                    @endauth

                    @guest
                        <a class="btn btn-secondary" href="{{ route('pengawalan_jalan.home') }}">Return</a>
                    @endguest
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