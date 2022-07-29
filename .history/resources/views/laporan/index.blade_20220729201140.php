<!-- First, extends to the CRUDBooster Layout -->
@extends('crudbooster::admin_template')
@section('content')
@include('pesan')

<!-- Your html goes here -->
<div class='panel panel-default'>
  <form class="form-horizontal">
    <div class='panel-heading'>Laporan Bulanan PerKelas</div>
    <div class='panel-body'>
      <div class='form-group' id='form-group-nama' style="">
        <label class='control-label col-sm-2'>Bulan</label>
        <div class="col-sm-10">
          <input type="text" class="form-control" name="bulan" id="bulan" autocomplete="off" required>

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
      <button id="exportBtn1">Export To Excel</button><br><br>
      <table id="examples" class="table table-hover table-striped table-bordered" width="100%">
        <thead>
          <tr>
            <th rowspan="2">No</th>
            <th rowspan="2" style='width:200px;'>Nama Mu'allim/ Muta'allim</th>
            <th colspan="12" style='text-align: center;'>Hari Efektif</th>
            <th colspan="12" style='text-align: center;'>Kehadiran</th>
            <th colspan="2" style='text-align: center;'>% Hadir</th>
            <th colspan="2" style='text-align: center;'>Jumlah Tdk Hadir</th>
            <th colspan="2" style='text-align: center;'>% Tdk Hadir</th>
            <th colspan="18" style='text-align: center;'>Keterangan</th>
            <th colspan="11" style='text-align: center;'>Pencapaian</th>
          </tr>
          <tr>
            <th class="vertical-header"><span>Tasmi_1</span></th>
            <th class="vertical-header"><span>Tasmi_2</span></th>
            <th class="vertical-header"><span>Tasmi_3</span></th>
            <th class="vertical-header"><span>Tasmi_4</span></th>
            <th class="vertical-header"><span>Tasmi_5</span></th>
            <th class="vertical-header"><span>Tasmi</span></th>
            <th class="vertical-header"><span>murojaah_1</span></th>
            <th class="vertical-header"><span>murojaah_2</span></th>
            <th class="vertical-header"><span>murojaah_3</span></th>
            <th class="vertical-header"><span>murojaah_4</span></th>
            <th class="vertical-header"><span>murojaah_5</span></th>
            <th class="vertical-header"><span>murojaah</span></th>
            <th class="vertical-header"><span>Tasmi_1</span></th>
            <th class="vertical-header"><span>Tasmi_2</span></th>
            <th class="vertical-header"><span>Tasmi_3</span></th>
            <th class="vertical-header"><span>Tasmi_4</span></th>
            <th class="vertical-header"><span>Tasmi_5</span></th>
            <th class="vertical-header"><span>Tasmi</span></th>
            <th class="vertical-header"><span>murojaah_1</span></th>
            <th class="vertical-header"><span>murojaah_2</span></th>
            <th class="vertical-header"><span>murojaah_3</span></th>
            <th class="vertical-header"><span>murojaah_4</span></th>
            <th class="vertical-header"><span>murojaah_5</span></th>
            <th class="vertical-header"><span>murojaah</span></th>
            <th class="vertical-header"><span>Tasmi</span></th>
            <th class="vertical-header"><span>murojaah</span></th>
            <th class="vertical-header"><span>Tasmi</span></th>
            <th class="vertical-header"><span>murojaah</span></th>
            <th class="vertical-header"><span>Tasmi</span></th>
            <th class="vertical-header"><span>murojaah</span></th>
            <th class="vertical-header"><span>Alpha_1</span></th>
            <th class="vertical-header"><span>Alpha_2</span></th>
            <th class="vertical-header"><span>Alpha_3</span></th>
            <th class="vertical-header"><span>Alpha_4</span></th>
            <th class="vertical-header"><span>Alpha_5</span></th>
            <th class="vertical-header"><span>Alpha</span></th>
            <th class="vertical-header"><span>Ijin_1</span></th>
            <th class="vertical-header"><span>Ijin_2</span></th>
            <th class="vertical-header"><span>Ijin_3</span></th>
            <th class="vertical-header"><span>Ijin_4</span></th>
            <th class="vertical-header"><span>Ijin_5</span></th>
            <th class="vertical-header"><span>Ijin</span></th>
            <th class="vertical-header"><span>Sakit_1</span></th>
            <th class="vertical-header"><span>Sakit_2</span></th>
            <th class="vertical-header"><span>Sakit_3</span></th>
            <th class="vertical-header"><span>Sakit_4</span></th>
            <th class="vertical-header"><span>Sakit_5</span></th>
            <th class="vertical-header"><span>Sakit</span></th>
            <th class="vertical-header"><span>Juz_1</span></th>
            <th class="vertical-header"><span>Juz_2</span></th>
            <th class="vertical-header"><span>Juz_3</span></th>
            <th class="vertical-header"><span>Juz_4</span></th>
            <th class="vertical-header"><span>Juz_5</span></th>
            <th class="vertical-header"><span>Halaman_1</span></th>
            <th class="vertical-header"><span>Halaman_2</span></th>
            <th class="vertical-header"><span>Halaman_3</span></th>
            <th class="vertical-header"><span>Halaman_4</span></th>
            <th class="vertical-header"><span>Halaman_5</span></th>
            <th class="vertical-header"><span>Jumlah Halaman</span></th>
          </tr>
        </thead>
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