$(document).ready( function () {
    var table = $('#libroTable').DataTable({
        "sAjaxSource": '/books',
        "sAjaxDataProp": "",
        "order": [[ 0, "asc" ]],
        "aoColumns": [
            { "mData": "idCodBarra"},
            { "mData": "isbnactLib" },
            { "mData": "isbnorigLib" },
            { "mData": "tituloLib" },
            { "mData": "numpagLib" },
            { "mData": "añopubliLib" },
            { "mData": "edicionLib" },
            { "mData": "idEditorial" },
            {"defaultContent": "<button data-target='#miModal' data-toggle='modal' type='button' class='editar btn btn-warning'>Editar</button><button data-target='#miModal' type='button' class='btn btn-danger'>Eliminar</button>"}
        ]
    })
        obtenerDatoEditar("#libroTable tbody", table);
}


);
var obtenerDatoEditar = function (tbody, table){
    $(tbody).on("click", "button.editar", function(){
    var mData = table.row( $(this).parents("tr")).data();
    console.log(mData);
    var cod = $("#cod").val(mData.idCodBarra),
        isbm = $("#isbm").val(mData.isbnactLib),
        isbmo = $("#isbmo").val(mData.isbnorigLib),
        titleLibro = $("#titleLibro").val(mData.tituloLib),
        nPag = $("#nPag").val(mData.numpagLib),
        aPub = $("#aPub").val(mData.añopubliLib),
        edic = $("#edic").val(mData.edicionLib),
        edit = $("#edit").val(mData.idEditorial)
    });
};
