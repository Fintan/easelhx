
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
// externs for http://dev.w3.org/2009/dap/file-system/file-writer.html (v. 17th July 2010)

import js.w3c.DOMTypes;
import js.w3c.level3.Events;
import js.w3c.webapi.File;
import js.w3c.webapi.Progress;


extern class BlobBuilder extends Object {
	public function new() : Void;
	public function getBlob(?contentType:DOMString) : Blob;
	public function append(textOrData:Dynamic, ?endings:DOMString) : Void; // raises (FileException);
}


extern class FileSaver extends Object {
	public static var INIT : UnsignedShort = 0;
	public static var WRITING : UnsignedShort = 1;
	public static var DONE : UnsignedShort = 2;
	
	public function new(data:Blob) : Void;
	public function abort() : Void; // raises (FileException);
	
	public var readyState (default,never) : UnsignedShort;
	public var error (default,never) : FileError;
	
	public var onwritestart : EventListener<ProgressEvent>;
	public var onprogress : EventListener<ProgressEvent>;
	public var onwrite : EventListener<ProgressEvent>;
	public var onabort : EventListener<ProgressEvent>;
	public var onerror : EventListener<ProgressEvent>;
	public var onwriteend : EventListener<ProgressEvent>;
}


extern interface FileSaverSync {
	// not defined yet
} 


extern class FileWriter extends FileSaver {
	public var position (default,never) : Long;
	public var length (default,never) : Long;
	public function write (data:Blob) : Void; // raises (FileException);
	public function seek (position:Long) : Void; // raises (FileException);
	public function truncate (size:Long) : Void; // raises (FileException);
}


extern class FileWriterSync extends FileSaver {
	public var position (default,never) : Long;
	public var length (default,never) : Long;
	public function write (data:Blob) : Void; // raises (FileException);
	public function seek (position:Long) : Void; // raises (FileException);
	public function truncate (size:Long) : Void; // raises (FileException);
}

// FileError and FileException are defined in File