package createjs;

import js.Dom;
import js.w3c.html5.Core;



/**
*	A stage is the root level Container for a display list. Each time its tick method is called, it will render its display
*	list to its target canvas.
*
*/
@:native ("createjs.Stage")
extern class Stage extends Container {

	
	/**
	*	@type Boolean
	*	Indicates whether the mouse is currently within the bounds of the canvas.
	*
	*/
	public var mouseInBounds:Bool;
	
	/**
	*	@type Boolean
	*	Indicates whether the stage should automatically clear the canvas before each render. You can set this to false to manually
	*	control clearing (for generative art, or when pointing multiple stages at the same canvas for example).
	*
	*/
	public var autoClear:Bool;
	
	/**
	*	@type Boolean
	*	Indicates whether this stage should use the snapToPixel property of display objects when rendering them. See
	*	DisplayObject.snapToPixel for more information.
	*
	*/
	public var snapToPixelEnabled:Bool;
	
	/**
	*	@type Function
	*	Calls the update method. Useful for adding stage as a listener to Ticker directly.
	*
	*/
	private var tick:Dynamic;
	
	/**
	*	@type HTMLCanvasElement
	*	The canvas the stage will render to. Multiple stages can share a single canvas, but you must disable autoClear for all but the
	*	first stage that will be ticked (or they will clear each other's render).
	*
	*/
	public var canvas:HTMLCanvasElement;
	
	/**
	*	@type mouseMoveOutside
	*	If true, onMouseMove handlers will continue to be called when the mouse leaves the target canvas. See
	*	mouseInBounds, and MouseEvent.x/y/rawX/rawY.
	*
	*/
	//public var tickOnUpdate:MouseMoveOutside;
	public var tickOnUpdate:Dynamic;
	
	/**
	*	@type Number
	*	READ-ONLY. The current mouse X position on the canvas. If the mouse leaves the canvas, this will indicate the most recent
	*	position over the canvas, and mouseInBounds will be set to false.
	*
	*/
	public var mouseX:Float;
	
	/**
	*	@type Number
	*	READ-ONLY. The current mouse Y position on the canvas. If the mouse leaves the canvas, this will indicate the most recent
	*	position over the canvas, and mouseInBounds will be set to false.
	*
	*/
	public var mouseY:Float;
	
	/**
	*	@type {Object}
	*	Holds objects with data for each active pointer id. Each object has the following properties:
	*	x, y, event, target, overTarget, overX, overY, inBounds
	*
	*/
	private var _pointerData:Dynamic;
	
	/**
	*	@type {Object}
	*	Number of active pointers.
	*
	*/
	private var _pointerCount:Dynamic;
	
	private var _mouseOverIntervalID:Float;
	
	public static var _snapToPixelEnabled:Bool;

	
	/**
	*	@method clear
	*	Clears the target canvas. Useful if autoClear is set to false.
	*
	*/
	public function clear ():Dynamic;
	
	/**
	*	@method enableMouseOver
	*	Enables or disables (by passing a frequency of 0) mouse over handlers (onMouseOver and onMouseOut) for this stage's display
	*	list. These events can be expensive to generate, so they are disabled by default, and the frequency of the events
	*	can be controlled independently of mouse move events via the optional frequency parameter.
	*	@param frequency (Number)  Optional param specifying the maximum number of times per second to broadcast mouse over/out events. Set to 0 to disable mouse
	*	over events completely. Maximum is 50. A lower frequency is less responsive, but uses less CPU. Default is 20.
	*
	*/
	public function enableMouseOver (frequency:Float):Dynamic;
	
	/**
	*	@method initialize!~YUIDOC_LINE~!param  canvas A canvas object, or the string id of a canvas object in the current document.
	*	Initialization method.
	*
	*/
	//private function initialize():Dynamic;
	
	/**
	*	@method new
	*	A stage is the root level Container for a display list. Each time its tick method is called, it will render its display
	*	list to its target canvas.
	*	@param canvas (HTMLCanvasElement)  
	*
	*/
	public function new (canvas:HTMLCanvasElement):Void;
	
	/**
	*	@method toDataURL
	*	Returns a data url that contains a Base64 encoded image of the contents of the stage. The returned data url can be
	*	specified as the src value of an image element.
	*	@param backgroundColor (String)  The background color to be used for the generated image. The value can be any value HTML color
	*	value, including HEX colors, rgb and rgba. The default value is a transparent background.
	*	@param mimeType (String)  The MIME type of the image format to be create. The default is "image/png". If an unknown MIME type
	*	is passed in, or if the browser does not support the specified MIME type, the default value will be used.
	*
	*/
	public function toDataURL (backgroundColor:String, mimeType:String):String;
	
	/**
	*	@method toString
	*	Returns a string representation of this object.
	*
	*/
	//public function toString ():String;
	
	/**
	*	@method update
	*	Each time the update method is called, the stage will tick any descendants exposing a tick method (ex. BitmapAnimation)
	*	and render its entire display list to the canvas. Any parameters passed to update will be passed on to any
	*	onTick handlers.
	*
	*/
	public function update ():Dynamic;
	
	private function _enableMouseEvents ():Dynamic;
	
	private function _getElementRect (e:HtmlDom):Dynamic;
	
	private function _getPointerData (id:Float):Dynamic;
	
	private function _handleDoubleClick (e:MouseEvent):Dynamic;
	
	private function _handleMouseDown (e:MouseEvent):Dynamic;
	
	private function _handleMouseMove (e:MouseEvent):Dynamic;
	
	private function _handleMouseUp (e:MouseEvent):Dynamic;
	
	private function _handlePointerDown (id:Float, e:Event, pageX:Float, pageY:Float):Dynamic;
	
	private function _handlePointerMove (id:Float, e:Event, pageX:Float, pageY:Float):Dynamic;
	
	private function _handlePointerUp (id:Float, e:Event, clear:Bool):Dynamic;
	
	private function _testMouseOver ():Dynamic;
	
	private function _updatePointerPosition (id:Float, pageX:Float, pageY:Float):Dynamic;

}