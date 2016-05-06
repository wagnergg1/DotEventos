
<g:each   in ="${evento}">

   <div class="text-center" >
       <h1 class="text-primary">${it.nome} </h1>
       <h4><g:formatDate format="dd-MM-yyyy HH:mm" date="${it.data}"/></h4>
   </div>

</g:each>