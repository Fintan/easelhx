package createjs;



/**
*	Applies a greyscale alpha map image (or canvas) to the target, such that the alpha channel of the result will
*	be copied from the red channel of the map, and the RGB channels will be copied from the target.
*	<br/><br/>
*	Generally, it is recommended that you use AlphaMaskFilter, because it has much better performance.
*
*/
@:native ("createjs.AlphaMapFilter")
extern class AlphaMapFilter {

	
	/**
	*	@type Image
	*	The greyscale image (or canvas) to use as the alpha value for the result. This should be exactly the same
	*	dimensions as the target.
	*
	*/
	public var alphaMap:Image;

	
	/**
	*	@method applyFilter
	*	Applies the filter to the specified context.
	*	@param ctx (Dynamic)  The 2D context to use as the source.
	*	@param x (Dynamic)  The x position to use for the source rect.
	*	@param y (Dynamic)  The y position to use for the source rect.
	*	@param width (Dynamic)  The width to use for the source rect.
	*	@param height (Dynamic)  The height to use for the source rect.
	*	@param targetCtx (Dynamic)  Optional. The 2D context to draw the result to. Defaults to the context passed to ctx.
	*	@param targetX (Dynamic)  Optional. The x position to draw the result to. Defaults to the value passed to x.
	*	@param targetY (Dynamic)  Optional. The y position to draw the result to. Defaults to the value passed to y.
	*
	*/
	public function applyFilter (ctx:Dynamic, x:Dynamic, y:Dynamic, width:Dynamic, height:Dynamic, targetCtx:Dynamic, targetX:Dynamic, targetY:Dynamic):Dynamic;
	
	/**
	*	@method new
	*	Applies a greyscale alpha map image (or canvas) to the target, such that the alpha channel of the result will
	*	be copied from the red channel of the map, and the RGB channels will be copied from the target.
	*	<br/><br/>
	*	Generally, it is recommended that you use AlphaMaskFilter, because it has much better performance.
	*	@param alphaMap (Image)  
	*
	*/
	public function new (alphaMap:Image):Void;

}