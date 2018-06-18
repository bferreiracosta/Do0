module.exports = function(){
    var express = require("express");
    var multer  = require('multer') ;
    var bodyParser = require("body-parser");
    var expressValidator =require("express-validator");
    var session  = require('express-session');
    var cookieParser = require('cookie-parser');
    var bodyParser = require('body-parser');
    var morgan = require('morgan');
    var passport = require('passport');
    var flash = require('connect-flash');

    //middleware
    var app = express();
    require('./passport')(passport); 
    app.use(morgan('dev')); 
    app.use(cookieParser()); 
    app.set('view engine', 'ejs');
    app.set('views', __dirname+'./../app/views');
  
    app.use(bodyParser.json());
    app.use(bodyParser.urlencoded({extended: true}));
 
    app.use(express.static(__dirname + './../public/'));
    app.use(function(req, res, next) {
      res.header("Access-Control-Allow-Origin", "*");
      res.header("Access-Control-Allow-Headers", "Origin, X-Requested-With, Content-Type, Accept");
      next();
  });
    //inicialização passport
    app.use(session({
      secret: 'vidyapathaisalwaysrunning',
      resave: true,
      saveUninitialized: true
    } )); 
    app.use(passport.initialize());
    app.use(passport.session());
    app.use(flash());

    //validação de dados
    app.use(expressValidator());
    
    //upload file
    var storage = multer.diskStorage({
        destination: function (req, file, cb) {
          cb(null, 'public/assets')
        },
        filename: function (req, file, cb) {
        var ext = file.originalname.substr(file.originalname.lastIndexOf('.')+1);
          cb(null, file.originalname + '.' + ext)
        }
      })
      
    var upload = multer({ storage: storage })
    app.post('/file', upload.single(), function (req, res, next) {
      console.log(req.file);
      res.render('site/edicao.curso.ejs');
      })
    
    //router
    var rotasAulas = require('../app/routes/web');
    rotasAulas(app);
    var rotasPassport = require('../app/routes/passportRouter');
    rotasPassport(app, passport);


    app.listen(8000,function(){
        console.log("localhost:8000");
    });
    
};