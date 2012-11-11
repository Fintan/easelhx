
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


package js.w3c.webapi;
// from Progress events 1.0 http://dev.w3.org/2006/webapi/progress/Progress.html

import js.w3c.DOMTypes;
import js.w3c.level3.Events;


extern class ProgressEvent extends Event {
	public var lengthComputable (default,never) : Bool;
	public var loaded (default,never) : UnsignedLong;
	public var total (default,never) : UnsignedLong;
	public var loadedItems (default,never) : UnsignedLong;
	public var totalItems (default,never) : UnsignedLong;
	public function initProgressEvent(typeArg:DOMString, canBubbleArg:Bool, cancelableArg:Bool, lengthComputableArg:Bool, loadedArg:UnsignedLong, totalArg:UnsignedLong, ?loadedItemsArg:UnsignedLong, totalItemsArg:UnsignedLong) : Void;
	public function initProgressEventNS(namespaceURI:DOMString, typeArg:DOMString, canBubbleArg:Bool, cancelableArg:Bool, lengthComputableArg:Bool, loadedArg:UnsignedLong, totalArg:UnsignedLong, ?loadedItemsArg:UnsignedLong, totalItemsArg:UnsignedLong) : Void;
}