<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<body>
<<<<<<< HEAD
    <header class="site-header">
        <div class="top-header-bar">
            <div class="container">
                <div class="row flex-wrap justify-content-center justify-content-lg-between align-items-lg-center">
                    <div class="col-12 col-lg-8 d-none d-md-flex flex-wrap justify-content-center justify-content-lg-start mb-3 mb-lg-0">
                        <div class="header-bar-email">
                            MAIL: <a href="#">헤더 텍스트 1</a>
                        </div><!-- .header-bar-email -->

                        <div class="header-bar-text">
                            <p>PHONE: <span>헤더 텍스트 2</span></p>
                        </div><!-- .header-bar-text -->
                    </div><!-- .col -->

                    <div class="col-12 col-lg-4 d-flex flex-wrap justify-content-center justify-content-lg-end align-items-center">
                        <div class="donate-btn">
                            <a href="#">헤더 버튼</a>
                        </div><!-- .donate-btn -->
                    </div><!-- .col -->
                </div><!-- .row -->
            </div><!-- .container -->
        </div><!-- .top-header-bar -->

        <div class="nav-bar">
            <div class="container">
                <div class="row">
                    <div class="col-12 d-flex flex-wrap justify-content-between align-items-center">
                        <div class="site-branding d-flex align-items-center">
                           <a class="d-block" href="index.html" rel="home"><img class="d-block" src="/clib/images/logo.png" alt="logo"></a>
                        </div><!-- .site-branding -->

                        <nav class="site-navigation d-flex justify-content-end align-items-center">
                            <ul class="d-flex flex-column flex-lg-row justify-content-lg-end align-content-center">
                                <li class="current-menu-item"><a href="index.html">홈</a></li>
                                <li><a href="/clib/causes.html">모든 프로젝트</a></li>
                                <li><a href="/clib/portfolio.html">카테고리</a></li>
                              	<sec:authorize access="isAnonymous()">
                               		<li><a href="${CONTEXT}/url/auth:login-service-test">로그인</a></li>
                              	</sec:authorize>
                              	<sec:authorize access="isAuthenticated()">
                              		<li><a href="/clib/news.html">마이 페이지</a></li>
                               		<li><a href="" onclick="Logout()" > 로그아웃</a>
</li>
                               	</sec:authorize> 
                            </ul>
                        </nav><!-- .site-navigation -->
<script>
function Logout() {
	var xhr = new XMLHttpRequest();
	$.ajax({
		url : '/logout',
		type : 'POST',
		beforeSend : function(xhr) {
			xhr.setRequestHeader("${_csrf.headerName}",
					"${_csrf.token}");
		},
		success : function(res) {
			alert(res);
			window.location.replace("http://localhost/url/clib:index");
		},
		error : function(err) {
			console.log(err);
		}
	});
}
</script>
                        <div class="hamburger-menu d-lg-none">	
                            <span></span>
                            <span></span>
                            <span></span>
                            <span></span>
                        </div><!-- .hamburger-menu -->
                    </div><!-- .col -->
                </div><!-- .row -->
            </div><!-- .container -->
        </div><!-- .nav-bar -->
    </header><!-- .site-header -->

