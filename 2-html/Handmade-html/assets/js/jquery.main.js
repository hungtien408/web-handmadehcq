function pageLoad() {
}
(function ($) {
    $(window).load(function () {
        EqualSizer('.product-box .item');
    });
    $(function () {
        myfunload();
        //mypageload();
    });
})(jQuery);
//function===============================================================================================
/*=============================fun=========================================*/
function myfunload() {
    $(".panel-a").mobilepanel();
    $("#menu > li").clone().appendTo($("#menuMobile"));
    $("#menuMobile input").remove();
    $("#menuMobile > li > a").append('<span class="fa fa-chevron-circle-right iconar"></span>');
    $("#menuMobile li li a").append('<span class="fa fa-angle-right iconl"></span>');
    $("#menu li:last-child").addClass("last");
    $("#menu li:first-child").addClass("fisrt");
    jQuery('#menu').superfish({
        animation: { height: 'show' },
        delay: 200
    });
    $(".menu-level").menulevel({
        csscurrent: "active",
        cssicon: true,
        cssdown: "fa fa-caret-down",
        cssup: "fa fa-caret-up"
    });
    $(".menu-level li:last-child").addClass("last");
    $(".menu-level .active").find("ul:first").show();

    $('#sliderBanner').nivoSlider({
        pauseOnHover: true,
        autoplaySpeed: 4000,
        speed: 1000,
        directionNav: false,
        animSpeed: 1500,
    });
    $(document).ready(function () {
        $('.header-lognin').click(function (event) {
            event.stopPropagation();
            $(".lognin").slideToggle("fast");
        });
        $(".lognin").on("click", function (event) {
            event.stopPropagation();
        });
    });
    $(document).on("click", function () {
        $(".lognin").hide();
    });


    $(document).ready(function () {
        $('.cart-bg').click(function (event) {
            event.stopPropagation();
            $(".cart-box").slideToggle("fast");
        });
        $(".cart-box").on("click", function (event) {
            event.stopPropagation();
        });
    });
    $(document).on("click", function () {
        $(".cart-box").hide();
    });

    $(function () {
        $('a[data-modal]').on('click', function () {
            $($(this).data('modal')).modal();
            return false;
        });
    });

    //$("#menu").hover(function () {
    //    $("#menu > ul").stop(true, false, true).slideToggle(300)
    //});
    //$(function () {
    //    $('a[data-modal]').on('click', function () {
    //        $($(this).data('modal')).modal();
    //        return false;
    //    });
    //});
    $(".nav-tabs li:first-child").addClass("active");
    $(".nav-tabs li:first-child a").trigger("click");
    $(".tab-content .tab-pane:first-child").addClass("active");
  
    
            $('#sliderParner').owlCarousel({
                margin: 15,
                loop: true,
                autoplaySpeed: 4000,
                nav: false,
                autoplay: true,
                autoplayTimeout: 2000,
                autoplayHoverPause: true,
                responsive: {
                    0: {
                        items: 2
                    },
                    500: {
                        items: 3
                    },
                    700: {
                        items: 4
                    },
                    1000: {
                        items: 4
                    },
                    1200: {
                        items: 4
                    },
                }
            });

   
            //$('#sliderParner').owlCarousel({
            //    loop: true,
            //    autoplaySpeed: 4000,
            //    nav: true,
            //    autoplay: false,
            //    autoplayTimeout: 2000,
            //    autoplayHoverPause: true,
            //});
    

    $('#slideProduct .slider-for').slick({
        slidesToShow: 1,
        slidesToScroll: 1,
        arrows: false,
        fade: true,
        asNavFor: '#slideProduct .slider-nav'
    });
    $('#slideProduct .slider-nav').slick({
        slidesToShow: 5,
        slidesToScroll: 1,
        asNavFor: '#slideProduct .slider-for',
        dots: false,
        arrows: true,
        focusOnSelect: true,
    });

    $('.silderProduct').slick({
        slidesToShow: 4,
        slidesToScroll: 1,
        autoplay: true,
        vertical: true,
        dots: false,
        arrows: false,
        autoplaySpeed: 2000,
        responsive: [
        {
            breakpoint: 992,
            settings: {
                vertical: false,
                arrows: true,
                slidesToShow: 3
            }
        },
        
         {
             breakpoint: 700,
             settings: {
                 vertical: false,
                 arrows: true,
                 slidesToShow: 2
             }
         },
        {
            breakpoint: 450,
            settings: {
                vertical: false,
                arrows: false,
                slidesToShow: 1
            }
        }
        ]
    });

   
    if ($('#SlideProduct').size() == 1) {
        var newslist = $('#SlideProduct').imagesLoaded(function () {
            newslist.owlCarousel({
                margin: 20,
                loop: true,
                autoplaySpeed: 4000,
                autoplay: true,
                nav: true,
                dots:false,
                autoplayTimeout: 2000,
                autoplayHoverPause: true,
                responsive: {
                    0: {
                        items: 1
                    },
                    450: {
                        items: 2
                    },
                   600: {
                        items: 3
                    },
                    1000: {
                        items: 3
                    },
                    1200: {
                        items: 4
                    },
                }
            });
        });
    }

    
    myfunsroll();
}
/*****************************************************************************/
function initSlider(thisme) {
    var param = $(thisme).attr('href');
    var slide = $(param).children("div").attr("id");
    if ($('#' + slide).size() == 1) {
        var silderProject1 = $('#' + slide).imagesLoaded(function () {
            silderProject1.owlCarousel({
                margin: 10,
                loop: true,
                autoplaySpeed: 1000,
                margin: 15,
                nav: true,
                autoplay: true,
                autoplayTimeout: 2000,
                autoplayHoverPause: true,
                responsive: {
                    0: {
                        items: 1
                    },
                    440: {
                        items: 2
                    },
                    700: {
                        items: 3
                    },
                    1000: {
                        items: 4
                    },
                    1200: {
                        items: 5
                    },
                }
            });
        });
    }
}

