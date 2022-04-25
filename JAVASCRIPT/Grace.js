/*
	Grace.js by gmaris
*/
(function main(){
	const fs = require('fs');
	fs.writeFile('Grace_kid.js', "/*\n\tGrace.js by gmaris\n*/\n(" + main.toString() + ")()", () => {})
})()