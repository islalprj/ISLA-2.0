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
	},10000);
	setTimeout(function(){
	document.getElementById('controller').style.display = "block";
	document.getElementById('weather').style.display = "block";
	document.getElementById('traffic').style.display = "block";
	document.getElementById('cams').style.display = "block";
	},10005);

})

$(function () {
    $('.front-page').hover(function () {
        var pos = $(this).position();
        var $clone = $(this).clone();
        $clone.appendTo(this).addClass('front-page_clone').css({
            left: pos.left,
            top: pos.top
        });
    }, function () {
        $('.front-page_clone', this).remove();
    });
});
