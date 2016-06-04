package doteventos
import grails.plugin.springsecurity.annotation.Secured

class AjudaController{

    @Secured(value = ['ROLE_ADM', 'ROLE_USER'])

    def indexcolb(){
    render (view:"indexcolb")}
    @Secured(value = ['ROLE_ADM', 'ROLE_USER'])

    def indexcolb1(){
        render (view:"indexcolb1")}
    @Secured(value = ['ROLE_ADM', 'ROLE_USER'])

    def indexcolb2(){
        render (view:"indexcolb2")}

    @Secured(value = ['ROLE_ADM', 'ROLE_USER'])

    def indexcolb3(){
        render (view:"indexcolb3")}

    @Secured(value = ['ROLE_ADM', 'ROLE_USER'])
    def indexcolb4(){
        render (view:"indexcolb4")}

    @Secured(value = ['ROLE_ADM', 'ROLE_USER'])
    def indexcolb5(){
        render (view:"indexcolb5")}
//----------------------------------------------
    @Secured(value = ['ROLE_ADM'])
    def indexadm(){
        render (view:"indexadm")}
    @Secured(value = ['ROLE_ADM'])
    def indexadm1(){
        render (view:"indexadm1")}
    @Secured(value = ['ROLE_ADM'])
    def indexadm2(){
        render (view:"indexadm2")}
    @Secured(value = ['ROLE_ADM'])
    def indexadm3(){
        render (view:"indexadm3")}
    @Secured(value = ['ROLE_ADM'])
    def indexadm4(){
        render (view:"indexadm4")}
    @Secured(value = ['ROLE_ADM'])
    def indexadm5(){
        render (view:"indexadm5")}
    @Secured(value = ['ROLE_ADM'])
    def indexadm6(){
        render (view:"indexadm6")}


    @Secured(value = ['ROLE_ADM'])
    def indexadm7(){
        render (view:"indexadm7")}
    @Secured(value = ['ROLE_ADM'])
    def indexadm8(){
        render (view:"indexadm8")}
    @Secured(value = ['ROLE_ADM'])
    def indexadm9(){
        render (view:"indexadm9")}
    @Secured(value = ['ROLE_ADM'])
    def indexadm10(){
        render (view:"indexadm10")}



}
// /ajuda/indexadm
//  onClick="history.go(-)"