/*
 Copyright (c) 2010 Brandon Aaron (http://brandonaaron.net)
 Licensed under the MIT License (LICENSE.txt).

 Thanks to: http://adomas.org/javascript-mouse-wheel/ for some pointers.
 Thanks to: Mathias Bank(http://www.mathias-bank.de) for a scope bug fix.
 Thanks to: Seamus Leahy for adding deltaX and deltaY

 Version: 3.0.4

 Requires: 1.2.2+
*/
(function(f){f.browser.msie&&parseInt(f.browser.version)<9&&(f(document).ready(function(){f("body").addClass("wk-ie wk-ie"+parseInt(f.browser.version))}),f.each(["abbr","article","aside","audio","canvas","details","figcaption","figure","footer","header","hgroup","mark","meter","nav","output","progress","section","summary","time","video"],function(){document.createElement(this)}))})(jQuery);
(function(f){f.trans={__data:{},addDic:function(e){f.extend(this.__data,e)},add:function(e,a){this.__data[e]=a},get:function(e){if(!this.__data[e])return e;var a=arguments.length==1?[]:Array.prototype.slice.call(arguments,1);return this.printf(String(this.__data[e]),a)},printf:function(e,a){if(!a)return e;var c="",b=e.split("%s");if(b.length==1)return e;for(var d=0;d<a.length;d++)b[d].lastIndexOf("%")==b[d].length-1&&d!=a.length-1&&(b[d]+="s"+b.splice(d+1,1)[0]),c+=b[d]+a[d];return c+b[b.length-1]}}})(jQuery);
(function(f){f.easing.jswing=f.easing.swing;f.extend(f.easing,{def:"easeOutQuad",swing:function(e,a,c,b,d){return f.easing[f.easing.def](e,a,c,b,d)},easeInQuad:function(e,a,c,b,d){return b*(a/=d)*a+c},easeOutQuad:function(e,a,c,b,d){return-b*(a/=d)*(a-2)+c},easeInOutQuad:function(e,a,c,b,d){if((a/=d/2)<1)return b/2*a*a+c;return-b/2*(--a*(a-2)-1)+c},easeInCubic:function(e,a,c,b,d){return b*(a/=d)*a*a+c},easeOutCubic:function(e,a,c,b,d){return b*((a=a/d-1)*a*a+1)+c},easeInOutCubic:function(e,a,c,b,
d){if((a/=d/2)<1)return b/2*a*a*a+c;return b/2*((a-=2)*a*a+2)+c},easeInQuart:function(e,a,c,b,d){return b*(a/=d)*a*a*a+c},easeOutQuart:function(e,a,c,b,d){return-b*((a=a/d-1)*a*a*a-1)+c},easeInOutQuart:function(e,a,c,b,d){if((a/=d/2)<1)return b/2*a*a*a*a+c;return-b/2*((a-=2)*a*a*a-2)+c},easeInQuint:function(e,a,c,b,d){return b*(a/=d)*a*a*a*a+c},easeOutQuint:function(e,a,c,b,d){return b*((a=a/d-1)*a*a*a*a+1)+c},easeInOutQuint:function(e,a,c,b,d){if((a/=d/2)<1)return b/2*a*a*a*a*a+c;return b/2*((a-=
2)*a*a*a*a+2)+c},easeInSine:function(e,a,c,b,d){return-b*Math.cos(a/d*(Math.PI/2))+b+c},easeOutSine:function(e,a,c,b,d){return b*Math.sin(a/d*(Math.PI/2))+c},easeInOutSine:function(e,a,c,b,d){return-b/2*(Math.cos(Math.PI*a/d)-1)+c},easeInExpo:function(e,a,c,b,d){return a==0?c:b*Math.pow(2,10*(a/d-1))+c},easeOutExpo:function(e,a,c,b,d){return a==d?c+b:b*(-Math.pow(2,-10*a/d)+1)+c},easeInOutExpo:function(e,a,c,b,d){if(a==0)return c;if(a==d)return c+b;if((a/=d/2)<1)return b/2*Math.pow(2,10*(a-1))+c;
return b/2*(-Math.pow(2,-10*--a)+2)+c},easeInCirc:function(e,a,c,b,d){return-b*(Math.sqrt(1-(a/=d)*a)-1)+c},easeOutCirc:function(e,a,c,b,d){return b*Math.sqrt(1-(a=a/d-1)*a)+c},easeInOutCirc:function(e,a,c,b,d){if((a/=d/2)<1)return-b/2*(Math.sqrt(1-a*a)-1)+c;return b/2*(Math.sqrt(1-(a-=2)*a)+1)+c},easeInElastic:function(e,a,c,b,d){var e=1.70158,g=0,f=b;if(a==0)return c;if((a/=d)==1)return c+b;g||(g=d*0.3);f<Math.abs(b)?(f=b,e=g/4):e=g/(2*Math.PI)*Math.asin(b/f);return-(f*Math.pow(2,10*(a-=1))*Math.sin((a*
d-e)*2*Math.PI/g))+c},easeOutElastic:function(e,a,c,b,d){var e=1.70158,g=0,f=b;if(a==0)return c;if((a/=d)==1)return c+b;g||(g=d*0.3);f<Math.abs(b)?(f=b,e=g/4):e=g/(2*Math.PI)*Math.asin(b/f);return f*Math.pow(2,-10*a)*Math.sin((a*d-e)*2*Math.PI/g)+b+c},easeInOutElastic:function(e,a,c,b,d){var e=1.70158,g=0,f=b;if(a==0)return c;if((a/=d/2)==2)return c+b;g||(g=d*0.3*1.5);f<Math.abs(b)?(f=b,e=g/4):e=g/(2*Math.PI)*Math.asin(b/f);if(a<1)return-0.5*f*Math.pow(2,10*(a-=1))*Math.sin((a*d-e)*2*Math.PI/g)+c;
return f*Math.pow(2,-10*(a-=1))*Math.sin((a*d-e)*2*Math.PI/g)*0.5+b+c},easeInBack:function(e,a,c,b,d,g){g==void 0&&(g=1.70158);return b*(a/=d)*a*((g+1)*a-g)+c},easeOutBack:function(e,a,c,b,d,g){g==void 0&&(g=1.70158);return b*((a=a/d-1)*a*((g+1)*a+g)+1)+c},easeInOutBack:function(e,a,c,b,d,g){g==void 0&&(g=1.70158);if((a/=d/2)<1)return b/2*a*a*(((g*=1.525)+1)*a-g)+c;return b/2*((a-=2)*a*(((g*=1.525)+1)*a+g)+2)+c},easeInBounce:function(e,a,c,b,d){return b-f.easing.easeOutBounce(e,d-a,0,b,d)+c},easeOutBounce:function(e,
a,c,b,d){return(a/=d)<1/2.75?b*7.5625*a*a+c:a<2/2.75?b*(7.5625*(a-=1.5/2.75)*a+0.75)+c:a<2.5/2.75?b*(7.5625*(a-=2.25/2.75)*a+0.9375)+c:b*(7.5625*(a-=2.625/2.75)*a+0.984375)+c},easeInOutBounce:function(e,a,c,b,d){if(a<d/2)return f.easing.easeInBounce(e,a*2,0,b,d)*0.5+c;return f.easing.easeOutBounce(e,a*2-d,0,b,d)*0.5+b*0.5+c}})})(jQuery);
(function(f){function e(a){var b=a||window.event,d=[].slice.call(arguments,1),e=0,i=0,h=0,a=f.event.fix(b);a.type="mousewheel";a.wheelDelta&&(e=a.wheelDelta/120);a.detail&&(e=-a.detail/3);h=e;b.axis!==void 0&&b.axis===b.HORIZONTAL_AXIS&&(h=0,i=-1*e);b.wheelDeltaY!==void 0&&(h=b.wheelDeltaY/120);b.wheelDeltaX!==void 0&&(i=-1*b.wheelDeltaX/120);d.unshift(a,e,i,h);return f.event.handle.apply(this,d)}var a=["DOMMouseScroll","mousewheel"];f.event.special.mousewheel={setup:function(){if(this.addEventListener)for(var c=
a.length;c;)this.addEventListener(a[--c],e,!1);else this.onmousewheel=e},teardown:function(){if(this.removeEventListener)for(var c=a.length;c;)this.removeEventListener(a[--c],e,!1);else this.onmousewheel=null}};f.fn.extend({mousewheel:function(a){return a?this.bind("mousewheel",a):this.trigger("mousewheel")},unmousewheel:function(a){return this.unbind("mousewheel",a)}})})(jQuery);
