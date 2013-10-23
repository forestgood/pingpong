/*-------------------------------------------------------------------- 
 * jQuery plugin: customInput()
 * by Maggie Wachs and Scott Jehl, http://www.filamentgroup.com
 * Copyright (c) 2009 Filament Group
 * Dual licensed under the MIT (filamentgroup.com/examples/mit-license.txt) and GPL (filamentgroup.com/examples/gpl-license.txt) licenses.
 * Article: http://www.filamentgroup.com/lab/accessible_custom_designed_checkbox_radio_button_inputs_styled_css_jquery/  
 * Usage example below (see comment "Run the script...").
--------------------------------------------------------------------*/
jQuery.fn.customInput=function(){$(this).each(function(a){if($(this).is("[type=checkbox],[type=radio]")){var b=$(this),c=$("label[for="+b.attr("id")+"]"),d=b.is("[type=checkbox]")?"checkbox":"radio";$('<div class="custom-'+d+'"></div>').insertBefore(b).append(b,c);var e=$("input[name="+b.attr("name")+"]");c.hover(function(){$(this).addClass("hover"),d=="checkbox"&&b.is(":checked")&&$(this).addClass("checkedHover")},function(){$(this).removeClass("hover checkedHover")}),b.bind("updateState",function(){b.is(":checked")?(b.is(":radio")&&e.each(function(){$("label[for="+$(this).attr("id")+"]").removeClass("checked")}),c.addClass("checked")):c.removeClass("checked checkedHover checkedFocus")}).trigger("updateState").click(function(){$(this).trigger("updateState")}).focus(function(){c.addClass("focus"),d=="checkbox"&&b.is(":checked")&&$(this).addClass("checkedFocus")}).blur(function(){c.removeClass("focus checkedFocus")})}})};