/******************************************************************************

Copyright (C) 2011 by XirSys

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.

******************************************************************************/



package js.w3c.documents;

import js.w3c.DOMTypes;
import js.w3c.css.CSSOM;
import js.w3c.html5.Core;
import js.w3c.level2.Range;
import js.w3c.level2.Traversal;
import js.w3c.level3.Core;
import js.w3c.level3.Events;


extern class Document extends js.w3c.level3.Core.Document,
	implements js.w3c.level2.Range.DocumentRange,
	implements js.w3c.level2.Traversal.DocumentTraversal,
	implements js.w3c.html5.Core.HTMLDocument,
	implements js.w3c.css.CSSOM.DocumentStyle {
	
	// from DocumentTraversal
	public function createNodeIterator(root:Node, whatToShow:UnsignedLong, filter:NodeFilter, entityReferenceExpansion:Bool) : NodeIterator; // throws DOMException
	public function createTreeWalker(root:Node, whatToShow:UnsignedLong, filter:NodeFilter, entityReferenceExpansion:Bool) : TreeWalker; // throws DOMException
 
 // from DocumentRange
	public function createRange() : Range;
	
	// from DocumentStyle
	public var styleSheets (default,never) : StyleSheetList;
	public var selectedStyleSheetSet : DOMString;
	public var lastStyleSheetSet (default,never) : DOMString;
	public var preferredStyleSheetSet (default,never) : DOMString;
	public var styleSheetSets (default,never) : DOMStringList;
	public function enableStyleSheetsForSet(name:DOMString) : Void;

	// from HTMLDocument (HTML5)
	public var location (default,never) : Location;
	public var URL (default,never) : DOMString;
	public var domain : DOMString;
	public var referrer (default,never) : DOMString;
	public var cookie : DOMString;
	public var lastModified (default,never) : DOMString;
	public var compatMode (default,never) : DOMString;
	public var charset : DOMString;
	public var characterSet (default,never) : DOMString;
	public var defaultCharset (default,never) : DOMString;
	public var readyState (default,never) : DOMString;
	
	public var title : DOMString;
	public var dir : DOMString;
	public var body : HTMLElement;

	public var head (default,never) : HTMLHeadElement;
	public var images (default,never) : HTMLCollection;
	public var embeds (default,never) : HTMLCollection;
	public var plugins (default,never) : HTMLCollection;
	public var links (default,never) : HTMLCollection;
	public var forms (default,never) : HTMLCollection;
	public var scripts (default,never) : HTMLCollection;
	
	public var innerHTML : DOMString;
	
	public var defaultView (default,never) : WindowProxy; // should override but..
	public var activeElement (default,never) : Element;

	public var designMode : DOMString;
	public var commands (default,never) : HTMLCollection;
	
	public function getElementsByName(elementName:DOMString) : NodeList;
	public function getElementsByClassName(classNames:DOMString) : NodeList;

	public function open(?type:DOMString, ?replace:DOMString) : HTMLDocument;
	//public function open(in DOMString url, in DOMString name, in DOMString features, in optional boolean replace) : WindowProxy;
	public function close() : Void;
	public var write (default,never) : Dynamic; // method with var args
	public var writeln (default,never) : Dynamic; // method with var args

	public function getSelection() : Selection;
	public function hasFocus() : Bool;
	public function execCommand(commandId:DOMString, ?showUI:Bool, ?value:DOMString) : Bool;
	public function queryCommandEnabled(commandId:DOMString) : Bool;
	public function queryCommandIndeterm(commandId:DOMString) : Bool;
	public function queryCommandState(commandId:DOMString) : Bool;
	public function queryCommandSupported(commandId:DOMString) : Bool;
	public function queryCommandValue(commandId:DOMString) : DOMString;

	public var onabort : EventListener<Event>;
	public var onblur : EventListener<UIEvent>;
	public var oncanplay : EventListener<Event>;
	public var oncanplaythrough : EventListener<Event>;
	public var onchange : EventListener<Event>;
	public var onclick : EventListener<MouseEvent>;
	public var oncontextmenu : EventListener<Event>;
	public var ondblclick : EventListener<MouseEvent>;
	public var ondrag : EventListener<DragEvent>;
	public var ondragend : EventListener<DragEvent>;
	public var ondragenter : EventListener<DragEvent>;
	public var ondragleave : EventListener<DragEvent>;
	public var ondragover : EventListener<DragEvent>;
	public var ondragstart : EventListener<DragEvent>;
	public var ondrop : EventListener<DragEvent>;
	public var ondurationchange : EventListener<Event>;
	public var onemptied : EventListener<Event>;
	public var onended : EventListener<Event>;
	public var onerror : EventListener<Event>;
	public var onfocus : EventListener<UIEvent>;
	public var onformchange : EventListener<Event>;
	public var onforminput : EventListener<Event>;
	public var oninput : EventListener<Event>;
	public var oninvalid : EventListener<Event>;
	public var onkeydown : EventListener<KeyboardEvent>;
	public var onkeypress : EventListener<KeyboardEvent>;
	public var onkeyup : EventListener<KeyboardEvent>;
	public var onload : EventListener<Event>;
	public var onloadeddata : EventListener<Event>;
	public var onloadedmetadata : EventListener<Event>;
	public var onloadstart : EventListener<Event>;
	public var onmousedown : EventListener<MouseEvent>;
	public var onmousemove : EventListener<MouseEvent>;
	public var onmouseout : EventListener<MouseEvent>;
	public var onmouseover : EventListener<MouseEvent>;
	public var onmouseup : EventListener<MouseEvent>;
	public var onmousewheel : EventListener<MouseWheelEvent>;
	public var onpause : EventListener<Event>;
	public var onplay : EventListener<Event>;
	public var onplaying : EventListener<Event>;
	public var onprogress : EventListener<Event>;
	public var onratechange : EventListener<Event>;
	public var onreadystatechange : EventListener<Event>;
	public var onscroll : EventListener<UIEvent>;
	public var onseeked : EventListener<Event>;
	public var onseeking : EventListener<Event>;
	public var onselect : EventListener<Event>;
	public var onshow : EventListener<Event>;
	public var onstalled : EventListener<Event>;
	public var onsubmit : EventListener<Event>;
	public var onsuspend : EventListener<Event>;
	public var ontimeupdate : EventListener<Event>;
	public var onvolumechange : EventListener<Event>;
	public var onwaiting : EventListener<Event>;
}