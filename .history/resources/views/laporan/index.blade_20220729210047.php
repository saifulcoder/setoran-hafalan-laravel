<!-- First, extends to the CRUDBooster Layout -->
@extends('crudbooster::admin_template')
@section('content')
@include('pesan')

<!-- Your html goes here -->
<div class='panel panel-default'>
  <form class="form-horizontal">
    <div class='panel-heading'>{{ $page_title }}</div>
    <div class='panel-body'>
      <div class='form-group' id='form-group-nama' style="">
        <label class='control-label col-sm-2'>Tanggal</label>
        <div class="col-sm-10">
          <input type="text" class="form-control" name="tanggal" id="tanggal" autocomplete="off" required>

        </div>
      </div>

      <div class="form-group">
        <label class="control-label col-sm-2"></label>
        <div class="col-sm-10">
          {{-- <a href="{{asset('admin/mutabaah/kelas/')}}/{{ $idx }}" class="btn btn-default"><i
            class="fa fa-chevron-circle-left"></i> Kembali</a> --}}

          <input type="submit" class="btn btn-success" name="submit" value="Submit" />
        </div>
      </div>
      <!-- etc .... -->

  </form>

</div>
</div>

<!-- BAR CHART -->
<div class="box box-success">
  <div class="box-header with-border">
    <h3 class="box-title">Bar Chart Kehadiran Santri</h3>

    <div class="box-tools">
      <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
      </button>
      <button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
    </div>
  </div>
  <div class="box-body">
    <div id="chart" class="table-responsive">
      <table id="examples" class="table table-hover table-striped table-bordered" width="100%">
      </table>
    </div>
  </div>
  <!-- /.box-body -->
</div>
<!-- /.box -->


</div>
</div>
<!-- /.col (RIGHT) -->
</div>
<!-- /.row -->

<!-- ADD A PAGINATION -->
{{-- <p>{!! urldecode(str_replace("/?","?",$result->appends(Request::all())->render())) !!}</p> --}}
@endsection