var courseController = require('../controllers/courseController');
var url = require('url');

function app (app, passport){
    app.get('/', function(req, res){
        res.render('site/home.ejs');
        
    });
    app.get('/edicao',isLoggedIn, function(req, res){
        courseController.getall(req, res);
        
    });
    app.get('/delete/:lessonName',isLoggedIn, function(req, res){
        var dados = req.params;
         courseController.delete(dados,res);
    });
    app.post('/edicao',isLoggedIn, function(req, res){
        courseController.update(req, res);
        
    });
    app.post('/answer',isLoggedIn, function(req, res){
        courseController.answer(req, res);
        
    });

    app.get('/aulas/:lessonName',isLoggedIn,function(req, res){
        var dados = req.params;
        var user = req.user
        console.log(user);
        courseController.video(dados,user, res);
    });

    app.get('/home', function(req, res){
        res.render('site/home.ejs');
        
    });
    app.get('/courses',isLoggedIn,function(req, res){
        courseController.getall2(req, res);
        
    });

    app.get('/sobre', function(req, res){
        res.render('site/sobre.ejs');
    });
    app.get('/update',isLoggedIn, function(req, res){
        res.render('site/update.ejs');
    });
    app.get('/update/:lessonName',isLoggedIn, function(req, res){
        var dados = req.params;
         courseController.show(dados,res);
    });
    app.get('/admin',isLoggedIn, function(req, res){
        res.render('site/admin.curso.ejs');
    });

    app.post('/admin',isLoggedIn, function(req, res){
        courseController.store(req, res);
    });
}
;
function isLoggedIn(req, res, next) {

// if user is authenticated in the session, carry on
if (req.isAuthenticated())
    return next();

// if they aren't redirect them to the home page
res.redirect('/');
}

module.exports = app;
