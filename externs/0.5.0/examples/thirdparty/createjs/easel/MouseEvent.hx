package createjs.easel;



/**
*	This is passed as the parameter to onPress, onMouseMove, onMouseUp, onMouseDown, and onClick handlers on
*	DisplayObject instances.
*	By default, mouse events are disabled for performance reasons. In order to enabled them for a specified stage
*	set mouseEventsEnabled to true on your stage instance.
*
*/
@:native ("MouseEvent")
extern class MouseEvent {

	
	/**
	*	@type DisplayObject
	*	The display object this event relates to.
	*
	*/
	public var target:DisplayObject;
	
	/**
	*	@type MouseEvent
	*	The native MouseEvent generated by the browser. The properties and API for this
	*	event may differ between browsers. This property will be null if the
	*	EaselJS property was not directly generated from a native MouseEvent.
	*
	*/
	public var nativeEvent:MouseEvent;
	
	/**
	*	@type Number
	*	The mouseX position on the stage.
	*
	*/
	public var stageX:Float;
	
	/**
	*	@type Number
	*	The mouseY position on the stage.
	*
	*/
	public var stageY:Float;
	
	/**
	*	@type String
	*	The type of mouse event. This will be the same as the handler it maps to (onPress,
	*	onMouseDown, onMouseUp, onMouseMove, or onClick).
	*
	*/
	public var type:String;

	
	/**
	*	@method clone
	*	Returns a clone of the MouseEvent instance.
	*
	*/
	public function clone ():MouseEvent;
	
	/**
	*	@method initialize
	*	Initialization method.
	*
	*/
	private function initialize ():Dynamic;
	
	/**
	*	@method new
	*	This is passed as the parameter to onPress, onMouseMove, onMouseUp, onMouseDown, and onClick handlers on
	*	DisplayObject instances.
	*	By default, mouse events are disabled for performance reasons. In order to enabled them for a specified stage
	*	set mouseEventsEnabled to true on your stage instance.
	*	@param type (String)  
	*	@param stageX (Number)  
	*	@param stageY (Number)  
	*	@param target (DisplayObject)  
	*	@param nativeEvent (MouseEvent)  
	*
	*/
	public function new (type:String, stageX:Float, stageY:Float, target:DisplayObject, nativeEvent:MouseEvent):Void;
	
	/**
	*	@method toString
	*	Returns a string representation of this object.
	*
	*/
	public function toString ():String;
	
	/**
	 * For events of type "onPress" and "onMouseDown" only you can assign a handler to the onMouseMove
	 * property. This handler will be called every time the mouse is moved until the mouse is released.
	 * This is useful for operations such as drag and drop.
	 * @event onMouseMove
	 * @param {MouseEvent} event A MouseEvent instance with information about the current mouse event.
	 **/
	public var onMouseMove:Dynamic;

	/**
	 * For events of type "onPress" and "onMouseDown" only you can assign a handler to the onMouseUp
	 * property. This handler will be called every time the mouse is moved until the mouse is released.
	 * This is useful for operations such as drag and drop.
	 * @event onMouseUp
	 * @param {MouseEvent} event A MouseEvent instance with information about the current mouse event.
	*/
	public var onMouseUp:Dynamic;

}