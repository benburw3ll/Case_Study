

(function($) {
    "use strict";

    $(document).ready(function() {

     

      
        /* ===============================  Home 2 Slider =============================== */
        $('#bt-carousel-00dc4').owlCarousel({
            center: true,
            dots: true,
            dotsData: true,
            nav: false,
            lazyLoad: true,
            items: 1,
            loop: false,
            rewind: true,
            autoplay: true,
            autoplayTimeout: 10000,
            autoplayHoverPause: true,
            smartSpeed: 450,
            margin: 0,
        });

     
        /* ===============================  SPLITTING TEXT =============================== */
        Splitting();
        
    });

}(jQuery));



$(document).ready(function() {
        var e = document.querySelectorAll('[data-toggle="countup"]');

        function o(e) {
            var t = e.dataset.from ? +e.dataset.from : null,
                o = e.dataset.to ? +e.dataset.to : null,
                n = e.dataset.decimals ? +e.dataset.decimals : null,
                a = e.dataset.duration ? +e.dataset.duration : null,
                i = e.dataset.options ? JSON.parse(e.dataset.options) : null,
                l = new CountUp(e, t, o, n, a, i);
            l.error ? console.error(l.error) : (l.start(), e.classList.add("counted"))
        }
        "undefined" != typeof CountUp && e && [].forEach.call(e, function(e) {
            "countup:in" !== e.getAttribute("data-aos-id") && o(e)
        }), document.addEventListener("aos:in:countup:in", function(e) {
            if (e.detail instanceof Element) o(e.detail);
            else {
                var t = document.querySelectorAll('.aos-animate[data-aos-id="countup:in"]:not(.counted)');
                [].forEach.call(t, function(e) {
                    o(e)
                })
            }
        })
    

});



/* ===============================  Mouse effect  =============================== */

function mousecursor() {
    if ($("body")) {
        const e = document.querySelector(".cursor-inner"),
            t = document.querySelector(".cursor-outer");
        let n, i = 0,
            o = !1;
        window.onmousemove = function (s) {
            o || (t.style.transform = "translate(" + s.clientX + "px, " + s.clientY + "px)"), e.style.transform = "translate(" + s.clientX + "px, " + s.clientY + "px)", n = s.clientY, i = s.clientX
        }, $("body").on("mouseenter", "a, .cursor-pointer", function () {
            e.classList.add("cursor-hover"), t.classList.add("cursor-hover")
        }), $("body").on("mouseleave", "a, .cursor-pointer", function () {
            $(this).is("a") && $(this).closest(".cursor-pointer").length || (e.classList.remove("cursor-hover"), t.classList.remove("cursor-hover"))
        }), e.style.visibility = "visible", t.style.visibility = "visible"
    }
};

$(function () {
    mousecursor();
});

