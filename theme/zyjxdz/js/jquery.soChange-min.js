// 修复后的 jquery.soChange-min.js
(function(a) {
    a.fn.extend({
        soChange: function(b) {
            b = a.extend({
                thumbObj: null,
                botPrev: null,
                botNext: null,
                changeType: "fade",
                thumbNowClass: "now",
                thumbOverEvent: true,
                slideTime: 1000,
                autoChange: true,
                clickFalse: true,
                overStop: true,
                changeTime: 5000,
                delayTime: 300
            }, b || {});

            var h = a(this);
            var i;
            var k = h.length; // 修复点1：.size() -> .length
            var e = 0;
            var g;
            var c;
            var f;

            function d() {
                if (e != g) {
                    if (b.thumbObj != null) {
                        a(b.thumbObj).removeClass(b.thumbNowClass).eq(g).addClass(b.thumbNowClass);
                    }
                    if (b.slideTime <= 0) {
                        h.eq(e).hide();
                        h.eq(g).show();
                    } else {
                        if (b.changeType == "fade") {
                            h.eq(e).fadeOut(b.slideTime);
                            h.eq(g).fadeIn(b.slideTime);
                        } else {
                            h.eq(e).slideUp(b.slideTime);
                            h.eq(g).slideDown(b.slideTime);
                        }
                    }
                    e = g;
                    if (b.autoChange == true) {
                        clearInterval(c);
                        c = setInterval(j, b.changeTime);
                    }
                }
            }

            function j() {
                g = (e + 1) % k;
                d();
            }

            h.hide().eq(0).show();
            if (b.thumbObj != null) {
                i = a(b.thumbObj);
                i.removeClass(b.thumbNowClass).eq(0).addClass(b.thumbNowClass);
                // 修复点2：使用 .on() 替代 .click()
                i.on("click", function() {
                    g = i.index(a(this));
                    d();
                    if (b.clickFalse == true) {
                        return false;
                    }
                });
                if (b.thumbOverEvent == true) {
                    // 修复点3：使用 .on() 替代 .mouseenter()/.mouseleave()
                    i.on("mouseenter", function() {
                        g = i.index(a(this));
                        f = setTimeout(d, b.delayTime);
                    }).on("mouseleave", function() {
                        clearTimeout(f);
                    });
                }
            }
            if (b.botNext != null) {
                a(b.botNext).on("click", function() { // 修复点4
                    if (h.queue().length < 1) {
                        j();
                    }
                    return false;
                });
            }
            if (b.botPrev != null) {
                a(b.botPrev).on("click", function() { // 修复点5
                    if (h.queue().length < 1) {
                        g = (e + k - 1) % k;
                        d();
                    }
                    return false;
                });
            }
            if (b.autoChange == true) {
                c = setInterval(j, b.changeTime);
                if (b.overStop == true) {
                    h.on("mouseenter", function() { // 修复点6
                        clearInterval(c);
                    }).on("mouseleave", function() {
                        c = setInterval(j, b.changeTime);
                    });
                }
            }
        }
    });
})(jQuery);