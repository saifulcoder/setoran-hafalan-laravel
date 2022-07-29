$(function () {
        //Date range picker
    $("#bulan").daterangepicker({
        
        separator: " to ",
        autoclose: true
        locale: { format: 'YYYY-MM-DD',}
    });
})