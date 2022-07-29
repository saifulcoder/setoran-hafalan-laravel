$(function () {
        //Date range picker
    $("#tanggal").daterangepicker({
        autoclose: true,
        autoApply
        locale: { format: 'YYYY-MM-DD',separator: " to "}
    });
})

$('form').on('submit', function (e) {

    e.preventDefault();
    $('#examples').empty();
//   $("#examples tbody tr").remove();


    $.ajax({
      type: 'post',
      url: location.origin +'/admin/laporan/get',
      data: $('form').serialize(),
      success: function (data) {
      //   alert(data);
      //   DataTables(data);
      generateTable(data);
        // tableGenerator('#examples',data)
        console.log(data);
      }
    });

  });

  function capitalizeFirstLetter(string) {
    return string.charAt(0).toUpperCase() + string.slice(1);
}
function generateTable(data){
    var columns = [];
    console.log(data);
    // data = JSON.parse(datax);
    columnNames = Object.keys(data[0]);
    for (var i in columnNames) {
      columns.push({data: columnNames[i], 
                    title: capitalizeFirstLetter(columnNames[i])});
    }
    $('#examples').DataTable( {
        destroy: true,
        data: data,
        columns: columns,
        buttons: [
            'copyHtml5',
            'excelHtml5',
            'csvHtml5',
            'pdfHtml5'
        ]
    } );
}


    