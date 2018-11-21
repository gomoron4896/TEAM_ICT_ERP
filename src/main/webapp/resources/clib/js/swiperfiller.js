window.addEventListener('load',function() {
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
});

function addItem(res) {
//	var causes = document.querySelectorAll('[data-cause="wrapper"]');
	var html = '';
	var wrapper = document.querySelector('.swiper-wrapper')
	for(var num in res) {
		var moneybar = Math.floor(res[num].pjh_nowmoney*100/res[num].pjh_goalmoney) + '%'
//		causes[num].querySelector('[data-cause="cause-img"]').setAttribute('src' , res[num].pjh_img);
//		causes[num].querySelector('[data-cause="cause-link"]').setAttribute('href' , '/project/' + res[num].pjh_num);
//		causes[num].querySelector('[data-cause="cause-name"]').innerHTML = res[num].pjh_name;
//		causes[num].querySelector('[data-cause="cause-intro"]').innerHTML = res[num].pjh_intro;
//		causes[num].querySelector('[data-cause="cause-nowmoney"]').innerHTML = res[num].pjh_nowmoney + '$';
//		causes[num].querySelector('[data-cause="cause-moneybar"]').getAttribute('style') + ';width:' + moneybar + ';');
//		causes[num].querySelector('[data-cause="cause-rdat"]').innerHTML = res[num].pjh_startdat;
//		causes[num].querySelector('[data-cause="cause-lovit"]').innerHTML = res[num].pjh_lovit;
//		causes[num].querySelector('[data-cause="cause-critic"]').innerHTML = res[num].pjh_criticsum;
		
		html += '<div class="swiper-slide" data-cause="wrapper">';
		html += '<div class="cause-wrap">';
		html += '<figure class="m-0">';
		html += '<img src="' + res[num].pjh_img + '" data-cause="cause-img">';
		html += '<div class="figure-overlay d-flex justify-content-center align-items-center position-absolute w-100 h-100">';
		html += '<a href="/project/' + res[num].pjh_num + '" class="btn gradient-bg mr-2" data-cause="cause-link">상세보기</a>';
		html += '</div><!-- .figure-overlay -->';
		html += '</figure>';
		html += '<div class="cause-content-wrap">';
		html += '<header class="entry-header d-flex flex-wrap align-items-center">';
		html += '<h3 class="entry-title w-100 m-0"><a href="#" data-cause="cause-name">' + res[num].pjh_name + '<!-- PJH_NAME --></a></h3>';
		html += '</header><!-- .entry-header -->';
		html += '<div class="entry-content">';
		html += '<p class="m-0" data-cause="cause-intro">' + res[num].pjh_intro + '<!-- PJH_INTRO --></p>';
		html += '</div><!-- .entry-content -->';
		html += '<div class="fund-raised w-100">';
		html += '<div class="fund-raised-details">';
		html += '<span>PRE-FUND</span>';
		html += '<h6 data-cause="cause-nowmoney">' + res[num].pjh_nowmoney + '$</h6>';
		html += '<div class="progress">';
		html += '<div class="progress-bar" role="progressbar" data-cause="cause-moneybar"';
		html += 'aria-valuenow="0"aria-valuemin="0" aria-valuemax="0" style="background-color:#01abaf;width:' + moneybar + '">';
		html += '</div></div></div>';
		html += '<div class="fund-raised-details d-flex flex-wrap justify-content-between align-items-center">';
		html += '<div class="fund-raised-rdat mt-4">';
		html += '<span>남은 기간 </span>';
		html += '<h6 data-cause="cause-rdat">' + res[num].pjh_startdat + '</h6>';
		html += '</div><!-- .fund-raised-rdat -->';
		html += '<div class="fund-raised-total mt-4">';
		html += '<span>LOVIT</span>';
		html += '<h6 data-cause="cause-lovit">' + res[num].pjh_lovit + '</h6>';
		html += '</div><!-- .fund-raised-total -->';
		html += '<div class="fund-raised-goal mt-4">';
		html += '<span>평점</span>';
		html += '<h6 data-cause="cause-critic">' + res[num].pjh_criticsum + '</h6>';
		html += '</div><!-- .fund-raised-goal -->';
		html += '</div><!-- .fund-raised-details -->';
		html += '</div><!-- .fund-raised -->';
		html += '</div><!-- .cause-content-wrap -->';
		html += '</div><!-- .cause-wrap -->';
		html += '</div><!-- .swiper-slide -->';
		
		wrapper.insertAdjacentHTML('beforeend',html);
		html = '';
		
	}
	
    var causesSlider = new Swiper('.lovit-slider', {
        slidesPerView: 3,
        spaceBetween: 30,
        navigation: {
            nextEl: '.swiper-button-next',
            prevEl: '.swiper-button-prev'
        },
        breakpoints: {
            1200: {
                slidesPerView: 2,
                spaceBetween: 30,
            },
            768: {
                slidesPerView: 1,
                spaceBetween: 0,
            }
        }
    });
    
    // Accordion & Toggle
    $('.accordion-wrap.type-accordion').collapsible({
        accordion: true,
        contentOpen: 0,
        arrowRclass: 'arrow-r',
        arrowDclass: 'arrow-d'
    });

    $('.accordion-wrap .entry-title').on('click', function() {
        $('.accordion-wrap .entry-title').removeClass('active');
        $(this).addClass('active');
    });

    // Tabs
    $(function() {
        $('.tab-content:first-child').show();

        $('.tab-nav').bind('click', function(e) {
            $this = $(this);
            $tabs = $this.parent().parent().next();
            $target = $($this.data("target"));
            $this.siblings().removeClass('active');
            $target.siblings().css("display", "none");
            $this.addClass('active');
            $target.fadeIn("slow");
        });

        $('.tab-nav:first-child').trigger('click');
    });

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
