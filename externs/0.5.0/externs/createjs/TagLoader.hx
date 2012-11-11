package createjs;



/**
*	The loader that handles loading items using a tag-based approach. There is a built-in
*	fallback for XHR loading for tags that do not fire onload events, such as &lt;script&gt; and &lt;style&gt;.
*
*/
@:native ("createjs.TagLoader")
extern class TagLoader extends AbstractLoader {

	
	/**
	*	@method new
	*	The loader that handles loading items using a tag-based approach. There is a built-in
	*	fallback for XHR loading for tags that do not fire onload events, such as &lt;script&gt; and &lt;style&gt;.
	*	@param item (String | Object)  
	*	@param srcAttr (String)  
	*	@param useXHR (Boolean)  
	*
	*/
	public function new (item:Dynamic, srcAttr:String, useXHR:Bool):Void;

}