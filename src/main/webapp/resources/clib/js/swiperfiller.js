$.ajax({
	type:'get',
	url:'/pjhead',
	dataType:'json',
	contentType: "application/json",
	success:function(res) {
		console.log(res);
		addItem(res);
	}
});

function addItem(res) {
	var causes = document.querySelectorAll('[data-cause="wrapper"]');
	for(var num in causes) {
		var moneybar = Math.floor(res[num].pjh_nowmoney*100/res[num].pjh_goalmoney) + '%'
		causes[num].querySelector('[data-cause="cause-img"]').setAttribute('src' , res[num].pjh_img);
		causes[num].querySelector('[data-cause="cause-name"]').innerHTML = res[num].pjh_name;
		causes[num].querySelector('[data-cause="cause-intro"]').innerHTML = res[num].pjh_intro;
		causes[num].querySelector('[data-cause="cause-nowmoney"]').innerHTML = res[num].pjh_nowmoney + '$';
		causes[num].querySelector('[data-cause="cause-moneybar"]').setAttribute('style' , 
			causes[num].querySelector('[data-cause="cause-moneybar"]').getAttribute('style') + ';width:' + moneybar + ';');
		causes[num].querySelector('[data-cause="cause-rdat"]').innerHTML = res[num].pjh_startdat;
		causes[num].querySelector('[data-cause="cause-lovit"]').innerHTML = res[num].pjh_lovit;
		causes[num].querySelector('[data-cause="cause-critic"]').innerHTML = res[num].pjh_criticsum;
	}
	
}


//cause slider exam

/*
-PJH_IMG
$(.swiper-slide img).attr('src')

-PJH_NAME
$(.swiper-slide .entry-header a).html

-PJH_INTRO
$(.)

*/

/* <div class="swiper-slide"></div>
	<div class="cause-wrap">
		<figure class="m-0">
			<img src="/clib/images/e.jpg" alt="">

			<div class="figure-overlay d-flex justify-content-center align-items-center position-absolute w-100 h-100">
				<a href="#" class="btn gradient-bg mr-2">상세보기</a>
			</div><!-- .figure-overlay -->
		</figure>

		<div class="cause-content-wrap">
			<header class="entry-header d-flex flex-wrap align-items-center">
				<h3 class="entry-title w-100 m-0"><a href="#"><!-- @PJH_NAME@ --></a></h3>
			</header><!-- .entry-header -->

			<div class="entry-content">
				<p class="m-0"><!-- @PJH_INTRO@ --></p>
			</div><!-- .entry-content -->

			<div class="fund-raised w-100">
				<div class="fund-raised-bar-2 barfiller">
					<div class="tipWrap">
						<span class="tip"></span>
					</div><!-- .tipWrap -->

					<span class="fill" data-percentage="@PJH_ENDDAT -- PJH_STARTDAT@"></span>
				</div><!-- .fund-raised-bar -->

				<div class="fund-raised-details d-flex flex-wrap justify-content-between align-items-center">
					<div class="fund-raised-total mt-4">
						LOVIT: <p class="item_lovit">@PJH_LOVIT@</p>
					</div><!-- .fund-raised-total -->

					<div class="fund-raised-goal mt-4">
						평점: <p class="item_critic">@PJH_CRITICSUM@</p>
					</div><!-- .fund-raised-goal -->
				</div><!-- .fund-raised-details -->
			</div><!-- .fund-raised -->
		</div><!-- .cause-content-wrap -->
	</div><!-- .cause-wrap -->
</div><!-- .swiper-slide --> */
