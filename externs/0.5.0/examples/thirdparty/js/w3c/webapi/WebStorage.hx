
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
// externs for http://dev.w3.org/html5/webstorage/ (v. 16th August 2010)

import js.w3c.DOMTypes;
import js.w3c.level3.Events;


extern class Storage extends Object {
	public var length (default,never) : UnsignedLong;
	public function clear() : Void;
}


extern interface WindowSessionStorage {
	public var sessionStorage (default,never) : Storage;
}


extern interface WindowLocalStorage {
	public var localStorage (default,never) : Storage;
}

extern class StorageEvent extends Event {
	public var key (default,never) : DOMString;
	public var oldValue (default,never) : Dynamic;
	public var newValue (default,never) : Dynamic;
	public var url (default,never) : DOMString;
	public var storageArea (default,never) : Storage;
	public function initStorageEvent(typeArg:DOMString, canBubbleArg:Bool, cancelableArg:Bool, keyArg:DOMString, oldValueArg:Dynamic, newValueArg:Dynamic, urlArg:DOMString, storageAreaArg:Storage) : Void;
}