$(function () {
        //Date range picker
    $("#tanggal").daterangepicker({
        autoclose: true,
        locale: { format: 'YYYY-MM-DD',separator: " to "}
    });
})