﻿
$(document).ready(function () {
    $(".step2").hide();
    $(".step3").hide();
    $(".step4").hide();

    $(".btnGuardar").hide();

    $('.complicacionPerinatal').hide();
    $('.descripcionPatologicos').hide();
    $('.descripcionQuirurgico').hide();
    $('.descripcionTraumatico').hide();
    $('.descripcionOtros').hide();
    $('.descripcionAlergia').hide();
    $('.descripcionVacuna').hide();

    $(".step1 .next").on("click", function (e) {
        e.preventDefault();
        $(".progress-bar").addClass("progress-bar-50");
        $(".step1").hide();
        $(".step2").show();
    });

    $('#datepicker').datepicker({
        uiLibrary: 'bootstrap4',
        locale: 'es-es',
        format: 'dd/mm/yyyy'
    });

    $(".estadoPerinatal").on("change", function () {
        if (this.value == "ausentes") {
            $('.complicacionPerinatal').hide();
        } else {
            $('.complicacionPerinatal').show();
        }
    });

    $(".antecedentePatologico").on("change", function () {
        if (this.value == "ausentesPat") {
            $('.descripcionPatologicos').hide();
        } else {
            $('.descripcionPatologicos').show();
        }
    });

    $(".antecedenteQuirurgico").on("change", function () {
        if (this.value == "ausentesQui") {
            $('.descripcionQuirurgico').hide();
        } else {
            $('.descripcionQuirurgico').show();
        }
    });

    $(".antecedenteTraumatico").on("change", function () {
        if (this.value == "ausentesTrau") {
            $('.descripcionTraumatico').hide();
        } else {
            $('.descripcionTraumatico').show();
        }
    });

    $("#otrosCheck").on("change", function () {
        if ($('#otrosCheck').prop('checked')) {
            $('.descripcionOtros').show();
        } else {
            $('.descripcionOtros').hide();
        }
    });

    $(".alergiasExpediente").on("change", function () {
        if (this.value == "ausentesAlergia") {
            $('.descripcionAlergia').hide();
        } else {
            $('.descripcionAlergia').show();
        }
    });

    $(".vacunasExpediente").on("change", function () {
        if (this.value == "esquemaAlDia") {
            $('.descripcionVacuna').hide();
        } else {
            $('.descripcionVacuna').show();
        }
    });

    $(".custom-file-input").on("change", function () {
        var fileName = $(this).val().split("\\").pop();
        $(this).siblings(".custom-file-label").addClass("selected").html(fileName);
    });

});

function siguienteStep1() {
    $(".step1").hide();
    $(".step2").show();

    $(".progress-bar").addClass("progress-bar-50");
}

function anteriorStep2() {
    $(".step2").hide();
    $(".step1").show();

    $(".progress-bar").removeClass("progress-bar-50");
    $(".btnGuardar").hide();
}

function siguienteStep2() {
    $(".step2").hide();
    $(".step3").show();

    $(".progress-bar").addClass("progress-bar-75");
}

function anteriorStep3() {
    $(".step3").hide();
    $(".step2").show();

    $(".progress-bar").removeClass("progress-bar-75");
    $(".btnGuardar").hide();
}

function siguienteStep3() {
    $(".step3").hide();
    $(".step4").show();

    $(".progress-bar").addClass("progress-bar-100");

    $(".btnGuardar").show();
}

function anteriorStep4() {
    $(".step4").hide();
    $(".step3").show();

    $(".progress-bar").removeClass("progress-bar-100");
    $(".btnGuardar").hide();
}

