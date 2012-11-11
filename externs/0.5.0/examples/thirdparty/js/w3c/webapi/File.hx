
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
// from File API http://dev.w3.org/2006/webapi/FileAPI/ (28 June 2010)

import js.w3c.DOMTypes;
import js.w3c.level3.Events;
import js.w3c.webapi.Progress;
import js.webgl.TypedArray;

typedef FileList = Array<File>;


extern class File extends Blob {
	public var name (default,never) : DOMString;
}


extern class Blob {
	public var size (default,never) : UnsignedLong;
	public var type (default,never) : DOMString;
	public var url (default,never) : DOMString;
	public function slice(start:Long, length:Long, ?contentType:DOMString) : Blob; 
}



extern class BlobReader extends EventTarget {
	public function new() : Void;
	
	// async read methods
	public function readAsArrayBuffer(blob:Blob) : Void;
	public function readAsBinaryString(blob:Blob) : Void;
	public function readAsText(blob:Blob, ?encoding:DOMString) : Void;
	public function readAsDataURL(blob:Blob) : Void;
	public function abort() : Void;
	
	// states
	public static var EMPTY : UnsignedShort = 0;
	public static var LOADING : UnsignedShort = 1;
	public static var DONE : UnsignedShort = 2;
	public var readyState (default,never) : UnsignedShort;
	
	// File or Blob data
	public var result (default,never) : Dynamic;
	public var error (default,never) : FileError;
	
	// event handler attributes
	public var onloadstart : EventListener<ProgressEvent>;
	public var onprogress : EventListener<ProgressEvent>;
	public var onabort : EventListener<ProgressEvent>;
	public var onerror : EventListener<ProgressEvent>;
	public var onload : EventListener<ProgressEvent>;
	public var onloadend : EventListener<ProgressEvent>;
}



extern class BlobReaderSync extends EventTarget {
	public function new() : Void;
	public function readAsArrayBuffer(blob:Blob) : ArrayBuffer;
	public function readAsBinaryString(blob:Blob) : DOMString;
	public function readAsText(blob:Blob, ?encoding:DOMString) : DOMString;
	public function readAsDataURL(blob:Blob) : DOMString;
}


extern class FileError {
	public static var NO_MODIFICATION_ALLOWED_ERR : UnsignedShort = 7; // from FileWriter
	public static var NOT_FOUND_ERR : UnsignedShort = 8;
	public static var INVALID_STATE_ERR : UnsignedShort = 11; // from FileWriter
	public static var SYNTAX_ERR : UnsignedShort = 12; // from FileWriter
	public static var SECURITY_ERR : UnsignedShort = 18;
	public static var ABORT_ERR : UnsignedShort = 20;
	public static var NOT_READABLE_ERR : UnsignedShort = 24;
	public static var ENCODING_ERR : UnsignedShort = 26; // from FileWriter
	public var code (default,never) : UnsignedShort;
}

extern class FileException {
	public static var NO_MODIFICATION_ALLOWED_ERR : UnsignedShort = 7; // from FileWriter
	public static var NOT_FOUND_ERR : UnsignedShort = 8;
	public static var INVALID_STATE_ERR : UnsignedShort = 11; // from FileWriter
	public static var SYNTAX_ERR : UnsignedShort = 12; // from FileWriter
	public static var SECURITY_ERR : UnsignedShort = 18;
	public static var ABORT_ERR : UnsignedShort = 20;
	public static var NOT_READABLE_ERR : UnsignedShort = 24;
	public static var ENCODING_ERR : UnsignedShort = 26; // from FileWriter
	public var code (default,never) : UnsignedShort;
}
