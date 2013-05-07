$(document).ready(function() {
	$(".project").each(function(i, elem) {
		$(elem).attr("id", "project-" + i);
		slideInfo(this, "project-" + i);
	});
});
