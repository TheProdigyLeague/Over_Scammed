﻿// (c) 2010 CodePlex Foundation
(function(){var b="ExtendedRoundedCorners";function a(){var b=null,a=true;Type.registerNamespace("Sys.Extended.UI");Sys.Extended.UI.BoxCorners=function(){throw Error.invalidOperation();};Sys.Extended.UI.BoxCorners.prototype={None:0,TopLeft:1,TopRight:2,BottomRight:4,BottomLeft:8,Top:1|2,Right:2|4,Bottom:4|8,Left:8|1,All:1|2|4|8};Sys.Extended.UI.BoxCorners.registerEnum("Sys.Extended.UI.BoxCorners",a);Sys.Extended.UI.RoundedCornersBehavior=function(d){var c=this;Sys.Extended.UI.RoundedCornersBehavior.initializeBase(c,[d]);c._corners=Sys.Extended.UI.BoxCorners.All;c._radius=5;c._color=b;c._parentDiv=b;c._originalStyle=b;c._borderColor=b;c._isDirty=a};Sys.Extended.UI.RoundedCornersBehavior.prototype={initialize:function(){Sys.Extended.UI.RoundedCornersBehavior.callBaseMethod(this,"initialize");this.update()},dispose:function(){this.disposeParentDiv();Sys.Extended.UI.RoundedCornersBehavior.callBaseMethod(this,"dispose")},update:function(){var e="0px",j="none",f="1px",i="solid",h="px",d=this,c=d.get_element();if(!c||!d._isDirty||d.get_isUpdating())return;d.disposeParentDiv();if(c.style.borderRadius!=undefined){c.style.borderRadius=d._radius+h;if(d._borderColor){c.style.border=i;c.style.borderWidth=f;c.style.borderColor=d._borderColor}else{c.style.border=j;c.style.borderWidth=e}if(!d.isCornerSet(Sys.Extended.UI.BoxCorners.TopLeft))c.style.borderTopLeftRadius=e;if(!d.isCornerSet(Sys.Extended.UI.BoxCorners.BottomLeft))c.style.borderBottomLeftRadius=e;if(!d.isCornerSet(Sys.Extended.UI.BoxCorners.TopRight))c.style.borderTopRightRadius=e;if(!d.isCornerSet(Sys.Extended.UI.BoxCorners.BottomRight))c.style.borderBottomRightRadius=e}else if(c.style.MozBorderRadius!=undefined){c.style.MozBorderRadius=d._radius+h;if(d._borderColor){c.style.border=i;c.style.borderWidth=f;c.style.borderColor=d._borderColor}else{c.style.border=j;c.style.borderWidth=e}if(!d.isCornerSet(Sys.Extended.UI.BoxCorners.TopLeft))c.style.MozBorderRadiusTopleft=e;if(!d.isCornerSet(Sys.Extended.UI.BoxCorners.BottomLeft))c.style.MozBorderRadiusBottomleft=e;if(!d.isCornerSet(Sys.Extended.UI.BoxCorners.TopRight))c.style.MozBorderRadiusTopright=e;if(!d.isCornerSet(Sys.Extended.UI.BoxCorners.BottomRight))c.style.MozBorderRadiusBottomright=e}else if(c.style.WebkitBorderRadius!=undefined){c.style.WebkitBorderRadius=d._radius+h;if(d._borderColor){c.style.border=i;c.style.borderWidth=f;c.style.borderColor=d._borderColor}else{c.style.border=j;c.style.borderWidth=e}if(!d.isCornerSet(Sys.Extended.UI.BoxCorners.TopLeft))c.style.WebkitBorderRadiusTopLeft=e;if(!d.isCornerSet(Sys.Extended.UI.BoxCorners.BottomLeft))c.style.WebkitBorderRadiusBottomLeft=e;if(!d.isCornerSet(Sys.Extended.UI.BoxCorners.TopRight))c.style.WebkitBorderRadiusTopRight=e;if(!d.isCornerSet(Sys.Extended.UI.BoxCorners.BottomRight))c.style.WebkitBorderRadiusBottomRight=e}else{var w=d.getBackgroundColor(),r=c.offsetWidth,g=c.cloneNode(false);d.moveChildren(c,g);d._originalStyle=c.style.cssText;c.style.backgroundColor="transparent";c.style.verticalAlign="top";c.style.padding="0";c.style.overflow="";c.style.className="";if(c.style.height&&c.style.height!="auto")c.style.height=parseInt($common.getCurrentStyle(c,"height"))+d._radius*2+h;else if(!c.style.width&&0<r)c.style.width=r+h;g.style.position="";g.style.border="";g.style.margin="";g.style.width="100%";if(g.style.overflow==""&&$common.getCurrentStyle(c,"overflow")=="visible")g.style.overflow="auto";g.id="";g.removeAttribute("control");if(d._borderColor){g.style.borderTopStyle=j;g.style.borderBottomStyle=j;g.style.borderLeftStyle=i;g.style.borderRightStyle=i;g.style.borderLeftColor=d._borderColor;g.style.borderRightColor=d._borderColor;g.style.borderLeftWidth=f;g.style.borderRightWidth=f;if(d._radius==0){g.style.borderTopStyle=i;g.style.borderBottomStyle=i;g.style.borderTopColor=d._borderColor;g.style.borderBottomColor=d._borderColor;g.style.borderTopWidth=f;g.style.borderBottomWidth=f}}else{g.style.borderTopStyle=j;g.style.borderBottomStyle=j;g.style.borderLeftStyle=j;g.style.borderRightStyle=j}for(var n=b,q=d._radius,u=d._radius,s=0,p=u;p>0;p--){var v=Math.acos(p/q),o=q-Math.round(Math.sin(v)*q),k=document.createElement("DIV");k.__roundedDiv=a;k.style.backgroundColor=w;k.style.marginLeft=o+h;k.style.marginRight=o-(d._borderColor?2:0)+h;k.style.height=f;k.style.fontSize=f;k.style.overflow="hidden";if(d._borderColor){k.style.borderLeftStyle=i;k.style.borderRightStyle=i;k.style.borderLeftColor=d._borderColor;k.style.borderRightColor=d._borderColor;var t=Math.max(0,s-o-1);k.style.borderLeftWidth=t+1+h;k.style.borderRightWidth=t+1+h;if(p==u){k.__roundedDivNoBorder=a;k.style.backgroundColor=d._borderColor}}c.insertBefore(k,n);var m=k;k=k.cloneNode(a);k.__roundedDiv=a;c.insertBefore(k,n);var l=k;n=k;s=o;if(!d.isCornerSet(Sys.Extended.UI.BoxCorners.TopLeft)){m.style.marginLeft="0";if(d._borderColor)m.style.borderLeftWidth=f}if(!d.isCornerSet(Sys.Extended.UI.BoxCorners.TopRight)){m.style.marginRight="0";if(d._borderColor){m.style.borderRightWidth=f;m.style.marginRight="-2px"}}if(!d.isCornerSet(Sys.Extended.UI.BoxCorners.BottomLeft)){l.style.marginLeft="0";if(d._borderColor)l.style.borderLeftWidth=f}if(!d.isCornerSet(Sys.Extended.UI.BoxCorners.BottomRight)){l.style.marginRight="0";if(d._borderColor){l.style.borderRightWidth=f;l.style.marginRight="-2px"}}}c.insertBefore(g,n);d._parentDiv=g;d._isDirty=false}},disposeParentDiv:function(){var a=this;if(a._parentDiv){for(var d=a.get_element(),f=d.childNodes,e=f.length-1;e>=0;e--){var c=f[e];if(c){c==a._parentDiv&&a.moveChildren(c,d);try{d.removeChild(c)}catch(d){}}}if(a._originalStyle){d.style.cssText=a._originalStyle;a._originalStyle=b}a._parentDiv=b}},getBackgroundColor:function(){return this._color?this._color:$common.getCurrentStyle(this.get_element(),"backgroundColor")},moveChildren:function(b,d){var c=0;while(b.hasChildNodes()){var a=b.childNodes[0];a=b.removeChild(a);d.appendChild(a);c++}return c},isCornerSet:function(a){return(this._corners&a)!=Sys.Extended.UI.BoxCorners.None},setCorner:function(b,c){var a=this;if(c)a.set_Corners(a._corners|b);else a.set_Corners(a._corners&~b)},get_Color:function(){return this._color},set_Color:function(c){var b=this;if(c!=b._color){b._color=c;b._isDirty=a;b.update();b.raisePropertyChanged("Color")}},get_Radius:function(){return this._radius},set_Radius:function(c){var b=this;if(c!=b._radius){b._radius=c;b._isDirty=a;b.update();b.raisePropertyChanged("Radius")}},get_Corners:function(){return this._corners},set_Corners:function(c){var b=this;if(c!=b._corners){b._corners=c;b._isDirty=a;b.update();b.raisePropertyChanged("Corners")}},get_BorderColor:function(){return this._borderColor},set_BorderColor:function(c){var b=this;if(c!=b._borderColor){b._borderColor=c;b._isDirty=a;b.update();b.raisePropertyChanged("BorderColor")}}};Sys.Extended.UI.RoundedCornersBehavior.registerClass("Sys.Extended.UI.RoundedCornersBehavior",Sys.Extended.UI.BehaviorBase);Sys.registerComponent(Sys.Extended.UI.RoundedCornersBehavior,{name:"rounded"})}if(window.Sys&&Sys.loader)Sys.loader.registerScript(b,["ExtendedBase","ExtendedCommon"],a);else a()})();