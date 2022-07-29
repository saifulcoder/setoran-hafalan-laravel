$(function () {
        //Date range picker
        $('#reservation').daterangepicker()
    $("#bulan").daterangepicker({
        format: "yyyy-mm",
        startView: "months",
        minViewMode: "months",
        autoclose: true
    });
})