/*******************************************************************************
 * 
 ******************************************************************************/

$(function() {

	$._oLoaded = {
		"windows" : false,
		"scrolltable" : true
	};

	/**
	 * подключаем всякие плагины
	 */
	$.getScript("/js/col.jquery.windows.js", function() {
		$._oLoaded.windows = true;
		$.tryToInitAllSite();
	});

/*
	$.getScript("/js/col.jquery.scrolltable.js", function() {
		$._oLoaded.scrolltable = true;
		$.tryToInitAllSite();
	});
*/

	/**
	 * Определяем константы
	 */

	/**
	 * Некоторый МетаИнит, который проверяет, все ли плагины загрузились.
	 * Работать надо через него.
	 */
	$.tryToInitAllSite = function()
	{ 		

		for ( var i in $._oLoaded)
		{
			if ($._oLoaded[i] == false)
			{
				return false;
			}
		}

		// Всё ок, можно инициализировать
		$.initPage();
	};

	$.initPage = function()
	{
		initOpenableList();
		initWindows();
		initBreadCrumbs();
//		initScrollTables();
		initAjaxFunctions();
    };

	/***************************************************************************
	 * Открывающиеся списки
	 **************************************************************************/
	function initOpenableList()
	{

		var $oOpenableDT = $("dl.Openable>dt");
		var $oOpenableDD = $("dl.Openable>dd");

		$oOpenableDT.toggle(
			function(){
				$oOpenableDD.eq($oOpenableDT.index( this )).slideDown("fast");
				$( this ).addClass("Selected");
			},
			function(){
				$oOpenableDD.eq($oOpenableDT.index( this )).slideUp("fast");
				$( this ).removeClass("Selected");
			}
		);

/* 		$oOpenableDD.hide(); */
	}

	/***************************************************************************
	 * Список марок и моделей
	 **************************************************************************/
	function initWindows()
	{
		// Не нашли свою марку? ;)
		$.registerWindow( $("#HaveAnotherCar form.FloatWindow"), [$("#HaveAnotherCar>a").eq(0)]);

	}

	/***************************************************************************
	 * Скроллируемая таблица
	 **************************************************************************/
	function initScrollTables()
	{
		 $("div.ScrollingTableIn table").morphToScrollable();
	}
	
	function initAjaxFunctions()
	{
		// All A tags with class 'get', 'post', 'put' or 'delete' will perform an ajax call
	  jQuery('a.get').livequery('click', function() {
	    var link = jQuery(this);
	    $.get(link.attr('href'), function(data) {
	      if (link.attr('ajaxtarget'))
	        jQuery(link.attr('ajaxtarget')).html(data);
	    });
	    return false;
	  }).attr("rel", "nofollow");
	 
	  jQuery('a.post').livequery('click', function() {
	    var link = jQuery(this);
	    $.post(jQuery(this).attr('href'), "_method=post", function(data) {
	      if (link.attr('ajaxtarget'))
	        jQuery(link.attr('ajaxtarget')).html(data);
	    });
	    return false;
	  }).attr("rel", "nofollow");
	 
	  jQuery('a.put').livequery('click', function() {
	    var link = jQuery(this);
	    $.post(jQuery(this).attr('href'), "_method=put", function(data) {
	      if (link.attr('ajaxtarget'))
	        jQuery(link.attr('ajaxtarget')).html(data);
	    });
	    return false;
	  }).attr("rel", "nofollow");
	 
	  jQuery('a.delete').livequery('click', function() {
	    var link = jQuery(this);
	    $.post(jQuery(this).attr('href'), "_method=delete", function(data) {
	      if (link.attr('ajaxtarget'))
	        jQuery(link.attr('ajaxtarget')).html(data);
	    });
	    return false;
	  }).attr("rel", "nofollow");
	 
	  jQuery('a.get, a.post, a.put, a.delete').removeAttr('onclick');
	}

	/***************************************************************************
	 * Хлебные крошки
	 **************************************************************************/
	function initBreadCrumbs()
	{

		 $("#SubHeader a.Crumb").bind("mouseover", function()
		 	{
		 		$( this ).addClass("Hovered");
		 	});
		 $("#SubHeader a.Crumb").bind("mouseout", function()
		 	{
		 		bSubMenuHovered = false;
		 		var $oSelf = $( this );
		 		setTimeout( function(){ hideBreadCrumbMenu( $oSelf );}, 250);
		 	});
		 $("#SubHeader a.Crumb").bind("click", function()
		 	{
		 		$("#SubHeader UL UL").hide();
		 		$( this ).parent().find("ul").fadeIn("fast")
		 			.bind("mouseover", function()
		 				{
					 		bSubMenuHovered = true;
		 				})
		 			.bind("mouseout", function()
		 				{
					 		bSubMenuHovered = false;
					 		var $oSelf = $( this );
		 					setTimeout( function(){ hideBreadCrumbMenu( $oSelf );}, 250);
		 				});
		 		return false;
		 	});
	}

	function hideBreadCrumbMenu( $oLink )
	{
		if( !bSubMenuHovered )
		{
		 	$oLink.removeClass("Hovered");
			$oLink.parent().find("ul").fadeOut("fast");
		}
	}

});

/** *************************************************** */
$(document).ready(function() {
	$.tryToInitAllSite(); 
});
