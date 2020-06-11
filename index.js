var express = require('express');
var app = express();
var logger = require('morgan');
var path = require('path');
var bodyParser = require('body-parser');
var session = require('express-session');
var flash = require('express-flash');

var expressku = require('./routes/expressku');
// var adminku = require('./routes/adminku');

var conn = require('express-myconnection');
var mysql = require('mysql');

app.set('port', process.env.port || 3000);
app.set('view engine', 'ejs');

app.use(logger('dev'));
// app.use('/public', express.static(__dirname + '/public'));
app.use('/public', express.static(path.join(__dirname, 'public')));
app.use(bodyParser.urlencoded({ extended: false }));
app.use(flash());

app.use(
    conn(mysql, {
        host: '127.0.0.1',
        user: 'root',
        password: '',
        port: 3306,
        database: 'ecommerce'
    }, 'single')
);

app.use(
    session({
        secret: 'ibnusalam',
        resave: false,
        saveUninitialized: true,
        cookie: { maxAge: 120000 }
    })
);

app.get('/', function (req, res)
{
    res.send('Server is running on port ' + app.get('port'));
});

app.get('/exercises-module6', expressku.home);
app.get('/exercises-module6/products_detail/:id_product', expressku.products_detail);
// app.get('/exercises-module6/news_detail/:id_news', expressku.news_detail);

app.listen(app.get('port'), function()
{
    console.log('Server is running on port ' + app.get('port'));
});