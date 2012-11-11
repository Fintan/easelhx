
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
// extern for http://dev.w3.org/html5/websockets/ (v. 10 August 2010)

import js.w3c.DOMTypes;
import js.w3c.level3.Events;
import js.w3c.html5.Messaging;


extern class WebSocket extends EventTarget {
	public var url (default,never) : DOMString;
	public function new(url:DOMString, ?protocols:Dynamic ) : Void; // protocol is String or Array<String>
  
  	//ready state
	public static var CONNECTING : UnsignedShort = 0;
	public static var OPEN : UnsignedShort = 1;
	public static var CLOSING : UnsignedShort = 2;
	public static var CLOSED : UnsignedShort = 3;
	public var readyState (default,never) : UnsignedShort;
	public var bufferedAmount (default,never) : UnsignedLong;
  
  	//networking
	public var onopen : EventListener<Event>;
	public var onmessage : EventListener<MessageEvent>;
	public var onerror : EventListener<Event>;
	public var onclose : EventListener<CloseEvent>;
	public var protocol (default,never) : DOMString;
	public function send(data:DOMString) : Void;
	public function close() : Void;
}


extern class CloseEvent extends Event {
	public var wasClean (default,never) : Bool;
	public function initCloseEvent(typeArg:DOMString, canBubbleArg:Bool, cancelableArg:Bool, wasCleanArg:Bool) : Void;
}