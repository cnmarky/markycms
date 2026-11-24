
$(function () {
    var timer = 5000;
    var showtime = 800;
    var showbox = $("#banner_show");
    var inbox = $(".bannger_inbox");
    var movelist = $("#yq_banner_list");
    var s;
    var b = 0;
    var size = inbox.length; // 修复点1：.size() 改为 .length
    var play = 1;

    function move() {
        b++;
        if (b > size - 1) {
            b = 0;
        }
        inbox.each(function (e) {
            inbox.eq(e).hide(0);
            $("#banner_magbox" + e).hide();
            movelist.find("a").eq(e).removeClass("hover");
            if (e === b) { // 修复点2：使用严格相等 ===
                inbox.eq(b).fadeIn(showtime);
                $("#banner_magbox" + b).show();
                movelist.find("a").eq(b).addClass("hover");
            }
        });
    }

    s = setInterval(move, timer);

    function stopp(obj) {
        $(obj).on({ // 修复点3：使用 .on() 替代 .hover()
            mouseenter: function () {
                if (play) {
                    clearInterval(s);
                    play = 0;
                }
            },
            mouseleave: function () {
                if (!play) {
                    s = setInterval(move, timer);
                    play = 1;
                }
            }
        });
    }

    stopp(".banner_show");

    $(".banner_btn_right").on("click", function () { // 修复点4：统一使用 .on()
        move();
    });

    $(".banner_btn_left").on("click", function () {
        b--;
        if (b < 0) {
            b = size - 1;
        }
        inbox.each(function (e) {
            inbox.eq(e).hide(0);
            movelist.find("a").eq(e).removeClass("hover");
            if (e === b) {
                inbox.eq(b).fadeIn(showtime);
                movelist.find("a").eq(b).addClass("hover");
            }
        });
    });

    movelist.find("a").on("click", function () {
        var rel = parseInt($(this).attr("rel"), 10); // 修复点5：转换为数字类型
        inbox.each(function (e) {
            inbox.eq(e).hide(0);
            movelist.find("a").eq(e).removeClass("hover");
            $("#banner_magbox" + e).hide(0);
            if (e === rel) { // 严格相等比较
                inbox.eq(rel).fadeIn(showtime);
                movelist.find("a").eq(rel).addClass("hover");
                $("#banner_magbox" + rel).show(0);
            }
        });
    });

    $(".bannger_inbox").each(function (e) {
        var inboxsize = $(".bannger_inbox").length; // 修复点6：.size() 改为 .length
        var inboxwimg = $(this).find("img").width(); // 修复点7：添加 var 声明
        $(this).css({ 
            "margin-left": (-1) * inboxwimg / 2 + "px", 
            "z-index": inboxsize - e 
        });
    });

    $(".banner").on({
        mouseenter: function () {
            $(".banner_pre_next").stop(true).fadeIn();
        },
        mouseleave: function () {
            $(".banner_pre_next").stop(true).fadeOut();
        }
    });
});


