package createjs;



/**
*	Global utility for working with multi-touch enabled devices in EaselJS. Currently supports W3C Touch API
*	(iOS & modern Android browser) and IE10.
*
*/
@:native ("createjs.Touch")
extern class Touch {

	
	/**
	*	@method disable
	*	Removes all listeners that were set up when calling Touch.enable on a stage.
	*	@param stage (Stage)  The stage to disable touch on.
	*
	*/
	public static function disable (stage:Stage):Dynamic;
	
	/**
	*	@method enable
	*	Enables touch interaction for the specified EaselJS stage. Currently supports iOS (and compatible browsers, such
	*	as modern Android browsers), and IE10.
	*	Supports both single touch and multi-touch modes. Extends the EaselJS MouseEvent model, but without support for
	*	double click or over/out events. See MouseEvent.pointerID for more information.
	*	@param stage (Stage)  The stage to enable touch on.
	*	@param singleTouch (Boolean)  If true, only a single touch will be active at a time. Default is false.
	*	@param allowDefault (Boolean)  If true, then default gesture actions (ex. scrolling, zooming) will be allowed when the user is interacting with the target canvas. Default is false.
	*
	*/
	public static function enable (stage:Stage, singleTouch:Bool, allowDefault:Bool):Bool;
	
	/**
	*	@method isSupported
	*	Returns true if touch is supported in the current browser.
	*
	*/
	public static function isSupported ():Bool;
	
	private function _handleEnd ():Dynamic;
	
	private function _handleMove ():Dynamic;
	
	private function _handleStart ():Dynamic;
	
	private static function _IE_enable (stage:Stage):Dynamic;
	
	private static function _IE_handleEvent ():Dynamic;
	
	private static function _IOS_disable (stage:Stage):Dynamic;
	
	private static function _IOS_enable (stage:Stage):Dynamic;
	
	private static function _IOS_handleEvent ():Dynamic;

}