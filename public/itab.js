window.readyHandlers = [];
window.ready = function ready(handler) {
  window.readyHandlers.push(handler);
  handleState();
};

window.handleState = function handleState () {
  if (['interactive', 'complete'].indexOf(document.readyState) > -1) {
    while(window.readyHandlers.length > 0) {
      window.readyHandlers.shift()();
    }
  }
};

document.onreadystatechange = window.handleState;
ready(function () {

	setTimeout(function(){
	document.getElementById('fountainG').style.display = "none";
<<<<<<< HEAD
},5000);
=======
	},10000);
>>>>>>> bcfca02589a4b99cf6254110a238bc1d00f23e76
	setTimeout(function(){
	document.getElementById('controller').style.display = "block";
	document.getElementById('weather').style.display = "block";
	document.getElementById('traffic').style.display = "block";
	document.getElementById('cams').style.display = "block";
<<<<<<< HEAD
  document.getElementById('baseDiv').style.display = "block";

},5000);



	console.log('whoa!');
});
=======
	document.getElementById('baseDiv').style.display = "block";
	
	},10000);

	console.log('whoa!')
})
>>>>>>> bcfca02589a4b99cf6254110a238bc1d00f23e76
