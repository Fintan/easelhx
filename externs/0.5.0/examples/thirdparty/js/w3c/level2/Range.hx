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

package js.w3c.level2;
// http://www.w3.org/TR/DOM-Level-2-Traversal-Range/

import js.w3c.DOMTypes;
import js.w3c.level3.Core;


extern class Range {
	public var startContainer (default,never) : Node; // throws DOMException
	public var startOffset (default,never) : Long; // throws DOMException
	public var endContainer (default,never) : Node; // throws DOMException
	public var endOffset (default,never) : Long; // throws DOMException
	public var collapsed (default,never) : Bool; // throws DOMException
	public var commonAncestorContainer (default,never) : Node; // throws DOMException
	
	public function setStart(refNode:Node, offset:Long) : Void ; // throws RangeException,DOMException
	public function setEnd(refNode:Node, offset:Long) : Void ; // throws RangeException,DOMException
	public function setStartBefore(refNode:Node) : Void ; // throws RangeException,DOMException
	public function setStartAfter(refNode:Node) : Void ; // throws RangeException,DOMException
	public function setEndBefore(refNode:Node) : Void ; // throws RangeException,DOMException
	public function setEndAfter(refNode:Node) : Void ; // throws RangeException,DOMException
	public function collapse(toStart:Bool) : Void ; // throws DOMException
	public function selectNode(refNode:Node) : Void ; // throws RangeException,DOMException
	public function selectNodeContents(refNode:Node) : Void ; // throws RangeException,DOMException

	public static inline var START_TO_START:Short = 0;
	public static inline var START_TO_END:Short = 1;
	public static inline var END_TO_END:Short = 2;
	public static inline var END_TO_START:Short = 3;

	public function compareBoundaryPoints(how:Short, sourceRange:Range) : Short ; // throws DOMException
	public function deleteContents() : Void ; // throws DOMException
	public function extractContents() : DocumentFragment ; // throws DOMException
	public function cloneContents() : DocumentFragment ; // throws DOMException
	public function insertNode(newNode:Node) : Void ; // throws RangeException, DOMException
	public function surroundContents(newParent:Node) : Void ; // throws RangeException, DOMException
	public function cloneRange() : Range ; // throws DOMException
	public function toString() : DOMString ; // throws DOMException
	public function detach() : Void ; // throws DOMException
}


extern interface RangeException {
	public var code:Short;
}


extern interface DocumentRange {
	public function createRange() : Range;
}