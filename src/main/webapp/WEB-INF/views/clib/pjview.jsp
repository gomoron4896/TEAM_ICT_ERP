<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
</head>
<body class="single-page single-cause">

    <div class="page-header">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <h1>프로젝트 제목</h1>
                </div><!-- .col -->
            </div><!-- .row -->
        </div><!-- .container -->
    </div><!-- .page-header -->

	<div class="highlighted-cause">
        <div class="container">
            <div class="row">
                <div class="col-12 col-lg-7 order-2 order-lg-1">
                    <div class="section-heading">
                        <h2 class="entry-title">프로젝트 네임</h2>
                    </div><!-- .section-heading -->

                    <div class="entry-content mt-5">
                        <p>프로젝트 스토리</p>
                    </div><!-- .entry-content -->

                    <div class="fund-raised w-100 mt-5">
                        <div class="featured-fund-raised-bar barfiller">
                            <div class="tipWrap">
                                <span class="tip"></span>
                            </div><!-- .tipWrap -->

                            <span class="fill" data-percentage="83"></span>
                        </div><!-- .fund-raised-bar -->

                        <div class="fund-raised-details d-flex flex-wrap justify-content-between align-items-center">
                            <div class="fund-raised-total mt-4">
                                Raised: $56 880
                            </div><!-- .fund-raised-total -->

                            <div class="fund-raised-goal mt-4">
                                Goal: $70 000
                            </div><!-- .fund-raised-goal -->
                        </div><!-- .fund-raised-details -->
                    </div><!-- .fund-raised -->

                    <div class="entry-footer mt-5">
                        <a href="#" class="btn gradient-bg">Donate Now</a>
                    </div><!-- .entry-footer -->
                </div><!-- .col -->


                <div class="col-12 col-lg-5 order-1 order-lg-2">
                    <img src="/clib/images/3.jpg" alt="">
                </div><!-- .col -->
            </div><!-- .row -->
            
            <div class="row elements-wrap">
	            <div class="col-12">
	
	                <div class="entry-content elements-container">
	                    <div class="row">
	                    	
	                    	<div class="col-12 col-md-8">
	                            <div class="tabs">
	                                <ul class="tabs-nav d-flex">
	                                    <li class="tab-nav d-flex justify-content-center align-items-center" data-target="#tab_1">스토리</li>
	                                    <li class="tab-nav d-flex justify-content-center align-items-center" data-target="#tab_2">평가 댓글</li>
	                                    <li class="tab-nav d-flex justify-content-center align-items-center" data-target="#tab_3">구직 댓글</li>
	                                    <li class="tab-nav d-flex justify-content-center align-items-center" data-target="#tab_4">업데이트</li>
	                                </ul>
	
	                                <div class="tabs-container">
	                                    <div id="tab_1" class="tab-content">
	                                        <p>스토리 내용란~~</p>
	                                    </div>
	                                    <div id="tab_2" class="tab-content">
	                                        <p>평점댓글 내용란~~</p>
	                                    </div>
	
	                                    <div id="tab_3" class="tab-content">
	                                        <p>구직댓글 내용란~~</p>
	                                    </div>
	                                    
	                                    <div id="tab_4" class="tab-content">
	                                        <p>업데이트 내용란~~</p>
	                                    </div>
	                                </div>
	                            </div>
	                        </div>
	                    
	                        <div class="col-12 col-md-4">
	                            <div class="accordion-wrap type-accordion">
	                                <h3 class="entry-title d-flex justify-content-between align-items-center active">요약1<span class="arrow-r"></span></h3>
	
	                                <div class="entry-content">
	                                	<h6>요약 타이틀 1</h6>
	                                    <p>요약 내용 1</p>
	                                </div>
	
	                                <h3 class="entry-title d-flex justify-content-between align-items-center">요약2<span class="arrow-r"></span></h3>
	
	                                <div class="entry-content">
	                                	<h6>요약 타이틀 2</h6>
	                                    <p>요약 내용 2</p>
	                                </div>
	
	                                <h3 class="entry-title d-flex justify-content-between align-items-center">요약1<span class="arrow-r"></span></h3>
	
	                                <div class="entry-content">
	                                	<h6>요약 타이틀 3</h6>
	                                    <p>용</p>
	                                </div>
	                            </div>
	                        </div>
	      
	                    </div>
	                </div>
	            </div>
	        </div>
	        </div><!-- .container -->
	    </div><!-- .highlighted-cause -->
	    
	  
    <script type="text/javascript">
	    $.ajax({
			type:'get',
			url:'/headbody/99999',
			dataType:'json',
			contentType: "application/json",
			success:function(res) {
				console.log(res);
			}
		});
    	
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
    </script>
</body>
</html>