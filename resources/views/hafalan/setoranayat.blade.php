<!-- First, extends to the CRUDBooster Layout -->
@extends('crudbooster::admin_template')
@section('content')
@include('pesan')
  <!-- Your html goes here -->
  <div class='panel panel-default'>
    <div class='panel-heading'>Add Form</div>
    <div class='panel-body'>
      <div class='form-group' id='form-group-nama' style="">
        <label class='control-label col-sm-2'>Nama</label>
        <div class="col-sm-10">
            <p >{{$dt->nama}} </p>
        </div>
      </div>  
      <div class='form-group' id='form-group-kelas' style="">
        <label class='control-label col-sm-2'>Kelas</label>
        <div class="col-sm-10">
            <p >{{$dt->kelas}} </p>
        </div>
      </div>  
      <div class='form-group' id='form-group-ruang' style="">
        <label class='control-label col-sm-2'>Ruang</label>
        <div class="col-sm-10">
            <p >{{$dt->ruang}} </p>
        </div>
      </div>  
      <form method='post' action='{{CRUDBooster::mainpath('saveayat')}}'>
        @csrf
        <div class='form-group header-group-0 ' id='form-group-surat' style="">
            <label class='control-label col-sm-2'>Surat<span class='text-danger' title='This field is required'>*</span></label>
            <div class="col-sm-10">
                <select style='width:100%' class='form-control' id="surat" name="surat" required>
                    <option value=''>** Please select a Nama Surat</option>
                    @foreach($surat as $sr)
                    <option  value='{{$sr->id}}'> {{$sr->id}} - {{$sr->nama}} </option>
                    @endforeach 
                </select>
                <div class="text-danger">
                </div><!--end-text-danger-->
                <p class='help-block'></p>
            </div>
        </div>
        <div class='form-group header-group-0 ' id='form-group-ayat' style="">
            <label class='control-label col-sm-2'>Ayat<span class='text-danger' title='This field is required'>*</span></label>
            <div class="col-sm-10">
                <select style='width:100%' class='form-control' id="ayat" name="ayat" required>
                    <option value=''></option>                    
                </select>
                <div class="text-danger">
                </div><!--end-text-danger-->
                <p class='help-block'></p>
            </div>
        </div>
        <div class='form-group header-group-0 ' id='form-group-catatan' style="">
            <label class='control-label col-sm-2'>Catatan<span class='text-danger' title='This field is required'>*</span></label>
            <div class="col-sm-10">
                <input style='width:100%' class='form-control' id='catatan' type="textarea" name="catatan">
                <div class="text-danger">
                </div><!--end-text-danger-->
                <p class='help-block'></p>
            </div>
        </div>
        <input type="text" id="hafalan" name="hafalan" hidden>
        <input type="text" id="jmlayat" name="jmlayat" hidden>
        <input type="text" id="id_santri" name="id_santri" hidden>
      
    </div>
    <div class='panel-footer'>
      <a href="{{asset('admin/setoranhafalan/detail')}}/{{$dt->id}}" class="btn btn-default"><i class="fa fa-chevron-circle-left"></i> Kembali</a>
      <input type='submit' class='btn btn-primary' value='Save changes'/>
    </div>
  </div>
</form>

@endsection

