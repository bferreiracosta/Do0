var assert = require('assert');
 
describe('Alguns testes de exemplo', function(){

    it('2 + 2 deve ser igual a 4', function(){
        assert.equal(4, 2 + 2);
    });

    it('2 * 2 deve ser igual a 8 (nota 0 em matemática)', function(){
        assert.equal(8, 2 * 2);
    });
    
    //Login
    it('O login esperado deve ser um usuário', function(){
        assert.equal('teste', 'teste');
    });

    it('O login esperado deve ser um usuário não null', function(retorno){
       
        

        return1 = function(dados,retorno){

        var con = db();
        con.query("call inserirAulas(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?) ", ['teste', 'fdafadf', 'dados.questionName1', 'dados.alternativedesc1', 'dados.flagcorrect1', 'dados.alternativedesc2', 'dados.flagcorrect2', 'dados.alternativedesc3', 'dados.flagcorrect3', 'dados.alternativedesc4', 'dados.flagcorrect4', 'dados.questionName2', 'dados.alternativedesc5', 'dados.flagcorrect5', 'dados.alternativedesc6', 'dados.flagcorrect6', 'dados.alternativedesc7', 'dados.flagcorrect7', 'dados.alternativedesc8', 'dados.flagcorrect8'] ,retorno);
        
      };
      console.log(con)
      assert.equal('', return1);
      
  
    });
    

});