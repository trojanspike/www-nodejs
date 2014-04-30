#!/usr/bin/env node

var Url = "http://user:pass@host.com:8080/p/a/t/h?query=string#hash";

var fs = require('fs'),
url = require('url'),
exec = require('child_process').exec;

console.log( url.parse(Url) );

require.ext = function(module){
	fs.exists('./ext/'+module+'/index.js' , function(err){
		if( err ){
			exec('su - www-data -c "./ext/'+module+'/index.js"');
			//- return require('./ext/'+module+'/index.js');
		}
	});
};

var Config = require('./config.js');

console.log( typeof require.ext );

var mysql = require.ext('mysql');
