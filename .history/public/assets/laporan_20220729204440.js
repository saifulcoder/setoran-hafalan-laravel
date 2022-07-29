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
      url: location.origin +'/admin/laporan/get',
      data: $('form').serialize(),
      success: function (data) {
      //   alert(data);
      //   DataTables(data);

        // tableGenerator('#examples',data)
        console.log(data);
      }
    });

  });

    getData(function( data ) {
      var columns = [];
      data = JSON.parse(data);
      columnNames = Object.keys(data.data[0]);
      for (var i in columnNames) {
        columns.push({data: columnNames[i], 
                      title: capitalizeFirstLetter(columnNames[i])});
      }
      $('#example').DataTable( {
          data: data.data,
          columns: columns
      } );
    });
    