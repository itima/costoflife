/** 
* Скроллируемые таблицы
*/


$(function() {


	$.initScrollableTables	= function()
	{
		$(".ScrollingTableIn .ScrollingTable").morphToScrollable();
	}
	
	$.fn.morphToScrollable	= function( options )
	{
		this.each( function()
			{
				$( this ).parent().parent().height( $( this ).outerHeight() + 100);
				$("tbody", this ).css("overflow","scroll");
				$("tbody tr", this).hover(
					function(){ $( this ).addClass("Hovered"); },
					function(){ $( this ).removeClass("Hovered"); }
				);
				
				
				$oFakeTH  = $("<div class='ScrollingTablePseudoTH'>").prependTo( $( this ).parent().parent() );
				$oFakeTable  = $("<table>").appendTo( $oFakeTH );
				$oFakeTableThead	= $("<thead>").appendTo( $oFakeTable );
				$("thead th", this).each( function()
					{
						var $this = $( this );
						var $oTempTr = $("<tr>").appendTo( $oFakeTableThead ).addClass( $this.parent().attr("class") );
						var $oTempTh = $("<th>")
								.addClass( $this.attr("class") )
								.width( $this.width() )
								.height( $this.height() +1)
								.html(" ")
								.appendTo( $oTempTr );
							$("<em> </em>").prependTo( $oTempTh );
					});
				
				$oFakeTableTbody	= $("<tbody>").appendTo( $oFakeTable );
				$("tbody th", this).each( function()
					{
						var $this = $( this );
						var $oTempTr = $("<tr>").appendTo( $oFakeTableTbody ).addClass( $this.parent().attr("class") );
							$("<th>")
								.addClass( $this.attr("class") )
								.width( $this.width() )
								.height( $this.height() )
								.html( $this.html() )
								.appendTo( $oTempTr );
					});
				$oFakeTH.css("top", $( this ).position().top + 7);
				$("th", this).css("visibility","hidden")
//				$( this ).css("marginLeft", $oFakeTH.outerWidth() );
//				
				
			});
	}



});


$(document).ready(function(){ $.initScrollableTables() });
 
 
 
