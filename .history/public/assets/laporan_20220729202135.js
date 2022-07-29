$(function () {
        //Date range picker
        $('#reservation').daterangepicker()
    $("#bulan").datepicker({
        format: "yyyy-mm",
        startView: "months",
        minViewMode: "months",
        autoclose: true
    });
})