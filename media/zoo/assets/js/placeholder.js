/* Copyright (C) 2007 - 2011 YOOtheme GmbH, YOOtheme Proprietary Use License (http://www.yootheme.com/license) */

jQuery(function(b){function g(a){var c={},d=/^jQuery\d+$/;b.each(a.attributes,function(a,b){if(b.specified&&!d.test(b.name))c[b.name]=b.value});return c}function d(){var a=b(this);a.val()===a.attr("placeholder")&&a.hasClass("placeholder")&&(a.data("placeholder-password")?a.hide().next().show().focus():a.val("").removeClass("placeholder"))}function e(){var a,c=b(this);if(c.val()===""||c.val()===c.attr("placeholder")){if(c.is(":password")){if(!c.data("placeholder-textinput")){try{a=c.clone().attr({type:"text"})}catch(e){a=
b("<input>").attr(b.extend(g(c[0]),{type:"text"}))}a.removeAttr("name").data("placeholder-password",!0).bind("focus.placeholder",d);c.data("placeholder-textinput",a).before(a)}c=c.hide().prev().show()}c.addClass("placeholder").val(c.attr("placeholder"))}else c.removeClass("placeholder")}var f="placeholder"in document.createElement("input"),h="placeholder"in document.createElement("textarea");b.fn.placeholder=f&&h?function(){return this}:function(){return this.filter((f?"textarea":":input")+"[placeholder]").bind("focus.placeholder",
d).bind("blur.placeholder",e).trigger("blur.placeholder").end()};b(function(){b("form").bind("submit.placeholder",function(){var a=b(".placeholder",this).each(d);setTimeout(function(){a.each(e)},10)})});b(window).bind("unload.placeholder",function(){b(".placeholder").val("")})});
