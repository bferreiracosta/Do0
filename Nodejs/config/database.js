var mysql = require('mysql');

var con = function(){
  return mysql.createConnection({
    host:'localhost',
    user:'root',
    password:'',
    database:'do0_db'
  });
};

module.exports = con;
