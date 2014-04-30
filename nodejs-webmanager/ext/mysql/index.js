var fs = require('fs'), exec = require('child_process').exec;

fs.readFile('/etc/passwd' , 'utf8',function(err, data){
	
	//- console.log(data);
});

exec('whoami', function(err, data){

	console.log(data);

});
