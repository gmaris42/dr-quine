let i = 5;
(function main(){
	const fs = require('fs');
	if (fs.existsSync('Sully_5.js'))
		--i;
	fs.writeFile("Sully_" + i + ".js", "let i = " + i + ";\n("+ main.toString() + ")()", () => {
		if (i)
		{
			const child = require("./Sully_" + i);
		}
	})
})()