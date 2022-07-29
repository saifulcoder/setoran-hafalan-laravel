$(function () {
        //Date range picker
    $("#bulan").daterangepicker({
        format: 'YYYY-MM-DD',
        separator: " to ",
        autoclose: true
        locale: { format: 'MM/DD/YYYY hh:mm A' }
    });
})