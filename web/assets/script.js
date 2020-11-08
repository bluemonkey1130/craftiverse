'use strict';
(function ($) {

    function sliders() {
        //HERO SLIDER
        $('.slider').slick({
            infinite: true,
            slidesToShow: 1,
            slidesToScroll: 1,
            arrows: false,
            fade: true
        });
        //HERO SLIDER NAVIGATION
        $('.slider-nav').slick({
            slidesToShow: 3,
            slidesToScroll: 1,
            asNavFor: '.slider',
            dots: false,
            centerMode: true,
            focusOnSelect: true
        });
        //CHANNEL SLIDER
        $(".slider-channels").slick({
            slidesToShow: 3,
            arrows: false,
            responsive: [
                {
                    breakpoint: 768,
                    settings: {
                        slidesToShow: 2
                    }
                },
                {
                    breakpoint: 480,
                    settings: {
                        slidesToShow: 1
                    }
                }
            ]
        });
        //CHANNEL SLIDER FILTER
        var filtered = false;
        var filter = 'channel-10';
        $('*[data-attribute="channel-10"]').addClass('active')
        $('.slider-channels').slick('slickFilter', '.' + filter);
        $('.filter-btn').on('click', function () {
            $('.filter-btn').removeClass('active');
            var filter = $(this).data('attribute');
            $('.slider-channels').slick('slickUnfilter').slick('slickFilter', '.' + filter);
            $(this).addClass('active');
            filtered = true;
        });
    }

    // CALL SLIDERS ON PAGE LOAD
    sliders();


    barba.init({
        transitions: [{
            name: 'opacity-transition',
            leave(data) {
                return gsap.to(data.current.container, {
                    opacity: 0, duration: 0.2
                });
            },
            enter(data) {
                return gsap.from(data.next.container, {
                    opacity: 0, duration: 0.2
                });

            }
        }]
    });


    videojs("my-video", {}, function () {
        // Player (this) is initialized and ready.
        var myPlayer = this;
        myPlayer.play();

    });

    // CALL BACK FROM BARBA
    barba.hooks.enter((data) => {
        sliders();

    });

})(jQuery); // Fully reference jQuery after this point.
