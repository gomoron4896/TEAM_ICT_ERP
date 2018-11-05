(function($){
	$.ajax({
		type:'post',
		
		url:'/pjhead',
		dataType:'json',
		contentType: "application/json",
		success:function(res) {
			console.log(res);
			addItem();
		}
	});
})(jQuery);

var $ = new jQuery();

function addItem() {
	alert('asd');
}