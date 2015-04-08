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

  var request = new XMLHttpRequest();
request.open('GET', '/emails', true);

request.onload = function() {
  if (request.status >= 200 && request.status < 400) {
    var resp = request.responseText;
    console.log(JSON.parse(resp));
    var object=(JSON.parse(resp));
    console.log(object.data);
    var array=object.data;
    var div1 = document.getElementById('xxx');

  div1.innerHTML = div1.innerHTML + "You have " + object.length + " new Gmail messages" + "<br><br>";



array.forEach(function(entry) {

  var div = document.getElementById('xxx');

div.innerHTML = div.innerHTML + entry + '<br>';


    console.log(entry);

});

  } else {
  console.log('error big time');
  }
};
request.onerror = function() {
  console.log('massiive failure');// There was a connection error of some sort
};
console.log('i sent your request');
request.send();

	setTimeout(function(){
	document.getElementById('fountainG').style.display = "none";
},31000);
	setTimeout(function(){
	document.getElementById('controller').style.display = "block";
	document.getElementById('weather').style.display = "block";
	document.getElementById('traffic').style.display = "block";
	document.getElementById('cams').style.display = "block";
  document.getElementById('baseDiv').style.display = "block";


},31050);

	console.log('whoa!')
});
