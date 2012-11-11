package createjs;



/**
*	The base loader, which handles all callbacks. All loaders should extend this class.
*
*/
@:native ("createjs.AbstractLoader")
extern class AbstractLoader {

	
	/**
	*	@type Boolean
	*	Determine if this loader has completed already.
	*
	*/
	public var loaded:Bool;
	
	/**
	*	@type Number
	*	The current load progress (percentage) for this item.
	*
	*/
	public var progress:Float;

	
	/**
	*	@method new
	*	The base loader, which handles all callbacks. All loaders should extend this class.
	*
	*/
	public function new ():Void;

}