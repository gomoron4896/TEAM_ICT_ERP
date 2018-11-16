<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>




<div class="swiper-slide" data-cause="wrapper">
	<div class="cause-wrap">
		<figure class="m-0">
			<img src="/clib/images/e.jpg" data-cause="cause-img">
			<div class="figure-overlay d-flex justify-content-center align-items-center position-absolute w-100 h-100">
				<a href="#" class="btn gradient-bg mr-2" data-cause="cause-link">상세보기</a>
			</div><!-- .figure-overlay -->
		</figure>
		<div class="cause-content-wrap">
			<header class="entry-header d-flex flex-wrap align-items-center">
				<h3 class="entry-title w-100 m-0"><a href="#" data-cause="cause-name">나는 테스트 프로젝트 이름입니다<!-- PJH_NAME --></a></h3>
			</header><!-- .entry-header -->
			<div class="entry-content">
				<p class="m-0" data-cause="cause-intro">나는 테스트 프로젝트 인트로 나는 테스트 프로젝트 인트로 나는 테스트 프로젝트 인트로<!-- PJH_INTRO --></p>
			</div><!-- .entry-content -->
			<div class="fund-raised w-100">
				<div class="fund-raised-details">
					<span>PRE-FUND</span>
					<h6 data-cause="cause-nowmoney">100,000$</h6>
					<div class="progress">
						<div class="progress-bar" role="progressbar" data-cause="cause-moneybar" aria-valuenow="0" 
						aria-valuemin="0" aria-valuemax="0" style="background-color:#01abaf">
						</div>
					</div>
				</div>
				<div class="fund-raised-details d-flex flex-wrap justify-content-between align-items-center">
					<div class="fund-raised-rdat mt-4">
						<span>남은 기간 </span>
						<h6 data-cause="cause-rdat">123</h6>
					</div><!-- .fund-raised-rdat -->

					<div class="fund-raised-total mt-4">
						<span>LOVIT</span>
						<h6 data-cause="cause-lovit">123</h6>
					</div><!-- .fund-raised-total -->

					<div class="fund-raised-goal mt-4">
						<span>평점</span>
						<h6 data-cause="cause-critic">123</h6>
					</div><!-- .fund-raised-goal -->
				</div><!-- .fund-raised-details -->
			</div><!-- .fund-raised -->
		</div><!-- .cause-content-wrap -->
	</div><!-- .cause-wrap -->
</div><!-- .swiper-slide -->

<!-- 
*index
$('#cause-img').attr('src') = 프로젝트 이미지 경로
$('#cause-name').html = 프로젝트 네임
$('#cause-intro').html = 프로젝트 인트로
$('#cause-nowmoney').html = 프로젝트 모인 금액
$('#cause-moneybar').attr('style') = 프로젝트 모인금액 프로세스바 (width:XX%;')
$('#cause-rdat') = 프로젝트 남은 기간 (pjh_enddat - sysdat)
$('#cause-lovit') = 프로젝트 좋아요 수
$('#cause-critic') = 프로젝트 평점 평균

*single-causes

 -->



</body>
</html>