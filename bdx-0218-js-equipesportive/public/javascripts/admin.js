
/* Bouton recherche de fichier local */

document.getElementById('get_file').onclick = function() {
    document.getElementById('my_file').click();
};

$('input[type=file]').change(function (e) {
    $('#customfileupload').html($(this).val());
});


/* URL UPLOAD VIDEO */
