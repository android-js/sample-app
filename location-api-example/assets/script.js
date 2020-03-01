new Vue({
  el: '#app',
  data: {
	  latitude: null,
	  longitude: null
  },
  created() {
	let api_response = app.location.get();
	this.latitude = api_response.latitude;
	this.longitude = api_response.longitude;
	try{
		google.maps.event.addDomListener(window, 'load', ()=>initialize(api_response.latitude, api_response.longitude));
	}catch(e){
		alert(JSON.stringify(e));
	}
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
});

function initialize(a, b) {
	var latlng = new google.maps.LatLng(a, b);
	 var map = new google.maps.Map(document.getElementById('map'), {
	   center: latlng,
	   zoom: 13
	 });
	 var marker = new google.maps.Marker({
	   map: map,
	   position: latlng,
	   draggable: false,
	   anchorPoint: new google.maps.Point(0, -29)
	});
	 var infowindow = new google.maps.InfoWindow();   
	 google.maps.event.addListener(marker, 'click', function() {
	   var iwContent = '<div id="iw_container">' +
	   '<div class="iw_title"><b>Location</b> : Noida</div></div>';
	   // including content to the infowindow
	   infowindow.setContent(iwContent);
	   // opening the infowindow in the current map and at the current marker location
	   infowindow.open(map, marker);
	 });
 }

