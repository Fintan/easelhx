
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


import UserAgentContext;

class UserAgent {
		
	// General	
		public static var getComputedStyle : Element -> Null<DOMString> -> CSSStyleDeclaration = untyped __js__('window.getComputedStyle');
		public static function getContext() : Window { return untyped __js__('window'); }


	// From WindowSessionStorage
		public static var sessionStorage : Storage = untyped __js__('window.sessionStorage');


	// From WindowLocalStorage
		public static var localStorage : Storage = untyped __js__('window.localStorage');


	//From WindowTimers
		public static var setTimeout : Dynamic = untyped __js__('window.setTimeout'); // method with var args
		public static var clearTimeout : Long -> Void = untyped __js__('window.clearTimeout');
		public static var setInterval : Dynamic = untyped __js__('window.setInterval'); // method with var args
		public static var clearInterval : Long -> Void = untyped __js__('window.clearInterval');


	//The current browsing context
		public static var window : WindowProxy = untyped __js__('window.window');
		public static var self : WindowProxy = untyped __js__('window.self');
		public static var document : Dynamic = untyped __js__('window.document');
		//public static var name : DOMString = untyped __js__('window.name');
		public static var location : Location = untyped __js__('window.location');
		public static var history : History = untyped __js__('window.history');
		public static var undoManager : UndoManager = untyped __js__('window.undoManager');
		public static var getSelection : Void -> Selection = untyped __js__('window.getSelection');
		public static var locationbar : BarProp = untyped __js__('window.locationbar');
		public static var menubar : BarProp = untyped __js__('window.menubar');
		public static var personalbar : BarProp = untyped __js__('window.personalbar');
		public static var scrollbars : BarProp = untyped __js__('window.scrollbars');
		public static var statusbar : BarProp = untyped __js__('window.statusbar');
		public static var toolbar : BarProp = untyped __js__('window.toolbar');
		public static var close : Void -> Void = untyped __js__('window.close');
		public static var stop : Void -> Void = untyped __js__('window.stop');
		public static var focus : Void -> Void = untyped __js__('window.focus');
		public static var blur : Void -> Void = untyped __js__('window.blur');


	// Other Browsing Contexts
		public static var frames : WindowProxy = untyped __js__('window.frames');
		//public static var length : UnsignedLong = untyped __js__('window.length');
		public static var top : WindowProxy = untyped __js__('window.top');
		public static var opener : WindowProxy = untyped __js__('window.opener');
		public static var parent : WindowProxy = untyped __js__('window.parent');
		public static var frameElement : Element = untyped __js__('window.frameElement');
		public static var open : Null<DOMString> -> Null<DOMString> -> Null<DOMString> -> Null<DOMString> -> WindowProxy = untyped __js__('window.open');


	// The User Agent
		public static var navigator : Navigator = untyped __js__('window.navigator');
		public static var applicationCache : ApplicationCache = untyped __js__('window.applicationCache');


	// User Prompts
		public static var alert : DOMString -> Void = untyped __js__('window.alert');
		public static var confirm : DOMString -> Bool = untyped __js__('window.confirm');
		public static var prompt : DOMString -> Null<DOMString> -> DOMString = untyped __js__('window.prompt');
		public static var print : Void -> Void = untyped __js__('window.print');
		public static var showModalDialog : DOMString -> Null<Dynamic> -> Dynamic = untyped __js__('window.showModalDialog');


