/**
 * Created by wagner on 06/04/16.
 */
$(function(){
    // equivalente ao load de nossa página

    $("#modal01").modal({backdrop:false, keyboard:false});

    $("#modal01").modal("showh");

    setTimeout(function(){
        $("#modal01").modal("hide");
    }, 10000);

});