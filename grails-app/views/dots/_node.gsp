
        <ul>
        <g:each  in ="${raiz.filhos.filho}" >

          <li>
              ${it.nomeDot}
              ${it.pai.nomeDot}
             <g:render template="/dots/node" model="${[raiz : it]}"></g:render>


          </li>

        </g:each></ul>
