package createjs;



/**
*	This plugin works with TweenJS to prevent the startPosition property from tweening.
*
*/
@:native ("createjs.MovieClipPlugin")
extern class MovieClipPlugin {

	
	/**
	*	@method new
	*	This plugin works with TweenJS to prevent the startPosition property from tweening.
	*
	*/
	public function new ():Void;
	
	private function init ():Dynamic;
	
	private function install ():Dynamic;
	
	private function priority ():Dynamic;
	
	private function tween ():Dynamic;

}