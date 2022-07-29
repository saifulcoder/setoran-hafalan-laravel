<!-- First, extends to the CRUDBooster Layout -->
@extends('crudbooster::admin_template')
@section('content')
@include('pesan')
  <!-- Your html goes here -->
  <div class='panel panel-default'>
    <div class='panel-heading'>Detail Hafalan</div>
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

        <div class="form-group">
          <label class="control-label col-sm-2">
            Tambah Hafalan
          </label>
          <div class="col-sm-10">
            <a href="{{asset('admin/setoranhafalan')}}" class="btn btn-default"><i class="fa fa-chevron-circle-left"></i> Kembali</a>
          <a href="{{CRUDBooster::mainpath("addayat/$dt->id")}}" class="btn btn-success">
          <i class="" class="btn btn-success"></i>Ayat</a>
          <a href="#" class="btn btn-success">
            <i class="" class="btn btn-success"></i>Surat</a>
          
          </div>
          </div>
       
        <!-- etc .... -->
        
      </form>
    </div>
  </div>
  <table id="example" class='table table-striped table-bordered'>
    <thead>
        <tr>
          <th>Surat</th>
          <th style="width: 5%">Dari Ayat</th>
          <th style="width: 5%">Sampai Ayat Ke</th>
          <th style="width: 5%">Khatam</th>
          <th>Ustads</th>
          <th>Catatan</th>
          <th style="width: 15%">Waktu</th>
          <th style="width: 5%">Action  </th>
         </tr>
    </thead>
    <tbody>
      @foreach($result as $row)
        <tr>
          <td>{{$row->nama}}</td>
          <td>{{$row->ayat_dari}}</td>
          <td>{{$row->ayat_ke}}</td>
          <td>
            @if($row->khatam == 1)
              <i class="fa fa-star fa-2x" style="color:#f39c12"> </i>            
            @else
              <i class="fa fa-play-circle-o fa-2x" style="color: #00c0ef"></i>            
            @endif
          </td>
          <td>{{$row->name}}</td>
          <td>{{$row->catatan}}</td>
          <td>{{\Carbon\Carbon::parse($row->tgl)->diffForHumans()}}</td>
          <td>
            @if($x <> $row->nama)
            <a class='fa fa-trash fa-1x' style='color:red'  href='{{CRUDBooster::mainpath("del/$row->id/$row->id_surat/$dt->id")}}'></a>
            @php
                $x = $row->nama
            @endphp
            @endif
            <!-- To make sure we have read access, wee need to validate the privilege -->
            @if(CRUDBooster::isUpdate() && $button_edit)
            <a class='btn btn-success btn-sm' href='{{CRUDBooster::mainpath("edit/$row->id")}}'>Edit</a>
            @endif
            
            @if(CRUDBooster::isDelete() && $button_edit)
            <a class='btn btn-success btn-sm' href='{{CRUDBooster::mainpath("delete/$row->id")}}'>Delete</a>
            @endif
          </td>
         </tr>
      @endforeach
    </tbody>
  </table>
  
  <!-- ADD A PAGINATION -->
  <p>{!! urldecode(str_replace("/?","?",$result->appends(Request::all())->render())) !!}</p>
@endsection