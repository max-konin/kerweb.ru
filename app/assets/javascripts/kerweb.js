var mail = function(e) {
	if(e.preventDefault)
		e.preventDefault();
	else
		e.returnValue = false;
	var mailto = e.currentTarget.text.replace("[at]", "@");
	window.open("mailto:" + mailto);
}

$(document).ready(function() {
	$("#contact").find("a:contains('[at]')").on('click', mail);
});
