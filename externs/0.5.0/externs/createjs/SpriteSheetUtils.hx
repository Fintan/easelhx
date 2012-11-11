package createjs;

import js.w3c.html5.Canvas2DContext;
import js.w3c.html5.Core;



/**
*	The SpriteSheetUtils class is a collection of static methods for working
*	with sprite sheets.  A sprite sheet is a series of images (usually animation frames)
*	combined into a single image on a regular grid. For example, an animation consisting
*	of 8 100x100 images could be combined into a 400x200 sprite sheet (4 frames across by 2 high).
*	The SpriteSheetUtils class uses a static interface and should not be instantiated.
*
*/
@:native ("createjs.SpriteSheetUtils")
extern class SpriteSheetUtils {

	
	public static var _workingCanvas:HTMLCanvasElement;
	
	public static var _workingContext:CanvasRenderingContext2D;

	
	/**
	*	@method extractFrame
	*	Returns a single frame of the specified sprite sheet as a new PNG image.
	*	@param spriteSheet (Image)  The SpriteSheet instance to extract a frame from.
	*	@param frame (Number)  The frame number or animation name to extract. If an animation
	*	name is specified, only the first frame of the animation will be extracted.
	*
	*/
	public static function extractFrame (spriteSheet:Image, frame:Float):Image;
	
	/**
	*	@method flip
	*	<b>This is an experimental method, and is likely to be buggy. Please report issues.</b><br/><br/>
	*	Extends the existing sprite sheet by flipping the original frames either horizontally, vertically, or both,
	*	and adding appropriate animation & frame data.
	*	@param spriteSheet (Image)  The sprite sheet to use as the source.
	*	@param flipData (Object)  A generic object that specifies which frames will be flipped, what to name the
	*	flipped result, and how to flip the frames (horizontally, vertically, or both). Each property name
	*	indicates the name of a new sequence to create, and should reference an array where the first index is
	*	the name of the original sequence to flip, the second index indicates whether to flip it horizontally,
	*	the third index indicates whether to flip it vertically, and the fourth indicates what the "next" value
	*	for the resulting frame data should be. For example, the following would create a new sequence named
	*	"walk_left" consisting of the frames from the original "walk_right" sequence flipped
	*	horizontally: &#123;walk_left: ["walk_right", true, false]&#125;
	*
	*/
	public static function flip (spriteSheet:Image, flipData:Dynamic):Dynamic;
	
	/**
	*	@method mergeAlpha
	*	Merges the rgb channels of one image with the alpha channel of another. This can be used to combine a compressed
	*	JPEG image containing color data with a PNG32 monochromatic image containing alpha data. With certain types of
	*	images (those with detail that lend itself to JPEG compression) this can provide significant file size savings
	*	versus a single RGBA PNG32. This method is very fast (generally on the order of 1-2 ms to run).
	*	@param rbgImage (Image)  The image (or canvas) containing the RGB channels to use.
	*	@param alphaImage (Image)  The image (or canvas) containing the alpha channel to use.
	*	@param canvas (Canvas)  Optional. If specified, this canvas will be used and returned. If not, a new canvas will be created.
	*
	*/
	public static function mergeAlpha (rbgImage:Image, alphaImage:Image, canvas:Canvas):Canvas;

}