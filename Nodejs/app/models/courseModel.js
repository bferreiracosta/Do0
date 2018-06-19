var db = require('../../config/database');

module.exports = function(){

    this.all = function(retorno){
    var con = db();
    return con.query('select * from lesson',retorno);
    };
    
    this.find = function(lessonName,retorno){
    var con = db();
    return con.query('select l.idlesson, l.lessonName, q.idquestion, q.questionName, a.idalternative ,a.alternativedesc, a.flagcorrect from lesson l inner join question q on l.idlesson = q.idlesson inner join alternative a on q.idquestion = a.idquestion where l.lessonName = "'+lessonName+'"',retorno);
    };

    this.delete = function(lessonName,retorno){
        var con = db();
      
        con.query('select idlesson from lesson where lessonName = "'+lessonName+'"',function (error, results, fields) {
            if (error) throw error;
            var lessonid = results[0].idlesson;
          
        
        console.log(lessonid);
        
        con.query('select idquestion from question where idlesson = "'+lessonid+'" order by idquestion desc limit 1', function (error, results, fields) {
            if (error) throw error;
            var questionid1 = results[0].idquestion;
         

        console.log(questionid1);
        

        con.query('select idquestion from question where idlesson = "'+lessonid+'" order by idquestion limit 1', function (error, results, fields) {
            if (error) throw error;
            var questionid2 = results[0].idquestion;
          
        console.log(questionid2);
        

        return con.query('call deleteLesson("'+lessonid+'", "'+questionid1+'", "'+questionid2+'") ',retorno);
                 });
             });

        });
    };

    this.save = function(dados,retorno){

    var con = db();
    console.log(dados.urlvideo);
    return con.query("call inserirAulas(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?) ", [dados.lessonName, dados.urlvideo, dados.questionName1, dados.alternativedesc1, dados.flagcorrect1, dados.alternativedesc2, dados.flagcorrect2, dados.alternativedesc3, dados.flagcorrect3, dados.alternativedesc4, dados.flagcorrect4, dados.questionName2, dados.alternativedesc5, dados.flagcorrect5, dados.alternativedesc6, dados.flagcorrect6, dados.alternativedesc7, dados.flagcorrect7, dados.alternativedesc8, dados.flagcorrect8] ,retorno);
    
    };

    this.answer = function(dados,retorno){

        var con = db();
        console.log(dados);
        return con.query('insert into userAnswer (firstQuestionAnswer, secondQuestionAnswer, idUser) values("'+dados.firstQuestionAnswer+'","'+dados.secondQuestionAnswer+'","'+dados.idUser+'")',retorno);
        
        };

    this.getbyurl = function(lessonName, retorno){
        var con = db();
        console.log(lessonName)
        return con.query('call getAulaVideo("'+lessonName+'") ',retorno);
        console.log(retorno)
        
    }
        

    this.update = function(dados,retorno){

        var con = db();
        
        return con.query("call updatelesson(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?) ", [dados.idlesson, dados.lessonName,dados.idquestion1, dados.questionName1, dados.idalternative1,dados.alternativedesc1, dados.flagcorrect1, dados.idalternative2, dados.alternativedesc2, dados.flagcorrect2,  dados.idalternative3,dados.alternativedesc3, dados.flagcorrect3, dados.idalternative4, dados.alternativedesc4, dados.flagcorrect4, dados.idquestion2, dados.questionName2, dados.idalternative5, dados.alternativedesc5, dados.flagcorrect5,  dados.idalternative6,dados.alternativedesc6, dados.flagcorrect6, dados.idalternative7 , dados.alternativedesc7, dados.flagcorrect7,  dados.idalternative8,dados.alternativedesc8, dados.flagcorrect8] ,retorno);
        
        };
        
    

    return this;
};


