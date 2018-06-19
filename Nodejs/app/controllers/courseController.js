var courseModel = require('../models/courseModel')();


module.exports.getall = function(req,res){
  courseModel.all(function(erro,resultado){
    res.render('site/edicao.curso.ejs', {curso:resultado});
  });
};

module.exports.answer = function(req,res){
  var dados = req.body;
  courseModel.answer(dados,function(erro,resultado){
      if(!erro){
        res.redirect('/courses');
      }else{
        console.log(erro);
      }
    })
};
module.exports.getall2 = function(req,res){
  courseModel.all(function(erro,resultado){
    res.render('site/courses.ejs', {curso:resultado});
  });
};
module.exports.video = function(dados,user,res){
  lessonName = dados.lessonName;
  console.log(lessonName);
  courseModel.getbyurl(lessonName, function(erro,resultado){
   console.log(resultado[0])
    res.render('site/aulas.ejs', {curso:resultado[0], user:user});
  });
};

module.exports.store = function(req, res){
  var dados = req.body;
  courseModel.save(dados,function(erro,resultado){
      if(!erro){
        res.redirect('/edicao');
      }else{
        console.log(erro);
      }
    })
};
module.exports.show = function(dados,res){
  lessonName = dados.lessonName;
  courseModel.find(lessonName,function(erro,resultado){
    console.log(resultado);
     res.render('site/update.ejs', {curso:resultado});
  });
};
module.exports.delete = function(dados,res){
  lessonName = dados.lessonName;
  console.log(lessonName);
  courseModel.delete(lessonName,function(erro,resultado){
    if(!erro){
      res.redirect('/edicao');
    }else{
      console.log(erro);
    }
  })
};
module.exports.update = function(req,res){
  var dados = req.body;
  console.log(dados);
  courseModel.update(dados,function(erro,resultado){
      if(!erro){
        res.redirect('/edicao');
      }else{
        console.log(erro);
      }
    })
};