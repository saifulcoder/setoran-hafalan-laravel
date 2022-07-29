$(function () {
        //Date range picker
    $("#bulan").daterangepicker({
        
        autoclose: true,
        locale: { format: 'YYYY-MM-DD',separator: " to "}
    });
})