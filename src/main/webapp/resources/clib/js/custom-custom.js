
(function($) {
    // 'use strict';

    // Cause Slider
//    var causesSlider = new Swiper('.causes-slider-3', {
//        slidesPerView: 3,
//        spaceBetween: 30,
//        navigation: {
//            nextEl: '.swiper-button-next',
//            prevEl: '.swiper-button-prev'
//        },
//        breakpoints: {
//            1200: {
//                slidesPerView: 2,
//                spaceBetween: 30,
//            },
//            768: {
//                slidesPerView: 1,
//                spaceBetween: 0,
//            }
//        }
//    });


    // Circular Progress Bar
    $('#loader_1').circleProgress({
        startAngle: -Math.PI / 4 * 2,
        value: 0.83,
        size: 156,
        thickness: 3,
        fill: {
            gradient: ["#01af96", "#01afa5"]
        }
    }).on('circle-animation-progress', function(event, progress) {
        $(this).find('strong').html(Math.round(83 * progress) + '<i>%</i>');
    });

    $('#loader_2').circleProgress({
        startAngle: -Math.PI / 4 * 2,
        value: 0.9999,
        size: 156,
        thickness: 3,
        fill: {
            gradient: ["#01af96", "#01afa5"]
        }
    }).on('circle-animation-progress', function(event, progress) {
        $(this).find('strong').html(Math.round(100 * progress) + '<i>%</i>');
    });

    $('#loader_3').circleProgress({
        startAngle: -Math.PI / 4 * 2,
        value: 0.75,
        size: 156,
        thickness: 3,
        fill: {
            gradient: ["#01af96", "#01afa5"]
        }
    }).on('circle-animation-progress', function(event, progress) {
        $(this).find('strong').html(Math.round(75 * progress) + '<i>%</i>');
    });

    $('#loader_4').circleProgress({
        startAngle: -Math.PI / 4 * 2,
        value: 0.65 ,
        size: 156,
        thickness: 3,
        fill: {
            gradient: ["#01af96", "#01afa5"]
        }
    }).on('circle-animation-progress', function(event, progress) {
        $(this).find('strong').html(Math.round(65 * progress) + '<i>%</i>');
    });

    // Counter
    $(".start-counter").each(function () {
        var counter = $(this);

        counter.countTo({
            formatter: function (value, options) {
                return value.toFixed(options.decimals).replace(/\B(?=(?:\d{3})+(?!\d))/g, ',');
            }
        });
    });

    // Bar Filler
    $('.featured-fund-raised-bar').barfiller({ barColor: '#01af96', duration: 1500 });

    $('.fund-raised-bar-1').barfiller({ barColor: '#01af96', duration: 1500 });
    $('.fund-raised-bar-2').barfiller({ barColor: '#01af96', duration: 1500 });
    $('.fund-raised-bar-3').barfiller({ barColor: '#01af96', duration: 1500 });
    $('.fund-raised-bar-4').barfiller({ barColor: '#01af96', duration: 1500 });
    $('.fund-raised-bar-5').barfiller({ barColor: '#01af96', duration: 1500 });
    $('.fund-raised-bar-6').barfiller({ barColor: '#01af96', duration: 1500 });

    // Load more
    let $container      = $('.portfolio-container');
    let $item           = $('.portfolio-item');

    $item.slice(0, 9).addClass('visible');

    $('.load-more-btn').on('click', function (e) {
        e.preventDefault();

        $('.portfolio-item:hidden').slice(0, 9).addClass('visible');
    });



})(jQuery);
