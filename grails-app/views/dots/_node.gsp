<ul>
<g:if test="${raiz.filhos.filho}">
                     <g:each  in ="${raiz.filhos.filho}" >
                        <li>
                            <g:link absolute="true" controller="dots" action="dotsf" id="${it.id}"  params="[evento:it.evento]" >${it.nomeDot}</g:link>


                          <p><g:formatDate  format="dd-MM-yyyy HH:mm" date="${it.dataEntrega}"/></p>
                           <div class="divmapa">
                            <g:if test="${it.imagem}">
                                <img style="border-radius: 20px" src="/dots/imagemDots/${it.id}" class="text-center img-responsive mapimagem " />
                            </g:if><g:else>


                            <img src="${resource(dir:"images",file: "dotnome.png")}" class="text-center img-responsive mapimagem "  >
                        </g:else>
                         </div>


                                <g:render template="/dots/node" model="${[raiz : it]}"></g:render>




                        </li>
                     </g:each>
</g:if>
                 </ul>
