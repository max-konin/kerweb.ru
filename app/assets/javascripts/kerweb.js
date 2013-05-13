var mail = function(elem) {
	var mailto = elem.currentTarget.text.replace("[at]","@");
	document.location.href = "mailto:" + mailto;
}

$(document).ready(function() {
	$("[rel^=imageGallery]").prettyPhoto({
		show_title: false,
		theme: 'dark_rounded'
	});
	$("header a:contains('[at]')").on('click', mail);
	$(".project").each(function(i, elem) {
		$(elem).attr("id", "project-" + i);
		slideInfo(this, "project-" + i);
	});
});
