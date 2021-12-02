@extends('dashboard.base')

@section('content')

        <div class="container-fluid">
          <div class="animated fadeIn">
            <div class="row">
              <div class="col-md-12">
                <div class="card">
                    <div class="card-header">
                      <i class="fa fa-align-justify"></i> SKCK: {{ $service["nik"] }}</div>
                    <div class="card-body">
                        <div class="row">
                            <div class="col-md-6">
                                <h4>NIK:</h4>
                                <p> {{ $service["nik"] }}</p>
                                <h4>Nama:</h4>
                                <p> {{ $service["nama"] }}</p>
                                <h4>Alamat:</h4>
                                <p> {{ $service["alamat"] }}</p>
                                <h4>Domisili:</h4> 
                                <p>{{ $service["domisili"] }}</p>
                                <h4>No Hp:</h4> 
                                <p>{{ $service["no_hp"] }}</p>
                                <h4>Status: </h4>
                                <p>{{ $service["status"]["status_name"] }}</p>
                                <h4>Update By:</h4>
                                <p>{{ $service["update_by"]["name"] }}</p>
                            </div>
                            <div class="col-md-6">
                                <h4>KTP:</h4>
                                <a class="btn btn-sm btn-light" href="{{ $service["url_ktp"] }}">Show File</a>
                                <h4>Foto dengan KTP:</h4>
                                <a class="btn btn-sm btn-light" href="{{ $service["url_selfie"] }}">Show File</a>
                                <h4>KK:</h4>
                                <a class="btn btn-sm btn-light" href="{{ $service["url_kk"] }}">Show File</a>
                                <h4>Akte Kelahiran:</h4> 
                                <a class="btn btn-sm btn-light" href="{{ $service["url_akta_lahir"] }}">Show File</a>
                                <h4>Pass Foto:</h4> 
                                <a class="btn btn-sm btn-light" href="{{ $service["url_pass_foto"] }}">Show File</a>
                                <h4>Surat Keterangan:</h4> 
                                <a class="btn btn-sm btn-light" href="{{ $service["url_suket"] }}">Show File</a>
                            </div>
                        </div>
                        <br>
                        
                        <a href="{{ route('skck.index') }}" class="btn btn-block btn-primary">{{ __('Return') }}</a>
                    </div>
                </div>
              </div>
            </div>
          </div>
        </div>

@endsection


@section('javascript')

@endsection