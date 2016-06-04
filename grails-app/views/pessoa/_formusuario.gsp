

            <div class="Col-xs-10 col-lg-offset-1" >
                           <g:formRemote id="frmPessoa" name="frmPessoa"  url="[controller: 'pessoa', action: 'salvar']" onSuccess="retornoSalvarPessoa(data)" >


                               <p/><p/>

                            <div class="form-group">
                                <label for="nomeUsuario">Nome</label>
                                <input type="text" class="form-control" id="nomeUsuario" placeholder="Nome" name="nome" value="" required="true" autocomplete="off"/>
                            </div>


                            <div class="form-group">
                                <label for="emailUsuario">Email</label>
                                <input type="email" class="form-control" id="emailUsuario" placeholder="Email" name="email" value="" autocomplete="off"/>
                            </div>



                            <div class="form-group">
                                <label class="radio-inline">
                                    <input type="radio" name="tipodepessoa" id="inlineRadio1" value="Colaborador" checked="checked"/> Colaborador
                                </label>
                                <label class="radio-inline">
                                    <input type="radio" name="tipodepessoa" id="inlineRadio2" value="Organizador"  /> Organizador
                                </label>
                             </div>
                               <hr/>
                                      <div class="form-group">
                                   <label for="exampleInputPassword1">Password</label>
                                   <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password" name="senha" required="true" value="" autocomplete="off"/>
                               </div>
                               <input type="hidden" name="id" value=""/>
                               <div class="text-right">
                               <button type="submit" class ="btn btn-sm right btn-primary" >Salvar</button>
                               </div>
                               <div id="resposta" ></div>
                           </g:formRemote>
              </div>

