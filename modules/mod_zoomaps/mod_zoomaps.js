/* Copyright (C) 2007 - 2011 YOOtheme GmbH, YOOtheme Proprietary Use License (http://www.yootheme.com/license) */

var YOOmaps=new Class({initialize:function(a,b){this.setOptions({lat:53.553407,lng:9.992196,marker:!1,popup:!1,text:"",zoom:13,mapCtrl:2,zoomWhl:!0,mapType:0,typeCtrl:!0,overviewCtrl:!0,directions:!0,directionsDestUpdate:!1,directionsTravelMode:0,locale:"en",mainIcon:"red-dot",otherIcon:"blue-dot",iconUrl:"http://maps.google.com/mapfiles/ms/micons/",msgFromAddress:"From address: ",msgGetDirections:"Get directions",msgEmpty:"Please fill in your address.",msgNotFound:"Sorry, address not found!",msgAddressNotFound:", not found!"},
b);this.container=$(a);this.setupMap();this.options.directions&&this.setupDirections()},setupMap:function(){this.map=new google.maps.Map(this.container,{mapTypeId:google.maps.MapTypeId.ROADMAP});this.map.setOptions({navigationControl:this.options.mapCtrl==1||this.options.mapCtrl==2?!0:!1});this.map.setOptions({navigationControlOptions:{style:this.options.mapCtrl==1?google.maps.NavigationControlStyle.SMALL:google.maps.NavigationControlStyle.DEFAULT}});this.map.setOptions({scrollwheel:this.options.zoomWhl?
!0:!1});this.options.mapType==1&&this.map.setOptions({mapTypeId:google.maps.MapTypeId.SATELLITE});this.options.mapType==2&&this.map.setOptions({mapTypeId:google.maps.MapTypeId.HYBRID});this.map.setOptions({mapTypeControl:this.options.typeCtrl?!0:!1});this.infowindow=new google.maps.InfoWindow;this.options.marker?this.addMarkerLatLng(this.options.lat,this.options.lng,this.options.text,!0):this.centerMap(this.options.lat,this.options.lng)},createMarker:function(a,b,c){var d=this.map,e=this.infowindow,
g=new google.maps.MarkerImage(this.options.iconUrl+c+".png",new google.maps.Size(32,32),new google.maps.Point(0,0),new google.maps.Point(16,32)),c=c.match("pushpin")?this.options.iconUrl+"pushpin_shadow.png":this.options.iconUrl+"msmarker.shadow.png",c=new google.maps.MarkerImage(c,new google.maps.Size(56,32),new google.maps.Point(0,0),new google.maps.Point(16,32)),f=new google.maps.Marker({position:a,icon:g,shadow:c,map:this.map});(b||this.options.directionsDestUpdate)&&google.maps.event.addListener(f,
"click",function(){b&&(e.setContent(b),e.open(d,f));if(this.options.directionsDestUpdate)this.options.lat=f.getPosition().lat(),this.options.lng=f.getPosition().lng()}.bind(this));return f},centerMap:function(a,b){this.map.setCenter(new google.maps.LatLng(a,b));this.map.setZoom(this.options.zoom)},addMarkerLatLng:function(a,b,c,d){var e=this.options.otherIcon;if(d)e=this.options.mainIcon;a=new google.maps.LatLng(a,b);e=this.createMarker(a,c,e);d&&(this.map.setCenter(a),this.map.setZoom(this.options.zoom));
d&&c&&this.options.popup&&(this.infowindow.setContent(c),this.infowindow.open(this.map,e))},setupDirections:function(){this.directionsService=new google.maps.DirectionsService;this.directionsDisplay=new google.maps.DirectionsRenderer;this.directionsDisplay.setMap(this.map);this.directionsDisplay.setPanel((new Element("div",{id:"directions"})).injectAfter(this.container));var a='<p><label for="from-address">'+this.options.msgFromAddress+'</label><input id="from-address" type="text" name="address" style="margin:0 5px;" /><button type="submit">'+
this.options.msgGetDirections+"</button></p>";(new Element("form",{method:"get",action:"#",events:{submit:this.setDirections.bindWithEvent(this)}})).setHTML(a).injectAfter(this.container)},setDirections:function(a){var b=this;(new Event(a)).stop();this.clearAlert();a=$("from-address").getValue();a==""?this.showAlert(this.options.msgEmpty):this.directionsService.route({origin:a,destination:new google.maps.LatLng(this.options.lat,this.options.lng),travelMode:google.maps.DirectionsTravelMode.DRIVING,
region:this.options.locale},function(a,d){d==google.maps.DirectionsStatus.OK?b.directionsDisplay.setDirections(a):b.showAlert(b.options.msgNotFound)})},showAlert:function(a){var b=new Element("div",{"class":"alert"});(new Element("strong")).setText(a).injectInside(b);b.injectAfter(this.container)},clearAlert:function(){this.container.getParent().getElements("div.alert").each(function(a){a.remove()})}});YOOmaps.implement(new Options);
