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

function addItem() {

	mySwiper.init();
	
}
