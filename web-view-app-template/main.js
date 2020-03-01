const back = require('androidjs').back;

back.on("hello from front", function(){
	back.send("hello from back", "Hello from Android JS");
});
