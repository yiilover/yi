// JavaScript Document


$(document).ready(function(){
	$(".zll_wb-nav a").click(function(){
		var id = $(this).html();
		if(id != "全部"){
			$(".ZLL_city").hide();
			$("#city_"+id).show();
		}else{
			$(".ZLL_city").show();
		}
		$(".zll_wb-nav a").attr('class','');
		$(this).addClass('class','allthison');

	});
	
	$("#pj_one").change(function(){
		var cp9 = $(this).val();
		$(".city_tow").hide();
		if(cp9 != -1){
			$("#city_"+cp9).show();
		}
	});
	
	$(".xj_a_css").click(function(){
		var cp9 = $("#pj_one").val();
		var cpm9 = $("#city_"+cp9).val();
		if(!cp9 || cpm9=='' || cpm9=='undefined' || cpm9== -1 || cp9==-1){
			location.href='#';
		}else{
			location.href=cpm9;
		}
	});
	
	
});



