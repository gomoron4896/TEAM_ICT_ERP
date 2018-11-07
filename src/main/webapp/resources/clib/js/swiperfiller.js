$.ajax({
	type:'post',
	url:'/pjhead',
	dataType:'json',
	contentType: "application/json",
	success:function(res) {
		console.log(res);
		addItem(res);
	}
});

function addItem(res) {
	var causes = document.querySelectorAll('.our-causes .swiper-slide[data-sfnum]');
	for(var num in causes) {
		console.log(causes[num].querySelector('img').getAttribute('src'));
		causes[num].querySelector('img').setAttribute('src', res[num].pjh_img);
		causes[num].querySelector('.cause-content-wrap a').innerHTML = res[num].pjh_name;
		causes[num].querySelector('.entry-content p').innerHTML = res[num].pjh_intro;
		causes[num].querySelector('.fund-raised-total p').innerHTML = res[num].pjh_lovit;
		causes[num].querySelector('.fund-raised-goal p').innerHTML = res[num].pjh_criticsum;
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
