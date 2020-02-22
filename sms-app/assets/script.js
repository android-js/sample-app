new Vue({
  el: '#app',
  data: {
    mobile: "",
    msg: "",
  	users: [
  		"Android JS",
  		"Vue",
  		"React",
  		"Angular",
  		"Phonon"
  	]
  },
  methods: {
    sendMsg() {
      if(this.mobile.length < 10){
        alert("invalid mobile number");
      }else{
        app.sms.send(this.mobile, this.msg);
      }
    },
  	remove(el){
  		for( var i = 0; i < this.users.length; i++) { 
		   	if ( this.users[i] === el) {
		    	this.users.splice(i, 1); 
		     	i--;
		   	}
		  }
  	}
  }
})