=======
>>>>>>> branch 'master' of https://github.com/gomoron4896/ict1-erp1.git
    <div class="swiper-slide hero-content-wrap"> <!-- 메인 타이틀 -->
        <img src="/clib/images/hero.jpg" alt="">
        <div class="hero-content-overlay position-absolute w-100 h-100">
            <div class="container h-100">
                <div class="row h-100">
                    <div class="col-12 col-lg-8 d-flex flex-column justify-content-center align-items-start">
                        <header class="entry-header">
                            <h1>project nest</h1>
                            <h4>멋진 아이디어가 커나가는 공간</h4>
                        </header><!-- .entry-header -->

                        <div class="entry-content mt-4">
                            <p>당신의 아이디어를 다른 사람들과 공유하세요</p>
                        </div><!-- .entry-content -->

                        <footer class="entry-footer d-flex flex-wrap align-items-center mt-5">
                            <a href="#" class="btn gradient-bg mr-2">내 아이디어 제안하기</a>
                            <a href="#" class="btn orange-border">다른 아이디어 평가하기</a>
                        </footer><!-- .entry-footer -->
                    </div><!-- .col -->
                </div><!-- .row -->
            </div><!-- .container -->
        </div><!-- .hero-content-overlay -->
	</div><!-- .hero-content-wrap -->

    <div class="home-page-icon-boxes">
        <div class="container">
            <div class="row">
                <div class="col-12 col-md-6 col-lg-4 mt-4 mt-lg-0">
                    <div class="icon-box active">
                        <figure class="d-flex justify-content-center">
                            <img src="/clib/images/hands-gray.png" alt="">
                            <img src="/clib/images/hands-white.png" alt="">
                        </figure>

                        <header class="entry-header">
                            <h3 class="entry-title">함께 만드는 아이디어</h3>
                        </header>

                        <div class="entry-content">
                            <p>다른 이의 아이디어에 의견과 평점을 남기고 함께 발전시켜 보세요.</p>
                        </div>
                    </div>
                </div>

                <div class="col-12 col-md-6 col-lg-4 mt-4 mt-lg-0">
                    <div class="icon-box">
                        <figure class="d-flex justify-content-center">
                            <img src="/clib/images/donation-gray.png" alt="">
                            <img src="/clib/images/donation-white.png" alt="">
                        </figure>

                        <header class="entry-header">
                            <h3 class="entry-title">LOVE IT? LOVIT!</h3>
                        </header>

                        <div class="entry-content">
                            <p>마음에 드는 아이디어를 발견했다면? LOVIT!으로 간편하게 아이디어에 호감을 표현하세요! </p>
                        </div>
                    </div>
                </div>

                <div class="col-12 col-md-6 col-lg-4 mt-4 mt-lg-0">
                    <div class="icon-box">
                        <figure class="d-flex justify-content-center">
                            <img src="/clib/images/charity-gray.png" alt="">
                            <img src="/clib/images/charity-white.png" alt="">
                        </figure>

                        <header class="entry-header">
                            <h3 class="entry-title">팀에 참여하세요</h3>
                        </header>

                        <div class="entry-content">
                            <p>팀원을 모집하는 아이디어가 있나요? </p>
                        </div>
                    </div>
                </div>
            </div><!-- .row -->
        </div><!-- .container -->
    </div><!-- .home-page-icon-boxes -->

    <div class="our-causes"><!-- @@@ SWIPER 영역 @@@ -->
        <div class="container">
        
            <div class="row"><!-- 상단 제목 -->
                <div class="coL-12">
                    <div class="section-heading">
                        <h2 class="entry-title">Our Causes</h2>
                    </div><!-- .section-heading -->
                </div><!-- .col -->
            </div><!-- .row -->

            <div class="row">
                <div class="col-12">
                    <div class="swiper-container causes-slider-3">
                        <div class="swiper-wrapper">
                        
                            
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
                            
                        </div><!-- .swiper-wrapper -->

                    </div><!-- .swiper-container -->

                    <!-- Add Arrows -->
                    <div class="swiper-button-next flex justify-content-center align-items-center">
                        <span><svg viewBox="0 0 1792 1792" xmlns="http://www.w3.org/2000/svg"><path d="M1171 960q0 13-10 23l-466 466q-10 10-23 10t-23-10l-50-50q-10-10-10-23t10-23l393-393-393-393q-10-10-10-23t10-23l50-50q10-10 23-10t23 10l466 466q10 10 10 23z"/></svg></span>
                    </div>

                    <div class="swiper-button-prev flex justify-content-center align-items-center">
                        <span><svg viewBox="0 0 1792 1792" xmlns="http://www.w3.org/2000/svg"><path d="M1203 544q0 13-10 23l-393 393 393 393q10 10 10 23t-10 23l-50 50q-10 10-23 10t-23-10l-466-466q-10-10-10-23t10-23l466-466q10-10 23-10t23 10l50 50q10 10 10 23z"/></svg></span>
                    </div>
                </div><!-- .col -->
            </div><!-- .row -->
            
            
        </div><!-- .container -->
    </div><!-- .our-causes -->
    
    <div class="our-causes"><!-- @@@ SWIPER 영역 @@@ -->
        <div class="container">
        
            <div class="row"><!-- 상단 제목 -->
                <div class="coL-12">
                    <div class="section-heading">
                        <h2 class="entry-title">Our Causes</h2>
                    </div><!-- .section-heading -->
                </div><!-- .col -->
            </div><!-- .row -->

            <div class="row">
                <div class="col-12">
                    <div class="swiper-container causes-slider-3">
                        <div class="swiper-wrapper">
                        
                            
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
                            
                        </div><!-- .swiper-wrapper -->

                    </div><!-- .swiper-container -->

                    <!-- Add Arrows -->
                    <div class="swiper-button-next flex justify-content-center align-items-center">
                        <span><svg viewBox="0 0 1792 1792" xmlns="http://www.w3.org/2000/svg"><path d="M1171 960q0 13-10 23l-466 466q-10 10-23 10t-23-10l-50-50q-10-10-10-23t10-23l393-393-393-393q-10-10-10-23t10-23l50-50q10-10 23-10t23 10l466 466q10 10 10 23z"/></svg></span>
                    </div>

                    <div class="swiper-button-prev flex justify-content-center align-items-center">
                        <span><svg viewBox="0 0 1792 1792" xmlns="http://www.w3.org/2000/svg"><path d="M1203 544q0 13-10 23l-393 393 393 393q10 10 10 23t-10 23l-50 50q-10 10-23 10t-23-10l-466-466q-10-10-10-23t10-23l466-466q10-10 23-10t23 10l50 50q10 10 10 23z"/></svg></span>
                    </div>
                </div><!-- .col -->
            </div><!-- .row -->
            
            
        </div><!-- .container -->
    </div><!-- .our-causes -->
    
    <div class="our-causes"><!-- @@@ SWIPER 영역 @@@ -->
        <div class="container">
        
            <div class="row"><!-- 상단 제목 -->
                <div class="coL-12">
                    <div class="section-heading">
                        <h2 class="entry-title">Our Causes</h2>
                    </div><!-- .section-heading -->
                </div><!-- .col -->
            </div><!-- .row -->

            <div class="row">
                <div class="col-12">
                    <div class="swiper-container causes-slider-3">
                        <div class="swiper-wrapper">
                        
                            
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
                            
                        </div><!-- .swiper-wrapper -->

                    </div><!-- .swiper-container -->

                    <!-- Add Arrows -->
                    <div class="swiper-button-next flex justify-content-center align-items-center">
                        <span><svg viewBox="0 0 1792 1792" xmlns="http://www.w3.org/2000/svg"><path d="M1171 960q0 13-10 23l-466 466q-10 10-23 10t-23-10l-50-50q-10-10-10-23t10-23l393-393-393-393q-10-10-10-23t10-23l50-50q10-10 23-10t23 10l466 466q10 10 10 23z"/></svg></span>
                    </div>

                    <div class="swiper-button-prev flex justify-content-center align-items-center">
                        <span><svg viewBox="0 0 1792 1792" xmlns="http://www.w3.org/2000/svg"><path d="M1203 544q0 13-10 23l-393 393 393 393q10 10 10 23t-10 23l-50 50q-10 10-23 10t-23-10l-466-466q-10-10-10-23t10-23l466-466q10-10 23-10t23 10l50 50q10 10 10 23z"/></svg></span>
                    </div>
                </div><!-- .col -->
            </div><!-- .row -->
            
            
        </div><!-- .container -->
    </div><!-- .our-causes -->
    
    <div class="our-causes"><!-- @@@ SWIPER 영역 @@@ -->
        <div class="container">
        
            <div class="row"><!-- 상단 제목 -->
                <div class="coL-12">
                    <div class="section-heading">
                        <h2 class="entry-title">Our Causes</h2>
                    </div><!-- .section-heading -->
                </div><!-- .col -->
            </div><!-- .row -->

            <div class="row">
                <div class="col-12">
                    <div class="swiper-container causes-slider-3">
                        <div class="swiper-wrapper">
                        
                            
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
                            
                        </div><!-- .swiper-wrapper -->

                    </div><!-- .swiper-container -->

                    <!-- Add Arrows -->
                    <div class="swiper-button-next flex justify-content-center align-items-center">
                        <span><svg viewBox="0 0 1792 1792" xmlns="http://www.w3.org/2000/svg"><path d="M1171 960q0 13-10 23l-466 466q-10 10-23 10t-23-10l-50-50q-10-10-10-23t10-23l393-393-393-393q-10-10-10-23t10-23l50-50q10-10 23-10t23 10l466 466q10 10 10 23z"/></svg></span>
                    </div>

                    <div class="swiper-button-prev flex justify-content-center align-items-center">
                        <span><svg viewBox="0 0 1792 1792" xmlns="http://www.w3.org/2000/svg"><path d="M1203 544q0 13-10 23l-393 393 393 393q10 10 10 23t-10 23l-50 50q-10 10-23 10t-23-10l-466-466q-10-10-10-23t10-23l466-466q10-10 23-10t23 10l50 50q10 10 10 23z"/></svg></span>
                    </div>
                </div><!-- .col -->
            </div><!-- .row -->
            
            
        </div><!-- .container -->
    </div><!-- .our-causes -->
 
    <!-- <div class="home-page-limestone">
        <div class="container">
            <div class="row align-items-end">
                <div class="coL-12 col-lg-6">
                    <div class="section-heading">
                        <h2 class="entry-title">We love to help all the children that have problems in the world. After 15 years we have many goals achieved.</h2>

                        <p class="mt-5">Dolor sit amet, consectetur adipiscing elit. Mauris tempus vestib ulum mauris quis aliquam. Lorem ipsum dolor sit amet.</p>
                    </div>.section-heading
                </div>.col

                <div class="col-12 col-lg-6">
                    <div class="milestones d-flex flex-wrap justify-content-between">
                        <div class="col-12 col-sm-4 mt-5 mt-lg-0">
                            <div class="counter-box">
                                <div class="d-flex justify-content-center align-items-center">
                                    <img src="/clib/images/teamwork.png" alt="">
                                </div>

                                <div class="d-flex justify-content-center align-items-baseline">
                                    <div class="start-counter" data-to="120" data-speed="2000"></div>
                                    <div class="counter-k">K</div>
                                </div>

                                <h3 class="entry-title">Children helped</h3>entry-title
                            </div>counter-box
                        </div>.col

                        <div class="col-12 col-sm-4 mt-5 mt-lg-0">
                            <div class="counter-box">
                                <div class="d-flex justify-content-center align-items-center">
                                    <img src="/clib/images/donation.png" alt="">
                                </div>

                                <div class="d-flex justify-content-center align-items-baseline">
                                    <div class="start-counter" data-to="79" data-speed="2000"></div>
                                </div>

                                <h3 class="entry-title">Water wells</h3>entry-title
                            </div>counter-box
                        </div>.col

                        <div class="col-12 col-sm-4 mt-5 mt-lg-0">
                            <div class="counter-box">
                                <div class="d-flex justify-content-center align-items-center">
                                    <img src="/clib/images/dove.png" alt="">
                                </div>

                                <div class="d-flex justify-content-center align-items-baseline">
                                    <div class="start-counter" data-to="253" data-speed="2000"></div>
                                </div>

                                <h3 class="entry-title">Volunteeres</h3>entry-title
                            </div>counter-box
                        </div>.col
                    </div>.milestones
                </div>.col
            </div>.row
        </div>.container
    </div>.our-causes -->


    <footer class="site-footer">
        <div class="footer-widgets">
            <div class="container">
                <div class="row">
                    <div class="col-12 col-md-6 col-lg-3">
                        <div class="foot-about">
                            <h2><a class="foot-logo" href="#"><img src="/clib/images/foot-logo.png" alt=""></a></h2>

                            <p>Lorem ipsum dolor sit amet, con sectetur adipiscing elit. Mauris temp us vestib ulum mauris.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris tempus vestib ulum mauris.Lorem ipsum dolo.</p>

                            <ul class="d-flex flex-wrap align-items-center">
                                <li><a href="#"><i class="fa fa-pinterest-p"></i></a></li>
                                <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                                <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                <li><a href="#"><i class="fa fa-dribbble"></i></a></li>
                                <li><a href="#"><i class="fa fa-behance"></i></a></li>
                                <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                            </ul>
                        </div><!-- .foot-about -->
                    </div><!-- .col -->

                    <div class="col-12 col-md-6 col-lg-3 mt-5 mt-md-0">
                        <h2>Useful Links</h2>

                        <ul>
                            <li><a href="#">Privacy Polticy</a></li>
                            <li><a href="#">Become  a Volunteer</a></li>
                            <li><a href="#">Donate</a></li>
                            <li><a href="#">Testimonials</a></li>
                            <li><a href="#">Causes</a></li>
                            <li><a href="#">Portfolio</a></li>
                            <li><a href="#">News</a></li>
                        </ul>
                    </div><!-- .col -->

                    <div class="col-12 col-md-6 col-lg-3 mt-5 mt-md-0">
                        <div class="foot-latest-news">
                            <h2>Latest News</h2>

                            <ul>
                                <li>
                                    <h3><a href="#">A new cause to help</a></h3>
                                    <div class="posted-date">MArch 12, 2018</div>
                                </li>

                                <li>
                                    <h3><a href="#">We love to help people</a></h3>
                                    <div class="posted-date">MArch 12, 2018</div>
                                </li>

                                <li>
                                    <h3><a href="#">The new ideas for helping</a></h3>
                                    <div class="posted-date">MArch 12, 2018</div>
                                </li>
                            </ul>
                        </div><!-- .foot-latest-news -->
                    </div><!-- .col -->

                    <div class="col-12 col-md-6 col-lg-3 mt-5 mt-md-0">
                        <div class="foot-contact">
                            <h2>Contact</h2>

                            <ul>
                                <li><i class="fa fa-phone"></i><span>+45 677 8993000 223</span></li>
                                <li><i class="fa fa-envelope"></i><span>office@template.com</span></li>
                                <li><i class="fa fa-map-marker"></i><span>Main Str. no 45-46, b3, 56832, Los Angeles, CA</span></li>
                            </ul>
                        </div><!-- .foot-contact -->

                        <div class="subscribe-form">
                            <form class="d-flex flex-wrap align-items-center">
                                <input type="email" placeholder="Your email">
                                <input type="submit" value="send">
                            </form><!-- .flex -->
                        </div><!-- .search-widget -->
                    </div><!-- .col -->
                </div><!-- .row -->
            </div><!-- .container -->
        </div><!-- .footer-widgets -->

        <div class="footer-bar">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <p class="m-0"><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart-o" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>
                    </div><!-- .col-12 -->
                </div><!-- .row -->
            </div><!-- .container -->
        </div><!-- .footer-bar -->
    </footer><!-- .site-footer -->
    
    <script type="text/javascript">
	    // Cause Slider
	    var causesSlider = new Swiper('.causes-slider-3', {
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
    </script>
   
<!--    	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
   	
   	<script type='text/javascript' src='/clib/js/jquery.collapsible.min.js'></script>
    <script type='text/javascript' src='/clib/js/jquery.countdown.min.js'></script>
    <script type='text/javascript' src='/clib/js/circle-progress.min.js'></script>
    <script type='text/javascript' src='/clib/js/jquery.countTo.min.js'></script>
    <script type='text/javascript' src='/clib/js/jquery.barfiller.js'></script>
	
	<script src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.4.2/js/swiper.js"></script>
	
	
    <script type='text/javascript' src='/clib/js/custom-custom.js'></script>
    <script type='text/javascript' src='/clib/js/swiperfiller.js'></script> -->
	
</body>
</html>