@extends('dashboard.base')

@section('content')

        <div class="container-fluid">
          <div class="animated fadeIn">
            <div class="row">
              <div class="col-md-12">
                <div class="card">
                    <div class="card-header">
                      <i class="fa fa-align-justify"></i> Pengawalan Jalan: {{ $service["nik"] }}</div>
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
                                <h4>Email:</h4> 
                                <p>{{ $service["email"] }}</p>
                                <h4>Status: </h4>
                                <p>{{ $service["status"]["status_name"] }}</p>
                                <h4>Update By:</h4>
                                <p>{{ $service["update_by"]["name"] ?? "-" }}</p>
                            </div>
                            <div class="col-md-6">
                                <h4>KTP:</h4>
                                <a class="btn btn-sm btn-light" href="{{ $service["url_ktp"] }}" target="_blank">Show File</a>
                                <h4>Foto dengan KTP:</h4>
                                <a class="btn btn-sm btn-light" href="{{ $service["url_selfie"] }}" target="_blank">Show File</a>
                                <h4>KK:</h4>
                                <a class="btn btn-sm btn-light" href="{{ $service["url_suratpermohonan"] }}" target="_blank">Show File</a>
                                <h4>Surat Keterangan:</h4> 
                                <a class="btn btn-sm btn-light" href="{{ $service["url_suket"] }}" target="_blank">Show File</a>
                            </div>
                        </div>
                        <br>
                        <div class="row">
                          @auth
                          @if ($service["status"]["status_id"] == 0)
                          <div class="col-md-1">
                              <form action="{{ route('pengawalan_jalan.process') }}" method="POST">
                                  @csrf
                                  <input type="hidden" name="id" value="{{$service["service_history_id"]}}">
                                  <input type="hidden" name="type" value="approve">
                                  <button class="btn btn-success" type="submit">Approve</button>
                              </form>
                            </div>
                            <div class="col-md-1">
                              <form action="{{ route('pengawalan_jalan.process') }}" method="POST">
                                  @csrf
                                  <input type="hidden" name="id" value="{{$service["service_history_id"]}}">
                                  <input type="hidden" name="type" value="reject">
                                  <button class="btn btn-danger" type="submit">Reject</button>
                              </form>
                            </div>
                            @endif
                            @endauth
                        </div>
                        <br>
                        @auth
                          <a href="{{ route('pengawalan_jalan.index') }}" class="btn btn-block btn-primary">{{ __('Return') }}</a>
                        @endauth
                        @guest
                        <a href="{{ route('home') }}" class="btn btn-block btn-primary">{{ __('Return') }}</a>
                        @endguest
                    </div>
                </div>
              </div>
            </div>
          </div>
        </div>

@endsection


@section('javascript')

@endsection