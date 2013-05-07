var slideInfo = function(target, id) {
	var body = $(target).find(".slide-desc"),
	bodyId = id,
	onMouseOut = function(event) {
		console.log("mouseout");
		if(body.queue("fx").length != 0) {
			body.stop(true);
		}
		body.animate({top: 160});
	},
	onMouseOver = function(event) {
		console.log('mouseover');
		body.stop(true);
		body.animate({top: 0});
	},
	_init = function() {
		$("#" + id + ", #" + id + "*" ).on('mouseover', onMouseOver);
		$("#" + id + ", #" + id + "*" ).on('mouseout', onMouseOut);
	},
	me = {
		target: target
	};
	_init();
	
	return me;
}
