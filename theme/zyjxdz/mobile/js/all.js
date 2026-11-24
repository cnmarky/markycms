$(function(){
		$("#cod").click(function(){
		$(this).attr("src","vdimgck.php?" + Math.random());
	})
	$("input,textarea").each(function(){
		$(this).focus(function(){
			$(this).css("border","1px solid #fd4040");
		}).blur(function(){
			$(this).css("border","1px solid #dedede");
		});
	});
	$("#leave_word").submit(function(){
		if($.trim($("input[name='name']").val())==''){
			alert("对不起，请填写您的姓名！");
			$("input[name='name']").focus();
			return false;
		}else if($.trim($("input[name='telephone']").val())==''){
			alert("对不起，请填写您的联系电话！");
			$("input[name='telephone']").focus();
			return false;
		}else if($.trim($("textarea").val())==''){
			alert("对不起，请填写留言内容！");
			$("textarea").focus();
			return false;
		}else if($.trim($("input[name='checkCode']").val())==''){
			alert("对不起，请填写验证码！");
			$("input[name='checkCode']").focus();
			return false;
		}
	});
	$("#forTheJob").submit(function(){
		var error = 0;
		$(".inputText,textarea").each(function(){
			var val = $.trim($(this).val());
			if(val==''){
				alert("请认真填写您的信息，以便我们能更多的了解您！");
				error++;
				$(this).focus();
				return false;
			}
		});
		if(error>0){
			return false;
			$("input[error='0']").focus();
		}
	});

	$("input,textarea").each(function(){
		$(this).focus(function(){
			$(this).css("border","1px solid #fd4040");
		}).blur(function(){
			$(this).css("border","1px solid #dedede");
		});
	});
    // $('#newsContent').find("img").each(function(){

    //   var th = $(this);
    //   var cont = $('#newsContent').html().replace(th.attr("src"),'/' + th.attr("src"));
    //   if(th.attr("src").indexOf('http://')== 0){
          
    //   }else{
      
    //    $('#newsContent').html(cont);

    //   }
    // });

})