@extends('template_backend.home')
@section('sub-judul','Tambah Post')
@section('content')

  @if(count($errors)>0)
    @foreach ($errors->all() as $error)
        <div class="alert alert-danger" role="alert">
          {{ $error }}
        </div>
    @endforeach
  @endif

  @if(Session::has('success'))
    <div class="alert alert-success" role="alert">
      {{ Session('success') }}
    </div>
  @endif

  <form action="{{ route('post.store') }}" method="POST" enctype="multipart/form-data">
    @csrf
    <div class="form-group">
      <label for="">Judul</label>
      <input type="text" class="form-control" name="judul">
    </div>

    <div class="form-group">
      <label for="">Kategori</label>
      <select name="category_id" class="form-control">
        <option value="">Pilih Kategori</option>
        @foreach ($category as $item)
          <option value="{{ $item->id }}">{{ $item->name }}</option>
        @endforeach
      </select>
    </div>

    <div class="form-group">
      <label>Pilih Tags</label>
      <select class="form-control select2" id="" multiple="" style="width: 100%;" name="tags[]">
        @foreach ($tags as $tag)
          <option value="{{ $tag->id }}">{{ $tag->name }}</option>
        @endforeach
      </select>
    </div>

    <div class="form-group">
      <label for="">Konten</label>
      <textarea name="content" class="form-control"></textarea>
    </div>

    <div class="form-group">
      <label for="">Thumbnail</label>
      <input type="file" class="form-control" name="gambar">
    </div>

    <div class="form-group">
      <button type="submit" class="btn btn-primary btn-block">Simpan Kategori</button>
    </div>
  </form>
@endsection