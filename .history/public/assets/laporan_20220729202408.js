$(function () {
        //Date range picker
    $("#bulan").daterangepicker({
        
        separator: " to ",
        autoclose: true
        locale: { format: 'MM/DD/YYYY hh:mm A' }
    });
})