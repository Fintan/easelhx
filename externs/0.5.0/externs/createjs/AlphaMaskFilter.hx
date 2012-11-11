package createjs;



/**
*	Applies the alpha from the mask image (or canvas) to the target, such that the alpha channel of the result will
*	be derived from the mask, and the RGB channels will be copied from the target. This can be used, for example, to apply
*	an alpha mask to a display object. This can also be used to combine a JPG compressed RGB image with a PNG32 alpha mask, which can
*	result in a much smaller file size than a single PNG32 containing ARGB.
*	 IMPORTANT NOTE: This filter currently does not support the targetCtx, or targetX/Y parameters correctly.
*
*/
@:native ("createjs.AlphaMaskFilter")
extern class AlphaMaskFilter {

	
	/**
	*	@type Image
	*	The image (or canvas) to use as the mask.
	*
	*/
	public var mask:Image;

	
	/**
	*	@method applyFilter
	*	Applies the filter to the specified context. IMPORTANT NOTE: This filter currently does not support the targetCtx,
	*	or targetX/Y parameters correctly.
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
	*	Applies the alpha from the mask image (or canvas) to the target, such that the alpha channel of the result will
	*	be derived from the mask, and the RGB channels will be copied from the target. This can be used, for example, to apply
	*	an alpha mask to a display object. This can also be used to combine a JPG compressed RGB image with a PNG32 alpha mask, which can
	*	result in a much smaller file size than a single PNG32 containing ARGB.
	*	 IMPORTANT NOTE: This filter currently does not support the targetCtx, or targetX/Y parameters correctly.
	*	@param mask (Image)  
	*
	*/
	public function new (mask:Image):Void;

}