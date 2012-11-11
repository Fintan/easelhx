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


package js.w3c.html5;

import js.w3c.DOMTypes;
import js.w3c.level2.Range;
import js.w3c.level3.Core;
import js.w3c.level3.Events;
import js.w3c.html5.Messaging;
import js.w3c.css.CSSOM;
import js.w3c.webapi.File;
import js.w3c.webapi.Progress;
import js.w3c.webapi.WebStorage;

extern interface HTMLCollection {
	public var length : UnsignedLong; // should be readonly but override doesn't work..
	public function item(index:UnsignedLong) : Element;
	public function namedItem(name:DOMString) : Object; // should be Element but override doesn't work for returns;
}


extern interface HTMLAllCollection implements HTMLCollection {
	// override public function namedItem(name:DOMString) : Object; // see comment on HTMLCollection
	public function tags(tagName:DOMString) : HTMLAllCollection;
}


extern interface HTMLFormControlsCollection implements HTMLCollection {
	// override public function namedItem(name:DOMString) : Object; // see comment on HTMLCollection
}


extern interface RadioNodeList implements NodeList {
	public var value : DOMString;
}


extern interface HTMLOptionsCollection implements HTMLCollection {
	// override public var length (default,default) : UnsignedLong; // see comment on HTMLCollection
	// override public function namedItem(name:DOMString) : Object; // see comment on HTMLCollection
	public function add(element:HTMLElement, ?before:Dynamic) : Void;
	public function remove(index:Long) : Void;
}


extern interface DOMTokenList {
	public var length (default,never) : UnsignedLong;
	public function item(index:UnsignedLong) : DOMString;
	public function contains(token:DOMString) : Bool;
	public function add(token:DOMString) : Void;
	public function remove(token:DOMString) : Void;
	public function toggle(token:DOMString) : Bool;
}


extern interface DOMSettableTokenList implements DOMTokenList {
	public var value : DOMString;
}


typedef DOMStringMap = Object;


