
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
// externs for http://dev.w3.org/html5/workers/ (v. 10 August 2010)

import js.w3c.DOMTypes;
import js.w3c.level3.Events;
import js.w3c.html5.Core;
import js.w3c.html5.Messaging;


// The WorkerGlobalScope interface must not exist if the interface's relevant namespace object is a Window object. (from WorkerUtils)
extern class WorkerGlobalScope extends EventTarget, implements WorkerUtils {
	public var importScripts : Dynamic; // method with var args
	public var navigator (default,never) : WorkerNavigator;
	public var setTimeout (default,never) : Dynamic; // method with var args
	public function clearTimeout(handle:Long) : Void;
	public var setInterval (default,never) : Dynamic; // method with var args
	public function clearInterval(handle:Long) : Void;
	public var self (default,never) : WorkerGlobalScope;
	public var location (default,never) : WorkerLocation;
	public function close() : Void;
	public var onerror : EventListener<ErrorEvent>;
}


extern class DedicatedWorkerGlobalScope extends WorkerGlobalScope {
	public function postMessage(message:Dynamic, ?ports:MessagePortArray) : Void;
	public var onmessage : EventListener<MessageEvent>;
}


extern class SharedWorkerGlobalScope extends WorkerGlobalScope {
	public var name (default,never) : DOMString;
	public var applicationCache (default,never) : ApplicationCache;
	public var onconnect : EventListener<MessageEvent>;
}


extern class ErrorEvent extends Event {
	public var message (default,never) : DOMString;
	public var filename (default,never) : DOMString;
	public var lineno (default,never) : UnsignedLong;
	public function initErrorEvent(typeArg:DOMString, canBubbleArg:Bool, cancelableArg:Bool, messageArg:DOMString, filenameArg:DOMString, linenoArg:UnsignedLong) : Void;
}


extern class AbstractWorker extends EventTarget {
	public var onerror : EventListener<ErrorEvent>;
}


extern class Worker extends AbstractWorker {
	public function new(scriptURL:DOMString) : Void;
	public function terminate() : Void;
	public function postMessage(message:Dynamic, ?ports:MessagePortArray) : Void;
	public var onmessage : EventListener<MessageEvent>;
}


extern class SharedWorker extends AbstractWorker {
	public function new(scriptURL:DOMString, ?name:DOMString) : Void;
	public var port (default,never) : MessagePort;
}

extern interface WorkerUtils implements WindowTimers {
	public var importScripts : Dynamic; // method with var args
	public var navigator (default,never) : WorkerNavigator;
}


extern interface WorkerNavigator implements NavigatorID, implements NavigatorOnLine {
}


extern class WorkerLocation extends Object {
	public var href (default,never) : DOMString;
	public var protocol (default,never) : DOMString;
	public var host (default,never) : DOMString;
	public var hostname (default,never) : DOMString;
	public var port (default,never) : DOMString;
	public var pathname (default,never) : DOMString;
	public var search (default,never) : DOMString;
	public var hash (default,never) : DOMString;
}