	// Event Handler IDL Attributes
		public static var onafterprint : EventListener<Event> -> Void = null;
		public static var onbeforeprint : EventListener<Event> -> Void = null;
		public static var onbeforeunload : EventListener<BeforeUnloadEvent> -> Void = null;
		public static var onblur : EventListener<UIEvent> -> Void = null;
		public static var onerror : EventListener<Event> -> Void = null;
		public static var onfocus : EventListener<UIEvent> -> Void = null;
		public static var onhashchange : EventListener<HashChangeEvent> -> Void = null;
		public static var onload : EventListener<Event> -> Void = null;
		public static var onmessage : EventListener<MessageEvent> -> Void = null;
		public static var onoffline : EventListener<Event> -> Void = null;
		public static var ononline : EventListener<Event> -> Void = null;
		public static var onpopstate : EventListener<PopStateEvent> -> Void = null;
		public static var onpagehide : EventListener<PageTransitionEvent> -> Void = null;
		public static var onpageshow : EventListener<PageTransitionEvent> -> Void = null;
		public static var onredo : EventListener<UndoManagerEvent> -> Void = null;
		public static var onresize : EventListener<UIEvent> -> Void = null;
		public static var onstorage : EventListener<Event> -> Void = null;
		public static var onundo : EventListener<UndoManagerEvent> -> Void = null;
		public static var onunload : EventListener<Event> -> Void = null;
		public static var onabort : EventListener<Event> -> Void = null;
		public static var oncanplay : EventListener<Event> -> Void = null;
		public static var oncanplaythrough : EventListener<Event> -> Void = null;
		public static var onchange : EventListener<Event> -> Void = null;
		public static var onclick : EventListener<MouseEvent> -> Void = null;
		public static var oncontextmenu : EventListener<Event> -> Void = null;
		public static var ondblclick : EventListener<MouseEvent> -> Void = null;
		public static var ondrag : EventListener<DragEvent> -> Void = null;
		public static var ondragend : EventListener<DragEvent> -> Void = null;
		public static var ondragenter : EventListener<DragEvent> -> Void = null;
		public static var ondragleave : EventListener<DragEvent> -> Void = null;
		public static var ondragover : EventListener<DragEvent> -> Void = null;
		public static var ondragstart : EventListener<DragEvent> -> Void = null;
		public static var ondrop : EventListener<DragEvent> -> Void = null;
		public static var ondurationchange : EventListener<Event> -> Void = null;
		public static var onemptied : EventListener<Event> -> Void = null;
		public static var onended : EventListener<Event> -> Void = null;
		public static var onformchange : EventListener<Event> -> Void = null;
		public static var onforminput : EventListener<Event> -> Void = null;
		public static var oninput : EventListener<Event> -> Void = null;
		public static var oninvalid : EventListener<Event> -> Void = null;
		public static var onkeydown : EventListener<KeyboardEvent> -> Void = null;
		public static var onkeypress : EventListener<KeyboardEvent> -> Void = null;
		public static var onkeyup : EventListener<KeyboardEvent> -> Void = null;
		public static var onloadeddata : EventListener<Event> -> Void = null;
		public static var onloadedmetadata : EventListener<Event> -> Void = null;
		public static var onloadstart : EventListener<Event> -> Void = null;
		public static var onmousedown : EventListener<MouseEvent> -> Void = null;
		public static var onmousemove : EventListener<MouseEvent> -> Void = null;
		public static var onmouseout : EventListener<MouseEvent> -> Void = null;
		public static var onmouseover : EventListener<MouseEvent> -> Void = null;
		public static var onmouseup : EventListener<MouseEvent> -> Void = null;
		public static var onmousewheel : EventListener<MouseWheelEvent> -> Void = null;
		public static var onpause : EventListener<Event> -> Void = null;
		public static var onplay : EventListener<Event> -> Void = null;
		public static var onplaying : EventListener<Event> -> Void = null;
		public static var onprogress : EventListener<Event> -> Void = null;
		public static var onratechange : EventListener<Event> -> Void = null;
		public static var onreadystatechange : EventListener<Event> -> Void = null;
		public static var onscroll : EventListener<UIEvent> -> Void = null;
		public static var onseeked : EventListener<Event> -> Void = null;
		public static var onseeking : EventListener<Event> -> Void = null;
		public static var onselect : EventListener<Event> -> Void = null;
		public static var onshow : EventListener<Event> -> Void = null;
		public static var onstalled : EventListener<Event> -> Void = null;
		public static var onsubmit : EventListener<Event> -> Void = null;
		public static var onsuspend : EventListener<Event> -> Void = null;
		public static var ontimeupdate : EventListener<Event> -> Void = null;
		public static var onvolumechange : EventListener<Event> -> Void = null;
		public static var onwaiting : EventListener<Event> -> Void = null;
	
}

