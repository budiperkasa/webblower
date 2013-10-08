/* Copyright (C) 2007 - 2011 YOOtheme GmbH, YOOtheme Proprietary Use License (http://www.yootheme.com/license) */

(function(d){var c=function(){};c.prototype=d.extend(c.prototype,{name:"galleryslideshow",options:{index:0,width:"auto",height:"auto",autoplay:!0,interval:3E3,navbar_items:4,caption_animation_duration:500},nav:null,navbar:null,captions:null,caption:null,initialize:function(a,g){var b=this,e=0,c=0;this.options=d.extend({},d.widgetkit.effects.defaults,this.options,g);this.element=this.wrapper=a;this.ul=this.wrapper.find("ul.slides:first");this.ul.children().each(function(){e=Math.max(e,d(this).height());
c=Math.max(c,d(this).width())});if(this.options.height=="auto")this.options.height=e;if(this.options.width=="auto")this.options.width=c;this.wrapper.css({position:"relative",width:this.options.width});this.slides=this.ul.css({position:"relative",overflow:"hidden",height:this.options.height}).children().css({top:"0px",left:"0px",position:"absolute",width:this.wrapper.width(),height:this.options.height}).hide();this.index=this.slides[this.options.index]?this.options.index:0;d(".next",this.wrapper).bind("click",
function(){b.stop();b.nextSlide()});d(".prev",this.wrapper).bind("click",function(){b.stop();b.prevSlide()});d(this.slides.get(this.index)).show();if(this.wrapper.find(".nav:first").length){this.nav=this.wrapper.find(".nav:first");var f=this.nav.children();this.nav.parent().hasClass("navbar")&&this.initNavbar(f);f.children().each(function(a){d(this).bind("click",function(){b.stop();b.slides[a]&&b.show(a)})});a.bind("slideshow-show",function(a,b,c){d(f.removeClass("active").get(c)).addClass("active")})}if(this.wrapper.find(".captions:first").length&&
this.wrapper.find(".caption:first").length)this.captions=this.wrapper.find(".captions:first").hide().children(),this.caption=this.wrapper.find(".caption:first").hide();this.nav&&d(this.nav.children().get(this.index)).addClass("active");this.navbar&&d(this.navbar.children().get(this.index)).addClass("active");this.showCaption(this.index);this.timer=null;this.hover=!1;this.wrapper.hover(function(){b.hover=!0},function(){b.hover=!1});this.options.autoplay&&this.start();"ontouchend"in document&&(a.bind("touchstart",
function(b){function c(a){if(e){var b=a.originalEvent.touches?a.originalEvent.touches[0]:a;f={time:(new Date).getTime(),coords:[b.pageX,b.pageY]};Math.abs(e.coords[0]-f.coords[0])>10&&a.preventDefault()}}var g=b.originalEvent.touches?b.originalEvent.touches[0]:b,e={time:(new Date).getTime(),coords:[g.pageX,g.pageY],origin:d(b.target)},f;a.bind("touchmove",c).one("touchend",function(){a.unbind("touchmove",c);e&&f&&f.time-e.time<1E3&&Math.abs(e.coords[0]-f.coords[0])>30&&Math.abs(e.coords[1]-f.coords[1])<
75&&e.origin.trigger("swipe").trigger(e.coords[0]>f.coords[0]?"swipeleft":"swiperight");e=f=void 0})}),this.wrapper.bind("swipeleft",function(){b.stop();b.nextSlide()}).bind("swiperight",function(){b.stop();b.prevSlide()}))},nextSlide:function(){this.show(this.slides[this.index+1]?this.index+1:0)},prevSlide:function(){this.show(this.index-1>-1?this.index-1:this.slides.length-1)},show:function(a){if(!(this.index==a||this.fx))this.current=d(this.slides.get(this.index)),this.next=d(this.slides.get(a)),
this.animated=this.options.animated,this.duration=this.options.duration,this.easing=this.options.easing,this.dir=a>this.index?"right":"left",this.showCaption(a),this.element.trigger("slideshow-show",[this.index,a]),this.index=a,d.widgetkit.effects.show.apply(this)},showCaption:function(a){if(this.caption&&this.captions[a]){var c=d(this.captions.get(a)).html();d.trim(c)==""?this.caption.is(":visible")&&this.caption.fadeOut(this.options.caption_animation_duration):this.caption.is(":visible")?this.caption.fadeOut(this.options.caption_animation_duration,
function(){d(this).html(c)}).delay(200).fadeIn(this.options.caption_animation_duration):this.caption.html(c).fadeIn(this.options.caption_animation_duration)}},start:function(){if(!this.timer){var a=this;this.timer=setInterval(function(){a.hover||a.nextSlide()},this.options.interval)}},stop:function(){this.timer&&clearInterval(this.timer)},initNavbar:function(a){this.nav.wrap('<div class="navbar-container" />');var c=this.options.navbar_items,b=this.nav.parent().width();itemwidth=Math.round(b/c);$this=
this;this.nav.width(itemwidth*a.length).data("basewidth",b).data("itemwidth",itemwidth);a.each(function(){d(this).css("min-width",itemwidth)});this.element.bind("slideshow-show",function(a,b,c){a=$this.options.navbar_items;b=Math.ceil((b+1)/a);c=Math.ceil((c+1)/a);a=$this.nav.data("basewidth");c!=b&&$this.nav.animate({"margin-left":(c-1)*-1*a})})}});d.fn[c.prototype.name]=function(){var a=arguments,g=a[0]?a[0]:null;return this.each(function(){var b=d(this);if(c.prototype[g]&&b.data(c.prototype.name)&&
g!="initialize")b.data(c.prototype.name)[g].apply(b.data(c.prototype.name),Array.prototype.slice.call(a,1));else if(!g||d.isPlainObject(g)){var e=new c;c.prototype.initialize&&e.initialize.apply(e,d.merge([b],a));b.data(c.prototype.name,e)}else d.error("Method "+g+" does not exist on jQuery."+c.name)})}})(jQuery);
