<div class="row">

    <div class="col-xs-6">        <h4 class="text-primary">Colaboradores</h4>
    <g:each var = "lp" in="${pessoas}">
    <p> ${lp?.pessoa.nome}</p>

</g:each>
</div>


</div>