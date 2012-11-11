package js.w3c.touch;

import js.w3c.level3.Events;
import js.w3c.level2.Views;


/** From http://www.w3.org/TR/touch-events/ */
@:native("Touch") extern class Touch 
{
	var identifier(default,null) : Int;
	var target(default,null) : EventTarget;
	var screenX(default,null) : Int;
	var screenY(default,null) : Int;
	var clientX(default,null) : Int;
	var clientY(default,null) : Int;
	var pageX(default,null) : Int;
	var pageY(default,null) : Int;
}

/** From http://www.w3.org/TR/touch-events/ */
@:native("TouchList") extern class TouchList implements ArrayAccess<Touch> 
{
	var length(default,null) : Int;
	function identifiedTouch( identifier : Int ) : Touch;
}

/** From http://www.w3.org/TR/touch-events/ */
@:native("TouchEvent") extern class TouchEvent extends UIEvent 
{
	var touches(default,null) : TouchList;
	var targetTouches(default,null) : TouchList;
	var changedTouches(default,null) : TouchList;
	var altKey(default,null) : Bool;
	var metaKey(default,null) : Bool;
	var ctrlKey(default,null) : Bool;
	var shiftKey(default,null) : Bool;
}