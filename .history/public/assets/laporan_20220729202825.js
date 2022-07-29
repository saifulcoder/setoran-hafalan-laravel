$(function () {
        //Date range picker
    $("#tanggal").daterangepicker({
        autoclose: true,
        locale: { format: 'YYYY-MM-DD',separator: " to "}
    });
})

$('form').on('submit', function (e) {

    e.preventDefault();
  //   $('#main').empty();
  $("#examples tbody tr").remove();


    $.ajax({
      type: 'post',
      url: location.origin +'/admin/admin/laporan/get',
      data: $('form').serialize(),
      success: function (data) {
      //   alert(data);
      //   DataTables(data);

        tableGenerator('#examples',data)
      //   console.log(data);
      }
    });

  });