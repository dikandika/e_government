@extends('dashboard.base')

@section('content')

<div class="container-fluid">
  <div class="fade-in">
    <div class="row">
      <div class="col-sm-12">
        <div class="card">
          <div class="card-header"><h4>Sudah pernah membuat Pengawalan Jalan?</h4></div>
            <div class="card-body">
                @if(Session::has('message'))
                    <div class="alert {{Session::get('alert')}}" role="alert">{{ Session::get('message') }}</div>
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
                
                <h5></h5>
                <form action="{{ route('pengawalan_jalan.search') }}" method="POST" enctype='multipart/form-data'>
                    @csrf
                    <h4>Cari disini</h4> 
                    <input type="text" class="form-control" name="nik" placeholder="Masukan NIK Anda..." value="{{ old('nik') ?? "" }}" required/>
                    <br>
                    <button class="btn btn-primary" type="submit">Cari</button>
                </form>

                <br>
                <br>
                <h4>Atau membuat baru dengan klik tombol dibawah ini...</h4>
                <a class="btn btn-info" href="{{ route('pengawalan_jalan.guest.create') }}">Buat Pengajuan Pengawalan Jalan Baru</a>
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