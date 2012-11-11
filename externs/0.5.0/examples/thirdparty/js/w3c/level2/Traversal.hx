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


extern interface DocumentTraversal {
	public function createNodeIterator(root:Node, whatToShow:UnsignedLong, filter:NodeFilter, entityReferenceExpansion:Bool) : NodeIterator; // throws DOMException
	public function createTreeWalker(root:Node, whatToShow:UnsignedLong, filter:NodeFilter, entityReferenceExpansion:Bool) : TreeWalker; // throws DOMException
}


extern class NodeFilter {
	public static inline var FILTER_ACCEPT:Short = 1;
	public static inline var FILTER_REJECT:Short = 2;
	public static inline var FILTER_SKIP:Short = 3;

	public static inline var SHOW_ALL:UnsignedLong = 0xFFFFFFFF;
	public static inline var SHOW_ELEMENT:UnsignedLong = 0x00000001;
	public static inline var SHOW_ATTRIBUTE:UnsignedLong = 0x00000002;
	public static inline var SHOW_TEXT:UnsignedLong = 0x00000004;
	public static inline var SHOW_CDATA_SECTION:UnsignedLong = 0x00000008;
	public static inline var SHOW_ENTITY_REFERENCE:UnsignedLong = 0x00000010;
	public static inline var SHOW_ENTITY:UnsignedLong = 0x00000020;
	public static inline var SHOW_PROCESSING_INSTRUCTION:UnsignedLong = 0x00000040;
	public static inline var SHOW_COMMENT:UnsignedLong = 0x00000080;
	public static inline var SHOW_DOCUMENT:UnsignedLong = 0x00000100;
	public static inline var SHOW_DOCUMENT_TYPE:UnsignedLong = 0x00000200;
	public static inline var SHOW_DOCUMENT_FRAGMENT:UnsignedLong = 0x00000400;
	public static inline var SHOW_NOTATION:UnsignedLong = 0x00000800;

	public function acceptNode(n:Node) : Short;
}


extern interface NodeIterator {
	public var root (default,never) : Node;
	public var whatToShow (default,never) : UnsignedLong;
	public var filter (default,never) : NodeFilter;
	public var expandEntityReferences (default,never) : Bool;

	public function nextNode() : Node; // throws DOMException
	public function previousNode() : Node; // throws DOMException
	public function detach() : Void;
}


extern interface TreeWalker {
	public var root (default,never) : Node;
	public var whatToShow (default,never) : UnsignedLong;
	public var filter (default,never) : NodeFilter;
	public var expandEntityReferences (default,never) : Bool;
	public var currentNode : Node; // throws DOMException

	public function parentNode() : Node;
	public function firstChild() : Node;
	public function lastChild() : Node;
	public function previousSibling() : Node;
	public function nextSibling() : Node;
	public function previousNode() : Node;
	public function nextNode() : Node;
}