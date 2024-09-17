$(document).ready(function() {

	var lastEvent = null;
	var slide  = "#wrapGnb .menuUItop .top_k2wiz_GNB > li > div._childDiv";
	var alink  = "#wrapGnb .menuUItop .top_k2wiz_GNB > li > a";

	function k2menu(){
		if (this == lastEvent) return false;
		lastEvent = this;
		setTimeout(function() {lastEvent = null}, 200);

		if ($(this).attr('class') != '_active') {
			$(slide).stop().hide();
			$(this).next(slide).fadeIn();
			$(alink).removeClass('_active');
			$(this).addClass('_active');
			$(".li_1").removeClass('_active');
			$(this).parent().addClass('_active');
		} else if ($(this).next(slide).is(':hidden')) {
			$(slide).stop().hide();
			$(this).next(slide).fadeIn();
		} else {
			$(this).next(slide).stop().hide();
		}
	}

	$(alink).mouseenter(k2menu).focus(k2menu);
	$("#wrapGnb").mouseleave(function() {
		$(slide).stop().hide();
	});

	/* 모바일 메뉴 열기/닫기 */
	$("#mMenuOpen").click(function() {
		$(this).addClass("hidden");
		$("#wrapGnb").fadeIn();
		$("#mMenuClose").removeClass("hidden");
	});
	$("#mMenuClose").click(function() {
		$(this).addClass("hidden");
		$("#wrapGnb").fadeOut();
		$("#mMenuOpen").removeClass("hidden");
	});

	$(window).on("load resize", function() {
		if($("body.Mobile").length > 0){
			//mobile funtion
			topMenuWidthReset();
		} else if($("body.Tablet").length > 0){
			//tablet funtion
			topMenuWidthReset();
		} else {
			//desktop funtion
			topMenuWidth();
		}
	});

});

function topMenuWidth(){
	var menuTopwidth = $("#wrapGnb").width();
	var menuTopLength = $(".top_div .a_1").length;
	var menuTopLiWidth = menuTopwidth / menuTopLength;
	var menuTopDivWidth = menuTopwidth / menuTopLength + 1;
	$(".top_div .li_1").css("width",menuTopLiWidth + "px");
	$(".top_div .li_1 > .div_2").css("width",menuTopDivWidth + "px");
	$(".top_div .li_1._last > .div_2").css("width",menuTopLiWidth + "px");
}
function topMenuWidthReset(){
	$(".top_div .li_1").removeAttr("style");
	$(".top_div .li_1 > .div_2").removeAttr("style");
	$(".top_div .li_1._last > .div_2").removeAttr("style");
}

function jumpMenu(jumpId){
	var link = $("#jumpMenu"+jumpId).val().split(",")[0];
	var target = $("#jumpMenu"+jumpId).val().split(",")[1];
	if(target=="_blank"){
		window.open(link);
	}else{
		location.href=link;
	}
}