extern interface HTMLDocument {
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


extern interface DOMHTMLImplementation {
	public function createHTMLDocument(title:DOMString) : js.w3c.documents.HTMLDocument.Document;
}


extern interface XMLDocumentLoader {
	public function load(url:DOMString) : Bool;
}


extern class HTMLElement extends Element {
	// DOM tree accessors
	public function getElementsByClassName(classNames:DOMString) : NodeList;
	// dynamic markup insertion
	public var innerHTML : DOMString;
	public var outerHTML : DOMString;
	public function insertAdjacentHTML(position:DOMString, text:DOMString) : Void;
	// metadata attributes
	public var id : DOMString;
	public var title : DOMString;
	public var lang : DOMString;
	public var dir : DOMString;
	public var className : DOMString;
	public var classList (default,never) : DOMTokenList;
	public var dataset (default,never) : DOMStringMap;
	// user interaction
	public var hidden : Bool;
	public function click() : Void;
	public function scrollIntoView(?top:Bool) : Void;
	public var tabIndex : Long;
	public function focus() : Void;
	public function blur() : Void;
	public var accessKey : DOMString;
	public var accessKeyLabel (default,never) : DOMString;
	public var draggable : Bool;
	public var contentEditable : DOMString;
	public var isContentEditable (default,never) : Bool;
	public var contextMenu : HTMLMenuElement;
	public var spellcheck : DOMString;
	// command API
	public var commandType (default,never) : DOMString;
	public var label : DOMString; // should be readonly but extending classes need to redefine, haXe limitation
	public var icon : DOMString; // should be readonly but extending classes need to redefine, haXe limitation
	public var disabled : Bool; // should be readonly but extending classes need to redefine, haXe limitation
	public var checked : Bool; // should be readonly but extending classes need to redefine, haXe limitation
	// styling
	public var style (default,never) : CSSStyleDeclaration;
	// event handler IDL attributes
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


extern class HTMLUnknownElement extends HTMLElement {}


extern class HTMLHtmlElement extends HTMLElement {}


extern class HTMLHeadElement extends HTMLElement {}


extern class HTMLTitleElement extends HTMLElement {
	public var text : DOMString;
}


extern class HTMLBaseElement extends HTMLElement {
	public var href : DOMString;
	public var target : DOMString;
}


extern class HTMLLinkElement extends HTMLElement, implements LinkStyle {
	// from LinkStyle
	public var sheet (default,never) : StyleSheet;
	// public var disabled : Bool; // this should be redefining HTMLElement to be writable but...
	public var href : DOMString;
	public var rel : DOMString;
	public var relList (default,never) : DOMTokenList;
	public var media : DOMString;
	public var hreflang : DOMString;
	public var type : DOMString;
	public var sizes (default,never) : DOMSettableTokenList;
}


extern class HTMLMetaElement extends HTMLElement {
	public var name : DOMString;
	public var httpEquiv : DOMString;
	public var content : DOMString;
}


extern class HTMLStyleElement extends HTMLElement, implements LinkStyle {
	// from LinkStyle
	public var sheet (default,never) : StyleSheet;
	// public var disabled : Bool; // this should be redefining HTMLElement to be writable but...
	public var media : DOMString;
	public var type : DOMString;
	public var scoped : Bool;
}


extern class HTMLScriptElement extends HTMLElement {
	public var src : DOMString;
	public var async : Bool;
	public var defer : Bool;
	public var type : DOMString;
	public var charset : DOMString;
	public var text : DOMString;
}


extern class HTMLBodyElement extends HTMLElement {
	public var onafterprint : EventListener<Event>;
	public var onbeforeprint : EventListener<Event>;
	public var onbeforeunload : EventListener<BeforeUnloadEvent>;
	// public var onblur : EventListener<UIEvent>; // defined but inherited
	// public var onerror : EventListener<Event>; // defined but inherited
	// public var onfocus : EventListener<UIEvent>;	// defined but inherited
	public var onhashchange : EventListener<HashChangeEvent>;
	// public var onload : EventListener<Event>; // defined but inherited
	public var onmessage : EventListener<MessageEvent>;
	public var onoffline : EventListener<Event>;
	public var ononline : EventListener<Event>;
	public var onpopstate : EventListener<PopStateEvent>;
	public var onpagehide : EventListener<PageTransitionEvent>;
	public var onpageshow : EventListener<PageTransitionEvent>;
	public var onredo : EventListener<UndoManagerEvent>;
	public var onresize : EventListener<UIEvent>;
	public var onstorage : EventListener<Event>;
	public var onundo : EventListener<UndoManagerEvent>;
	public var onunload : EventListener<Event>;
}


extern class HTMLHeadingElement extends HTMLElement {}


extern class HTMLParagraphElement extends HTMLElement {}


extern class HTMLHRElement extends HTMLElement {}


extern class HTMLPreElement extends HTMLElement {}


extern class HTMLQuoteElement extends HTMLElement {
	public var cite : DOMString;
}


extern class HTMLOListElement extends HTMLElement {
	public var reversed : Bool;
	public var start : Long;
}


extern class HTMLUListElement extends HTMLElement {}


extern class HTMLLIElement extends HTMLElement {
	public var value : Long;
}


extern class HTMLDListElement extends HTMLElement {}


extern class HTMLDivElement extends HTMLElement {}


extern class HTMLAnchorElement extends HTMLElement {
	public var href : DOMString;
	public var target : DOMString;
	public var rel : DOMString;
	public var relList (default,never) : DOMTokenList;
	public var media : DOMString;
	public var hreflang : DOMString;
	
	public var text : DOMString;
	
	public var protocol : DOMString;
	public var host : DOMString;
	public var hostname : DOMString;
	public var port : DOMString;
	public var pathname : DOMString;
	public var search : DOMString;
	public var hash : DOMString;
}


extern class HTMLTimeElement extends HTMLElement {
	public var dateTime : DOMString;
	public var pubDate : Bool;
	public var valueAsDate (default,never) : Date;
}

extern class HTMLSpanElement extends HTMLElement {}


extern class HTMLBRElement extends HTMLElement {}


extern class HTMLModElement extends HTMLElement {
	public var cite : DOMString;
	public var dateTime : DOMString;
}


extern class HTMLImageElement extends HTMLElement {
	public var alt : DOMString;
	public var src : DOMString;
	public var useMap : DOMString;
	public var isMap : Bool;
	public var width : UnsignedLong;
	public var height : UnsignedLong;
	public var naturalWidth (default,never) : UnsignedLong;
	public var naturalHeight (default,never) : UnsignedLong;
	public var complete (default,never) : Bool;
}


extern class Image extends HTMLImageElement {
	public function new(?width:UnsignedLong, ?height:UnsignedLong) : Void;
}


extern class HTMLIFrameElement extends HTMLElement {
	public var src : DOMString;
	public var srcDoc : DOMString;
	public var name : DOMString;
	public var sandbox (default,never) : DOMSettableTokenList;
	public var seamless : Bool;
	public var width : DOMString;
	public var height : DOMString;
	public var contextDocument (default,never) : Document;
	public var contentWindow (default,never) : WindowProxy;
}


extern class HTMLEmbedElement extends HTMLElement {
	public var src : DOMString;
	public var type : DOMString;
	public var width : DOMString;
	public var height : DOMString;
}


extern class HTMLObjectElement extends HTMLElement {
	public var data : DOMString;
	public var type : DOMString;
	public var name : DOMString;
	public var useMap : DOMString;
	public var form (default,never) : HTMLFormElement;
	public var width : DOMString;
	public var height : DOMString;
	public var contentDocument (default,never) : Document;
	public var contextWindow (default,never) : WindowProxy;
	
	public var willValidate (default,never) : Bool;
	public var validity (default,never) : ValidityState;
	public var validationMessage (default,never) : DOMString;
	public function checkValidity() : Bool;
	public function setCustomValidity(error:DOMString) : Void;
}


extern class HTMLParamElement extends HTMLElement {
	public var name : DOMString;
	public var value : DOMString;
}


extern class HTMLVideoElement extends HTMLMediaElement {
	public var width : DOMString;
	public var height : DOMString;
	public var videoWidth (default,never) : UnsignedLong;
	public var videoHeight (default,never) : UnsignedLong;
	public var poster : DOMString;
}


extern class HTMLAudioElement extends HTMLMediaElement {}


extern class Audio extends HTMLAudioElement {
	public function new(src:DOMString) : Void;
}


extern class HTMLSourceElement extends HTMLElement {
	public var src : DOMString;
	public var type : DOMString;
	public var media : DOMString;
}


extern class HTMLMediaElement extends HTMLElement {
	
	// error state
		public var error (default,never) : MediaError;
	
	// network state
		public var src : DOMString;
		public var currentSrc (default,never) : DOMString;
		public static var NETWORK_EMPTY : UnsignedShort = 0;
		public static var NETWORK_IDLE : UnsignedShort = 1;
		public static var NETWORK_LOADING : UnsignedShort = 2;
		public static var NETWORK_NO_SOURCE : UnsignedShort = 3;
		public var networkState (default,never) : UnsignedShort;
		public var preload : DOMString;
		public var buffered (default,never) : TimeRanges;
		public function load() : Void;
		public function canPlayType(type:DOMString) : DOMString;
	
	// ready state
		public static var HAVE_NOTHING : UnsignedShort = 0;
		public static var HAVE_METADATA : UnsignedShort = 1;
		public static var HAVE_CURRENT_DATA : UnsignedShort = 2;
		public static var HAVE_FUTURE_DATA : UnsignedShort = 3;
		public static var HAVE_ENOUGH_DATA : UnsignedShort = 4;
		public var readyState (default,never) : UnsignedShort;
		public var seeking (default,never) : Bool;
	
	// playback state
		public var currentTime : Float;
		public var startTime (default,never) : Float;
		public var duration (default,never) : Float;
		public var paused (default,never) : Bool;
		public var defaultPlaybackRate : Float;
		public var playbackRate : Float;
		public var played (default,never) : TimeRanges;
		public var seekable (default,never) : TimeRanges;
		public var ended (default,never) : Bool;
		public var autoplay : Bool;
		public var loop : Bool;
		public function play() : Void;
		public function pause() : Void;
	
	// controls
		public var controls : Bool;
		public var volume : Float;
		public var muted : Bool;
}


extern class MediaError {
	public static var MEDIA_ERR_ABORTED : UnsignedShort = 1;
	public static var MEDIA_ERR_NETWORK : UnsignedShort	= 2;
	public static var MEDIA_ERR_DECODE : UnsignedShort	= 3;
	public static var MEDIA_ERR_SRC_NOT_SUPPORTED : UnsignedShort	= 4;
	public var code (default,never) : UnsignedShort;
}


extern class TimeRanges {
	public var length (default,never) : UnsignedLong;
	public function start(index:UnsignedLong) : Float;
	public function end(index:UnsignedLong) : Float;
}


extern class HTMLCanvasElement extends HTMLElement {
	public var width : UnsignedLong;
	public var height : UnsignedLong;
	public var toDataURL (default,never) : Dynamic; // method with multi args so can't define..
	public var getContext (default,never) : Dynamic; // method with multi args so can't define..
}


extern class HTMLMapElement extends HTMLElement {
	public var name : DOMString;
	public var areas (default,never) : HTMLCollection;
	public var images (default,never) : HTMLCollection;
}


extern class HTMLAreaElement extends HTMLElement {
	public var alt : DOMString;
	public var coords : DOMString;
	public var shape : DOMString;
	public var href : DOMString;
	public var target : DOMString;
	public var rel : DOMString;
	public var relList (default,never) : DOMTokenList;
	public var media : DOMString;
	public var hreflang : DOMString;
	public var type : DOMString;
	public var protocol : DOMString;
	public var host : DOMString;
	public var hostname : DOMString;
	public var port : DOMString;
	public var pathname : DOMString;
	public var search : DOMString;
	public var hash : DOMString;
}


extern class HTMLBaseFontElement extends HTMLElement {
	public var color : DOMString;
	public var face : DOMString;
	public var size : Long; 
}


extern class HTMLTableElement extends HTMLElement {
	public var caption : HTMLTableCaptionElement;
	public function createCaption() : HTMLElement;
	public function deleteCaption() : Void;
	public var tHead : HTMLTableSectionElement;
	public function createTHead() : HTMLElement;
	public function deleteTHead() : Void;
	public var tFoot : HTMLTableSectionElement;
	public function createTFoot() : HTMLElement;
	public function deleteTFoot() : Void;
	public var tBodies (default,never) : HTMLCollection;
	public function createTBody() : HTMLElement;
	public var rows (default,never): HTMLCollection;
	public function insertRow(?index:Long) : HTMLElement;
	public function deleteRow(index:Long) : Void;
	public var summary : DOMString;
	public var align : DOMString;
}


extern class HTMLTableCaptionElement extends HTMLElement {}


extern class HTMLTableColElement extends HTMLElement {
	public var span : UnsignedLong;
}


extern class HTMLTableSectionElement extends HTMLElement {
	public var rows (default,never) : HTMLCollection;
	public function insertRow(?index:Long) : HTMLElement;
	public function deleteRow(index:Long) : Void;
}


extern class HTMLTableRowElement extends HTMLElement {
	public var rowIndex (default,never) : Long;
	public var sectionRowIndex (default,never) : Long;
	public var cells (default,never) : HTMLCollection;
	public function insertCell(?index:Long) : HTMLElement;
	public function deleteCell(index:Long) : Void;
}


extern class HTMLTableDataCellElement extends HTMLTableCellElement {}


extern class HTMLTableHeaderCellElement extends HTMLTableCellElement {
	public var scope : DOMString;
}


extern class HTMLTableCellElement extends HTMLElement {
	public var colSpan : UnsignedLong;
	public var rowSpan : UnsignedLong;
	public var headers (default,never) : DOMSettableTokenList;
	public var cellIndex (default,never) : Long;
}


extern class HTMLFormElement extends HTMLElement {
	public var acceptCharset : DOMString;
	public var action : DOMString;
	public var autocomplete : DOMString;
	public var enctype : DOMString;
	public var method : DOMString;
	public var name : DOMString;
	public var noValidate : Bool;
	public var target : DOMString;

	public var elements (default,never) : HTMLFormControlsCollection;
	public var length (default,never) : Long;
	public function item(index:UnsignedLong) : Dynamic;
	public function namedItem(name:DOMString) : Dynamic;
	
	public function submit() : Void;
	public function reset() : Void;
	public function checkValidity() : Bool;

	public function dispatchFormInput() : Bool;
	public function dispatchFormChange() : Bool;
}


extern class HTMLFieldSetElement extends HTMLElement { 
	//public var disabled : Bool; /* this should be redefining HTMLElement to be writable but... */
	public var form (default,never) : HTMLFormElement;
	public var name : DOMString;
	public var type (default,never) : DOMString;
	public var elements (default,never) : HTMLFormControlsCollection;
	public var willValidate (default,never) : Bool;
	public var validity (default,never) : ValidityState;
	public var validationMessage (default,never) : DOMString;
	public function checkValidity() : Bool;
	public function setCustomValidity(error:DOMString) : Void;
}


extern class HTMLLegendElement extends HTMLElement { 
	public var form (default,never) : HTMLFormElement;
}


extern class HTMLLabelElement extends HTMLElement { 
	public var form (default,never) : HTMLFormElement;
	public var htmlFor : DOMString;
	public var control (default,never) : HTMLElement;
}


extern class HTMLInputElement extends HTMLElement {
	public var accept : DOMString;
	public var alt : DOMString;
	public var autocomplete : DOMString;
	public var autofocus : Bool;
	public var defaultChecked : Bool;
	//public var checked : Bool; // this should be redefining HTMLElement to be writable but...
	// public var disabled : Bool; // this should be redefining HTMLElement to be writable but...
	public var form (default,never) : HTMLFormElement;
	public var files (default,never) : FileList;
	public var formAction : DOMString;
	public var formEnctype : DOMString;
	public var formMethod : DOMString;
	public var formNoValidate : Bool;
	public var formTarget : DOMString;
	public var height : DOMString;
	public var indeterminate : Bool;
	public var list (default,never) : HTMLElement;
	public var max : DOMString;
	public var maxLength : Long;
	public var min : DOMString;
	public var multiple : Bool;
	public var name : DOMString;
	public var pattern : DOMString;
	public var placeholder : DOMString;
	public var readOnly : Bool;
	public var required : Bool;
	public var size : UnsignedLong;
	public var src : DOMString;
	public var step : DOMString;
	public var type : DOMString;
	public var defaultValue : DOMString;
	public var value : DOMString;
	public var valueAsDate : Date;
	public var valueAsNumber : Double;
	public var selectedOption (default,never) : HTMLOptionElement;
	public var width : DOMString;

	public function stepUp(?n:Long) : Void;
	public function stepDown(?n:Long) : Void;

	public var willValidate (default,never) : Bool;
	public var validity (default,never) : ValidityState;
	public var validationMessage (default,never) : DOMString;
	public function checkValidity() : Bool;
	public function setCustomValidity(error:DOMString) : Void;

	public var labels (default,never) : NodeList;

	public function select() : Void;
	public var selectionStart : UnsignedLong;
	public var selectionEnd : UnsignedLong;
	public function setSelectionRange(start:UnsignedLong, end:UnsignedLong) : Void;
}


extern class HTMLButtonElement extends HTMLElement {
	public var autofocus : Bool;
	// public var disabled : Bool; // this should be redefining HTMLElement to be writable but...
	public var form (default,never) : HTMLFormElement;
	public var formAction : DOMString;
	public var formEnctype : DOMString;
	public var formMethod : DOMString;
	public var formNoValidate : DOMString;
	public var formTarget : DOMString;
	public var name : DOMString;
	public var type : DOMString;
	public var value : DOMString;

	public var willValidate (default,never) : Bool;
	public var validity (default,never) : ValidityState;
	public var validationMessage (default,never) : DOMString;
	public function checkValidity() : Bool;
	public function setCustomValidity(error:DOMString) : Void;

	public var labels (default,never) : NodeList;
}


extern class HTMLSelectElement extends HTMLElement {
	public var autofocus : Bool;
	// public var disabled : Bool; // this should be redefining HTMLElement to be writable but...
	public var form (default,never) : HTMLFormElement;
	public var multiple : Bool;
	public var name : DOMString;
	public var required : Bool;
	public var size : UnsignedLong;

	public var type (default,never) : DOMString;

	public var options (default,never) : HTMLOptionsCollection;
	public var length : UnsignedLong;
	public function item(index:UnsignedLong) : Dynamic;
	public function namedItem(name:DOMString) : Dynamic;
	public function add(element:HTMLElement, ?before:Dynamic) : Void;
	public function remove(index:Long) : Void;

	public var selectedOptions (default,never) : HTMLCollection;
	public var selectedIndex : Long;
	public var value : DOMString;

	public var willValidate (default,never) : Bool;
	public var validity (default,never) : ValidityState;
	public var validationMessage (default,never) : DOMString;
	public function checkValidity() : Bool;
	public function setCustomValidity(error:DOMString) : Void;

	public var labels (default,never) : NodeList;
}


extern class HTMLDataListElement extends HTMLElement { 
	public var options (default,never) : HTMLCollection;
}


extern class HTMLOptGroupElement extends HTMLElement { 
	// public var disabled : Bool; // this should be redefining HTMLElement to be writable but...
	// public var label : DOMString; // this should be redefining HTMLElement to be writable but...
}


extern class HTMLOptionElement extends HTMLElement { 
	// public var disabled : Bool; // this should be redefining HTMLElement to be writable but...
	public var form (default,never) : HTMLFormElement;
	// public var label : DOMString; // this should be redefining HTMLElement to be writable but...
	public var defaultSelected : Bool;
	public var selected : Bool;
	public var value : DOMString;

	public var text : DOMString;
	public var index (default,never) : Long;
}


extern class Option extends HTMLOptionElement {
	public function new(?text:DOMString, ?value:DOMString, ?defaultSelected:Bool, ?selected:Bool) : Void;
}


extern class HTMLTextAreaElement extends HTMLElement {
	public var autofocus : Bool;
	public var cols : UnsignedLong;
	// public var disabled : Bool; // this should be redefining HTMLElement to be writable but...
	public var form (default,never) : HTMLFormElement;
	public var maxLength : Long;
	public var name : DOMString;
	public var placeholder : DOMString;
	public var readOnly : Bool;
	public var required : Bool;
	public var rows : UnsignedLong;
	public var wrap : DOMString;

	public var type (default,never) : DOMString;
	public var defaultValue : DOMString;
	public var value : DOMString;
	public var textLength (default,never) : UnsignedLong;

	public var willValidate (default,never) : Bool;
	public var validity (default,never) : ValidityState;
	public var validationMessage (default,never) : DOMString;
	public function checkValidity() : Bool;
	public function setCustomValidity(error:DOMString) : Void;

	public var labels (default,never) : NodeList;

	public function select() : Void;
	public var selectionStart : UnsignedLong;
	public var selectionEnd : UnsignedLong;
	public function setSelectionRange(start:UnsignedLong, end:UnsignedLong) : Void;
}


extern class HTMLKeygenElement extends HTMLElement {
	public var autofocus : Bool;
	public var challenge : DOMString;
	// public var disabled : Bool; // this should be redefining HTMLElement to be writable but...
	public var form (default,never) : HTMLFormElement;
	public var keytype : DOMString;
	public var name : DOMString;

	public var type (default,never) : DOMString;

	public var willValidate (default,never) : Bool;
	public var validity (default,never) : ValidityState;
	public var validationMessage (default,never) : DOMString;
	public function checkValidity() : Bool;
	public function setCustomValidity(error:DOMString) : Void;

	public var labels (default,never) : NodeList;
}


extern class HTMLOutputElement extends HTMLElement {
	public var htmlFor (default,never) : DOMSettableTokenList;
	public var form (default,never) : HTMLFormElement;
	public var name : DOMString;

	public var type (default,never) : DOMString;
	public var defaultValue : DOMString;
	public var value : DOMString;

	public var willValidate (default,never) : Bool;
	public var validity (default,never) : ValidityState;
	public var validationMessage (default,never) : DOMString;
	public function checkValidity() : Bool;
	public function setCustomValidity(error:DOMString) : Void;

	public var labels (default,never) : NodeList;
}


extern class HTMLProgressElement extends HTMLElement {
	public var value : Float;
	public var max : Float;
	public var position (default,never) : Float;
	public var form (default,never) : HTMLFormElement;
	public var labels (default,never) : NodeList;
}


extern class HTMLMeterElement extends HTMLElement {
	public var value : Float;
	public var min : Float;
	public var max : Float;
	public var low : Float;
	public var high : Float;
	public var optimum : Float;
	public var form (default,never) : HTMLFormElement;
	public var labels (default,never) : NodeList;
}


extern class ValidityState {
	public var valueMissing (default,never) : Bool;
	public var typeMismatch (default,never) : Bool;
	public var patternMismatch (default,never) : Bool;
	public var tooLong (default,never) : Bool;
	public var rangeUnderflow (default,never) : Bool;
	public var rangeOverflow (default,never) : Bool;
	public var stepMismatch (default,never) : Bool;
	public var customError (default,never) : Bool;
	public var valid (default,never) : Bool;
}


extern class HTMLDetailsElement extends HTMLElement {
	public var open : Bool;
}


extern class HTMLCommandElement extends HTMLElement {
	public var type : DOMString;
	// public var label : DOMString; // this should be redefining HTMLElement to be writable but...
	// public var icon : DOMString; // this should be redefining HTMLElement to be writable but...
	// public var disabled : Bool; // this should be redefining HTMLElement to be writable but...
	// public var checked : Bool; // this should be redefining HTMLElement to be writable but...
	public var radiogroup : DOMString;
}


extern class HTMLMenuElement extends HTMLElement {
	public var type : DOMString;
	// public var label : DOMString; // this should be redefining HTMLElement to be writable but...
}


// additional events


extern class PopStateEvent extends Event {
	public var state (default,never) : Dynamic;
	public function initPopStateEvent(typeArg:DOMString, canBubbleArg:Bool, cancelableArg:Bool, stateArg:Dynamic) : Void;
}


extern class HashChangeEvent extends Event {
	public var oldUrl (default,never) : Dynamic;
	public var newUrl (default,never) : Dynamic;
	public function initHashChangeEvent(typeArg:DOMString, canBubbleArg:Bool, cancelableArg:Bool, oldURLArg:String, newURLArg:String) : Void;
}


extern class PageTransitionEvent extends Event {
	public var persisted (default,never) : Dynamic;
	public function initPageTransitionEvent(typeArg:DOMString, canBubbleArg:Bool, cancelableArg:Bool, persistedArg:Dynamic) : Void;
}


extern class BeforeUnloadEvent extends Event {
	public var returnValue : DOMString;
}


extern class DragEvent extends MouseEvent {
	public var dataTransfer (default,never) : DataTransfer;
	public function initDragEvent(typeArg:DOMString, canBubbleArg:Bool, cancelableArg:Bool, dummyArg:Dynamic, detailArg:Long, screenXArg:Long, screenYArg:Long, clientXArg:Long, clientYArg:Long, ctrlKeyArg:Bool, altKeyArg:Bool, shiftKeyArg:Bool, metaKeyArg:Bool, buttonArg:UnsignedShort, relatedTargetArg:EventTarget, dataTransferArg:DataTransfer) : Void;
}


extern interface DataTransfer {
	public var dropEffect : DOMString;
	public var effectAllowed : DOMString;
	public var types (default,never) : DOMStringList;
	public var files (default, never) : FileList;
	
	public function clearData(?format:DOMString) : Void;
	public function setData(format:DOMString, data:DOMString) : Void;
	public function getData(format:DOMString) : DOMString;
	public function setDragImage(image:Element, x:Long, y:Long) : Void;
	public function addElement(element:Element) : Void;
}


// UserAgent Stuff
typedef WindowProxy = Window;


extern class Window implements WindowTimers,
	implements WindowStyle,
	implements WindowSessionStorage,
	implements WindowLocalStorage {
	
	// from WindowStyle
	public function getComputedStyle(elt:Element, ?pseudoElt:DOMString) : CSSStyleDeclaration;
	
	// from WindowSessionStorage
	public var sessionStorage (default,never) : Storage;
	
	// from WindowLocalStorage
	public var localStorage (default,never) : Storage;
	
	// from WindowTimers
	public var setTimeout (default,never) : Dynamic; // method with var args
	public function clearTimeout(handle:Long) : Void;
	public var setInterval (default,never) : Dynamic; // method with var args
	public function clearInterval(handle:Long) : Void;
	
	// the current browsing context
	public var window (default,never) : WindowProxy;
	public var self (default,never) : WindowProxy;
	public var document (default,never) : Document;
	public var name : DOMString; 
	public var location (default,never) : Location;
	public var history (default,never) : History;
	public var undoManager (default,never) : UndoManager;
	public function getSelection() : Selection;
	public var locationbar (default,never) : BarProp;
	public var menubar (default,never) : BarProp;
	public var personalbar (default,never) : BarProp;
	public var scrollbars (default,never) : BarProp;
	public var statusbar (default,never) : BarProp;
	public var toolbar (default,never) : BarProp;
	public function close() : Void;
	public function stop() : Void;
	public function focus() : Void;
	public function blur() : Void;
	
	// other browsing contexts
	public var frames (default,never) : WindowProxy;
	public var length (default,never) : UnsignedLong;
	public var top (default,never) : WindowProxy;
	public var opener (default,never) : WindowProxy;
	public var parent (default,never) : WindowProxy;
	public var frameElement (default,never) : Element;
	public function open(?url:DOMString, ?target:DOMString, ?features:DOMString, ?replace:DOMString) : WindowProxy;
	
	// the user agent
	public var navigator (default,never) : Navigator;
	public var applicationCache (default,never) : ApplicationCache;
	
	// user prompts
	public function alert(message:DOMString) : Void;
	public function confirm(message:DOMString) : Bool;
	public function prompt(message:DOMString, ?defaultArg:DOMString) : DOMString;
	public function print() : Void;
	public function showModalDialog(url:DOMString, ?argument:Dynamic) : Dynamic;
	
	// event handler IDL attributes
	public var onafterprint : EventListener<Event>;
	public var onbeforeprint : EventListener<Event>;
	public var onbeforeunload : EventListener<BeforeUnloadEvent>;
	public var onblur : EventListener<UIEvent>;
	public var onerror : EventListener<Event>;
	public var onfocus : EventListener<UIEvent>;
	public var onhashchange : EventListener<HashChangeEvent>;
	public var onload : EventListener<Event>;
	public var onmessage : EventListener<MessageEvent>;
	public var onoffline : EventListener<Event>;
	public var ononline : EventListener<Event>;
	public var onpopstate : EventListener<PopStateEvent>;
	public var onpagehide : EventListener<PageTransitionEvent>;
	public var onpageshow : EventListener<PageTransitionEvent>;
	public var onredo : EventListener<UndoManagerEvent>;
	public var onresize : EventListener<UIEvent>;
	public var onstorage : EventListener<Event>;
	public var onundo : EventListener<UndoManagerEvent>;
	public var onunload : EventListener<Event>;
	public var onabort : EventListener<Event>;
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
	public var onformchange : EventListener<Event>;
	public var onforminput : EventListener<Event>;
	public var oninput : EventListener<Event>;
	public var oninvalid : EventListener<Event>;
	public var onkeydown : EventListener<KeyboardEvent>;
	public var onkeypress : EventListener<KeyboardEvent>;
	public var onkeyup : EventListener<KeyboardEvent>;
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


extern interface BarProp {
	public var visible : Bool;
}


extern interface History {
	public var length (default,never) : Long;
	public function go(?delta:Long) : Void;
	public function back() : Void;
	public function forward() : Void;
	public function pushState(data:Dynamic, title:DOMString, ?url:DOMString) : Void;
	public function replaceState(data:Dynamic, title:DOMString, ?url:DOMString) : Void;
}


extern interface Location {
	public var href : DOMString;
	public function assign(url:DOMString) : Void;
	public function replace(url:DOMString) : Void;
	public function reload() : Void;
	
	// URL decomposition IDL attributes 
	public var protocol : DOMString;
	public var host : DOMString;
	public var hostname : DOMString;
	public var port : DOMString;
	public var pathname : DOMString;
	public var search : DOMString;
	public var hash : DOMString;
	
	// resolving relative URLs
	public function resolveURL(url:DOMString) : DOMString;
}


extern class ApplicationCache extends EventTarget {
	
	// update status
	public static var UNCACHED : UnsignedShort = 0;
	public static var IDLE : UnsignedShort = 1;
	public static var CHECKING : UnsignedShort = 2;
	public static var DOWNLOADING : UnsignedShort = 3;
	public static var UPDATEREADY : UnsignedShort = 4;
	public static var OBSOLETE : UnsignedShort = 5;
	public var status (default,never) : UnsignedShort;
	
	// updates
	public function update() : Void;
	public function swapCache() : Void;
	
	// events
	public var onchecking : EventListener<Event>;
	public var onerror : EventListener<Event>;
	public var onnoupdate : EventListener<Event>;
	public var ondownloading : EventListener<Event>;
	public var onprogress : EventListener<ProgressEvent>;
	public var onupdateready : EventListener<Event>;
	public var oncached : EventListener<Event>;
	public var onobsolete : EventListener<Event>;
}


extern interface WindowTimers {
	public var setTimeout (default,never) : Dynamic; // method with var args
	public function clearTimeout(handle:Long) : Void;
	public var setInterval (default,never) : Dynamic; // method with var args
	public function clearInterval(handle:Long) : Void;
}


extern interface Navigator implements NavigatorID, implements NavigatorOnLine, implements NavigatorAbilities {
	// objects implementing this interface also implement the interfaces given below
}


extern interface NavigatorID {
	public var appName (default,never) : DOMString;
	public var appVersion (default,never) : DOMString;
	public var platform (default,never) : DOMString;
	public var userAgent (default,never) : DOMString;
}


extern interface NavigatorOnLine {
	public var onLine (default,never) : Bool;
}


extern interface NavigatorAbilities {
	// content handler registration
	public function registerProtocolHandler(scheme:DOMString, url:DOMString, title:DOMString) : Void;
	public function registerContentHandler(mimeType:DOMString, url:DOMString, title:DOMString) : Void;
	public function yieldForStorageUpdates() : Void;
}


extern interface Selection {
	public var anchorNode (default,never) : Node;
	public var anchorOffset (default,never) : Long;
	public var focusNode (default,never) : Node;
	public var focusOffset (default,never) : Long;
	public var isCollapsed (default,never) : Bool;
	public function collapse(parentNode:Node, offset:Long) : Void;
	public function collapseToStart() : Void;
	public function collapseToEnd() : Void;
	public function selectAllChildren(parentNode:Node) : Void;
	public function deleteFromDocument() : Void;
	public var rangeCount (default,never) : Long;
	public function getRangeAt(index:Long) : Range;
	public function addRange(range:Range) : Void;
	public function removeRange(range:Range) : Void;
	public function removeAllRanges() : Void;
}


extern interface UndoManager {
	public var length (default,never) : UnsignedLong;
	public function item(index:UnsignedLong) : Dynamic;
	public var position (default,never) : Long;
	public function add(data:Dynamic, title:DOMString) : UnsignedLong;
	public function remove(index:UnsignedLong) : Void;
	public function clearUndo() : Void;
	public function clearRedo() : Void;
}


extern class UndoManagerEvent extends MouseEvent {
	public var data (default,never) : Dynamic;
	public function initUndoManagerEvent(typeArg:DOMString, canBubbleArg:Bool, cancelableArg:Bool, dataArg:Dynamic) : Void;
}