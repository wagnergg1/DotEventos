

            <div class="Col-xs-10 col-lg-offset-1" >
                           <g:formRemote name="frmPessoa" url="[controller: 'pessoa', action: 'salvar']" update="resposta">

                               <hr/>
                                    <div id="resposta"></div>
                            <div class="form-group">
                                <label for="nomeUsuario">Nome</label>
                                <input type="text" class="form-control" id="nomeUsuario" placeholder="Nome" name="nome" value="" autocomplete="off"/>
                            </div>


                            <div class="form-group">
                                <label for="emailUsuario">Email</label>
                                <input type="email" class="form-control" id="emailUsuario" placeholder="Email" name="email" value="" autocomplete="off"/>
                            </div>



                            <div class="form-group">
                                <label class="radio-inline">
                                    <input type="radio" name="tipodepessoa" id="inlineRadio1" value="Colaborador"  class="active"/> Colaborador
                                </label>
                                <label class="radio-inline">
                                    <input type="radio" name="tipodepessoa" id="inlineRadio2" value="Organizador"  /> Organizador
                                </label>
                             </div>
                               <hr/>
                                      <div class="form-group">
                                   <label for="exampleInputPassword1">Password</label>
                                   <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password" name="senha" value="" autocomplete="off"/>
                               </div>
                               <input type="hidden" name="id" value=""/>
                               <imput type="submit" class ="btn btn-sm right btn-success">Salvar</imput>
                           </g:formRemote>
                <div id="divmensagem bottom-text"></div>
            </div>
