// JavaScript Document
 $(document).ready(function() {

	  var nav = $(".nav").children("ul").children("li:eq(2)");
	  if(nav.children("a").hasClass("current")){
		nav.hover(
	 	function(){
			$(this).find("ul").show();
		},
		function(){
			$(this).find("ul").hide();
		}
	 );
	}else{
	  nav.hover(
	 	function(){
			$(this).children("a").addClass("current");
			$(this).find("ul").show();
		},
		function(){
			$(this).children("a").removeClass("current");
			$(this).find("ul").hide();
		}
	 );
	  }
	  nav.find("ul").children("li").hover(
				function(){
					$(this).children("a").addClass("current");
					$(this).find(".art-list").show();
				},function(){
					$(this).find(".art-list").hide();
					$(this).children("a").removeClass("current");
					}
			);
	 $(".rsider .pul").find("li").hover(
	 	function(){
			$(this).children("a").addClass("current");
			$(this).find("ul").show();
		},
		function(){
			$(this).children("a").removeClass("current");
			$(this).find("ul").hide();
		}
	 );
 });







