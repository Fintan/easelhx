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
// externs for http://dev.w3.org/2006/webapi/XMLHttpRequest-2/ (8th August 2010 version)

import js.w3c.DOMTypes;
import js.w3c.level3.Events;
import js.w3c.webapi.Progress;


extern class XMLHttpRequestEventTarget extends EventTarget {
	public var onloadstart : EventListener<ProgressEvent>;
	public var onprogress : EventListener<ProgressEvent>;
	public var onabort : EventListener<ProgressEvent>;
	public var onerror : EventListener<ProgressEvent>;
	public var onload : EventListener<ProgressEvent>;
	public var ontimeout : EventListener<ProgressEvent>;
	public var onloadend : EventListener<ProgressEvent>;
}


extern class XMLHttpRequestUpload extends XMLHttpRequestEventTarget {
	// nothing defined yet
}


extern class XMLHttpRequest extends XMLHttpRequestEventTarget {
	public function new() : Void;
	
	// event handler attributes
	public var onreadystatechange : EventListener<Event>;
	
	// states
	public static var UNSENT : UnsignedShort = 0;
	public static var OPENED : UnsignedShort = 1;
	public static var HEADERS_RECEIVED : UnsignedShort = 2;
	public static var LOADING : UnsignedShort = 3;
	public static var DONE : UnsignedShort = 4;
	public var readyState (default,never) : UnsignedShort;
	
	// request
	public function open(method:DOMString, url:DOMString, async:Bool=true, ?user:DOMString, ?password:DOMString) : Void;
	public function setRequestHeader(header:DOMString, value:DOMString) : Void;
	public var timeout : UnsignedLong;
	public var withCredentials : Bool;
	public var followRedirects : Bool;
	public var upload (default,never) : XMLHttpRequestUpload;
	public function send(?data:Dynamic) : Void;
	public function abort() : Void;
	
	// response
	public var status (default,never) : UnsignedShort;
	public var statusText (default,never) : DOMString;
	public function getResponseHeader(header:DOMString) : DOMString;
	public function getAllResponseHeaders() : DOMString;
	public function overrideMimeType(mime:DOMString) : Void;
	public var responseBody (default,never) : ByteArray;
	public var responseText (default,never) : DOMString;
	public var responseXML (default,never) : js.w3c.level3.Core.Document;
}


extern class AnonXMLHttpRequest extends XMLHttpRequest {
	public function new() : Void;
}


extern class FormData extends Object {
	public function new() : Void;
	public function append(name:DOMString, value:Dynamic) : Void;
}