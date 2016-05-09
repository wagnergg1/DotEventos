<div class="tamanho">
<g:each var="l" in="${meventos}">
    <div>
    <a href="/evento/index/${l?.id}" >
        <span class="glyphicon glyphicon-tags"> ${l?.nome}</span>
    </a>
    </div>
</g:each></div>