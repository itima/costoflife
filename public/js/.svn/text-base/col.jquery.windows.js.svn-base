/** Делаем систему окошек
*
*/


$(function() {

	var oMetaShadow;

	$.aWindowsStack	= {}

	$.initWindows	= function()
	{
		initMetaShadow();
	}
	
	$.registerWindow	= function( $oWindow, aLinks )
	{
		// Вешаем открытие окошка на нужные ссылки
		$( aLinks ).each( function()
			{
				$( this ).bind("click", function()
					{
						showFloatWindow( $oWindow );
						return false;
					});
			});
		// И убираем окошко в body, чтобы по центру было всё.
		$(".FloatWindow").remove().appendTo("body");
	}

	function showFloatWindow( $oWindow )
	{
		showMetaShadow();
		iMarginTop = ($( window ).height() - $oWindow.height()) / 2;
		
		$oWindow.css("top", ($("html").scrollTop() + iMarginTop) + "px").fadeIn("fast");
	}


	function hideFloatWindow( $oWindow )
	{
		hideMetaShadow();
		$( $oWindow ).fadeOut("fast");
	}

	/***************************************************************************
	 * Общее затенение
	 **************************************************************************/
	function initMetaShadow()
	{
	    oMetaShadow = $("<div id='MetaShadow'>").appendTo("body").css(
	        {
	            position: "absolute",
	            zIndex: 90,
	            top: 0,
	            left: 0,
	            backgroundColor: "#000000",
	            opacity: 0.8
	        }).hide();
	}

    function showMetaShadow()
    {
        oMetaShadow.width( $("body").width() ).height( $("body").height() );
        oMetaShadow.fadeIn("fast");
    }
    function hideMetaShadow()
    {
        oMetaShadow.fadeOut("fast");
	}

});


$(document).ready(function(){ $.initWindows() });
 
 
 
