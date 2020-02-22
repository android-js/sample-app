new Vue({
  el: '#app',
  data: {
  	users: [
  		"Android JS",
  		"Vue",
  		"React",
  		"Angular",
  		"Phonon"
  	]
  },
  methods: {
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