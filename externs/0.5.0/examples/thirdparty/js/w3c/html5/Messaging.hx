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
// from WhatWG version... section 9


import js.w3c.DOMTypes;
import js.w3c.level3.Events;
import js.w3c.html5.Core;


extern class MessageEvent extends Event {
	public var data (default,never) : Dynamic;
	public var origin (default,never) : DOMString;
	public var lastEventId (default,never) : DOMString;
	public var source (default,never) : WindowProxy;
	public var ports (default,never) : MessagePortArray;
	public function initMessageEvent(typeArg:DOMString, canBubbleArg:Bool, cancelableArg:Bool, dataArg:Dynamic, originArg:DOMString, lastEventIdArg:DOMString, sourceArg:WindowProxy, portsArg:MessagePortArray) : Void;
}


extern class MessagePort extends EventTarget {
	public function portMessage(message:Dynamic, ?ports:MessagePortArray) : Void;
	public function start() : Void;
	public function close() : Void;
	
	public var onmessage : EventListener<MessageEvent>;
}


typedef MessagePortArray = Array<MessagePort>;


extern class MessageChannel {
	public function new() : Void;
	public var port1 (default,never) : MessagePort;
	public var port2 (default,never) : MessagePort;
}