/*===============================*/
function myfunsroll() {
    menusroll();
    mysroll();
    $("#sroltop a").click(function () {
        $("html, body").stop(true, true).animate({ scrollTop: 0 }, 500);
        return false;
    });
}
function mysroll() {
    mysrol();
    $(window).scroll(function () {
        mysrol();
    });
}
function mysrol() {
    var topsroll = $(window).scrollTop();
    if (topsroll > 100) {
        $("#sroltop").stop(true, true).animate({ "opacity": 0.8 }, 500);
    } else {
        $("#sroltop").stop(true, true).animate({ "opacity": 0 }, 500);
    }
}
function menusroll() {
    var htop = $("#header").height();
    srollmenu(htop);
    $(window).scroll(function () {
        srollmenu(htop);
    });
}
function srollmenu(htop) {
    if ($(window).scrollTop() > htop) {
        $(".wrapper-menu").addClass("header-sroll");
    } else {
        $(".wrapper-menu").removeClass("header-sroll");
    }
}
//==================

function DoEqualSizer(myclass) {
    var heights = $(myclass).map(function() {
        $(this).height('auto');
        return $(this).height();
    }).get(),
    maxHeight = Math.max.apply(null, heights);
    $(myclass).height(maxHeight);
};

function EqualSizer(myclass) {
    $(document).ready(DoEqualSizer(myclass));
    window.addEventListener('resize', function() { 
        DoEqualSizer(myclass); 
    });
};


$('.body-popup .btn-close').click(function () {
    $(".default-popup").fadeOut();
    $(".body-overlay").fadeOut();
});
$(document).mouseup(function (e) {
    var container = $(".body-popup");
    var selector = $(".body-overlay");
    if (!container.is(e.target) // if the target of the click isn't the container...
        && container.has(e.target).length === 0) // ... nor a descendant of the container
    {
        container.fadeOut();
        selector.fadeOut();
    }
});
