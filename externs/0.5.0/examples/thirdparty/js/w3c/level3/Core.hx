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


package js.w3c.level3;
// http://www.w3.org/TR/DOM-Level-3-Core/

import js.w3c.DOMTypes;
import js.w3c.level3.Events;
import js.w3c.webapi.Selectors2; // @issue, should this be here or not...


extern class DOMException {
	public static var NO_MODIFICATION_ALLOWED_ERR : UnsignedShort = 7;
	public static var NOT_FOUND_ERR : UnsignedShort = 8;
	public static var INVALID_STATE_ERR : UnsignedShort = 11;
	public static var SYNTAX_ERR : UnsignedShort = 12;
	
	// from http://dev.w3.org/2006/webapi/XMLHttpRequest/
	public static var SECURITY_ERR : UnsignedShort = 18;
	public static var NETWORK_ERR : UnsignedShort = 19;
	public static var ABORT_ERR : UnsignedShort = 20;
	
	// from http://dev.w3.org/2006/webapi/XMLHttpRequest-2/
	public static var TIMEOUT_ERR : UnsignedShort = 23;
	
	// from http://dev.w3.org/2006/webapi/FileAPI/
	public static var NOT_READABLE_ERR : UnsignedShort = 24;
	public static var ENCODING_ERR : UnsignedShort = 26;

	public var code:UnsignedShort;
}


extern interface DOMStringList {
	public var length (default,never) : UnsignedLong;
	public function item(index:UnsignedLong) : DOMString;
	public function contains(str:DOMString) : Bool;
}


extern interface NameList {
	public var length (default,never) : UnsignedLong;
	public function getName(index:UnsignedLong) : DOMString;
	public function getNamespaceURI(index:UnsignedLong) : DOMString;
	public function contains(str:DOMString) : Bool;
	public function containsNS(namespaceURI:DOMString, name:DOMString) : Bool;
}


extern interface DOMImplementationList {
	public var length (default,never) : UnsignedLong;
	public function item(index:UnsignedLong) : DOMImplementation;
}


extern interface DOMImplementationSource {
	public function getDOMImplementation(features:DOMString) : DOMImplementation;
	public function getDOMImplementationList(features:DOMString) : DOMImplementationList;
}


extern interface DOMImplementation implements js.w3c.html5.Core.DOMHTMLImplementation {
	public function hasFeature(feature:DOMString, version:DOMString) : Bool;
	public function createDocumentType(qualifiedName:DOMString, publicId:DOMString, systemId:DOMString) : DocumentType; // throws DOMException
	public function createDocument(namespaceURI:DOMString, qualifiedName:DOMString, doctype:DocumentType) : Document; // throws DOMException
	public function getFeature(feature:DOMString, version:DOMString) : DOMObject;
}


extern class Node extends EventTarget {
	public static inline var ELEMENT_NODE:UnsignedShort = 1;
	public static inline var ATTRIBUTE_NODE:UnsignedShort = 2;
	public static inline var TEXT_NODE:UnsignedShort = 3;
	public static inline var CDATA_SECTION_NODE:UnsignedShort = 4;
	public static inline var ENTITY_REFERENCE_NODE:UnsignedShort = 5;
	public static inline var ENTITY_NODE:UnsignedShort = 6;
	public static inline var PROCESSING_INSTRUCTION_NODE:UnsignedShort = 7;
	public static inline var COMMENT_NODE:UnsignedShort = 8;
	public static inline var DOCUMENT_NODE:UnsignedShort = 9;
	public static inline var DOCUMENT_TYPE_NODE:UnsignedShort = 10;
	public static inline var DOCUMENT_FRAGMENT_NODE:UnsignedShort = 11;
	public static inline var NOTATION_NODE:UnsignedShort = 12;
	
	public var nodeName (default,never) : DOMString;
	public var nodeValue : DOMString; // throws DOMException
	public var nodeType (default,never) : UnsignedShort;
	public var parentNode (default,never) : Node;
	public var childNodes (default,never) : NodeList;
	public var firstChild (default,never) : Node;
	public var lastChild (default,never) : Node;
	public var previousSibling (default,never) : Node;
	public var nextSibling (default,never) : Node;
	public var attributes (default,never) : NamedNodeMap<Attr>;
	public var ownerDocument (default,never) : Document;
	
	public function insertBefore(newChild:Node, refChild:Node) : Node; // throws DOMException;
	public function replaceChild(newChild:Node, oldChild:Node) : Node; // throws DOMException;
	public function removeChild(oldChild:Node) : Node; // throws DOMException
	public function appendChild(newChild:Node) : Node; // throws DOMException
	public function hasChildNodes() : Bool;
	public function cloneNode(deep:Bool) : Node;
	public function normalize() : Void;
	public function isSupported(feature:DOMString, version:DOMString) : Bool;
	
	public var namespaceURI (default,never) : DOMString;
	public var prefix : DOMString;
	public var localName (default,never) : DOMString;
	public var baseURI (default,never) : DOMString;
	
	public function hasAttributes() : Bool;
	
	public static inline var DOCUMENT_POSITION_DISCONNECTED:UnsignedShort = 0x01;
	public static inline var DOCUMENT_POSITION_PRECEDING:UnsignedShort = 0x02;
	public static inline var DOCUMENT_POSITION_FOLLOWING:UnsignedShort = 0x04;
	public static inline var DOCUMENT_POSITION_CONTAINS:UnsignedShort = 0x08;
	public static inline var DOCUMENT_POSITION_CONTAINED_BY:UnsignedShort = 0x10;
	public static inline var DOCUMENT_POSITION_IMPLEMENTATION_SPECIFIC:UnsignedShort = 0x20;
	
	public function compareDocumentPosition(other:Node) : UnsignedShort; // throws DOMException
	
	public var textContent : DOMString; // throws DOMException
	
	public function isSameNode(other:Node) : Bool;
	public function lookupPrefix(namespaceURI:DOMString) : DOMString;
	public function isDefaultNamespace(namespaceURI:DOMString) : Bool;
	public function lookupNamespaceURI(prefix:DOMString) : DOMString;
	public function isEqualNode(arg:Node) : Bool;
	public function getFeature(feature:DOMString, version:DOMString) : DOMObject;
	public function setUserData(key:DOMString, data:DOMUserData, handler:UserDataHandler) : DOMUserData;
	public function getUserData(key:DOMString) : DOMUserData;
		
}


extern class NodeList extends Object {
	public var length (default,never) : UnsignedLong;
	public function item(index:UnsignedLong) : Node;
}


extern interface NamedNodeMap<T> {
	public var length (default,never) : UnsignedLong;
	public function item(index:UnsignedLong) : T;
	public function getNamedItem(name:DOMString) : T;
	public function setNamedItem(arg:T) : T; // throws DOMException
	public function removeNamedItem(name:DOMString) : T; // throws DOMException
	public function getNamedItemNS(namespaceURI:DOMString, localName:DOMString) : T; // throws DOMException
	public function setNamedItemNS(arg:T) : T; // throws DOMException
	public function removeNamedItemNS(namespaceURI:DOMString, localName:DOMString) : T; // throws DOMException
}


extern class CharacterData extends Node {
	public var data : DOMString; // throws DOMException
	public var length (default,never) : UnsignedLong;
	public function substringData(offset:UnsignedLong, count:UnsignedLong) : DOMString; // throws DOMException
	public function appendData(arg:DOMString) : Void;	// throws DOMException;
	public function insertData(offset:UnsignedLong, arg:DOMString) : Void; // throws DOMException
	public function deleteData(offset:UnsignedLong, count:UnsignedLong) : Void; // throws DOMException
	public function replaceData(offset:UnsignedLong, count:UnsignedLong, arg:DOMString) : Void; // throws DOMException
}


extern class Attr extends Node {
	public var value : DOMString; // throws DOMException 
	public var name (default,never) : DOMString;
	public var specified (default,never) : Bool;
	public var ownerElement (default,never) : Element;
	public var schemaTypeInfo (default,never) : TypeInfo;
	public var isId (default,never) : Bool;
}


extern class Element extends Node, implements NodeSelector, implements ElementSelector {
	// from selectors2
	public function querySelector(selectors:DOMString, ?refNodes:Dynamic) : Element;
	public function querySelectorAll(selectors:DOMString, ?refNodes:Dynamic) : NodeList;
	public function queryScopedSelector(selectors:DOMString) : Element;
	public function queryScopedSelectorAll(selectors:DOMString) : NodeList;
	public function matchesSelector(selectors:DOMString, ?refNodes:Dynamic) : Bool;
	
	public var tagName (default,never) : DOMString;
	public function getAttribute(name:DOMString) : DOMString;
	public function setAttribute(name:DOMString, value:DOMString) : Void; // throws DOMException
	public function removeAttribute(name:DOMString) : Void; // throws DOMException
	public function getAttributeNode(name:DOMString) : Attr;
	public function setAttributeNode(newAttr:Attr) : Attr; // throws DOMException
	public function removeAttributeNode(oldAttr:Attr) : Attr; // throws DOMException
	public function getElementsByTagName(name:DOMString) : NodeList;
	public function getAttributeNS(namespaceURI:DOMString, localName:DOMString) : DOMString; // throws DOMException
	public function setAttributeNS(namespaceURI:DOMString, qualifiedName:DOMString, value:DOMString) : Void; // throws DOMException
	public function removeAttributeNS(namespaceURI:DOMString, localName:DOMString) : Void; // throws DOMException
	public function getAttributeNodeNS(namespaceURI:DOMString, localName:DOMString) : Attr; // throws DOMException
	public function setAttributeNodeNS(newAttr:Attr) : Attr; // throws DOMException
	public function getElementsByTagNameNS(namespaceURI:DOMString, localName:DOMString) : NodeList; // throws DOMException
	public function hasAttribute(name:DOMString) : Bool;
	public function hasAttributeNS(namespaceURI:DOMString, localName:DOMString) : Bool; // throws DOMException

	public var schemaTypeInfo (default,never) : TypeInfo;
	
	public function setIdAttribute(name:DOMString, isId:Bool) : Void; // throws DOMException
	public function setIdAttributeNS(namespaceURI:DOMString, localName:DOMString, isId:Bool) : Void; // throws DOMException
	public function setIdAttributeNode(idAttr:Attr, isId:Bool) : Void; // throws DOMException
}


extern class Text extends CharacterData {
	public var isElementContentWhitespace (default,never) : Bool;
	public var wholeText (default,never) : DOMString;
	public function splitText(offset:UnsignedLong) : Text; // throws DOMException
	public function replaceWholeText(content:DOMString) : Text; // throws DOMException);
}


extern class Comment extends CharacterData {
}


extern class TypeInfo {
	public var typeName (default,never) : DOMString;
	public var typeNamespace (default,never) : DOMString;
	
	public static inline var DERIVATION_RESTRICTION:UnsignedLong = 0x00000001;
	public static inline var DERIVATION_EXTENSION:UnsignedLong = 0x00000002;
	public static inline var DERIVATION_UNION:UnsignedLong = 0x00000004;
	public static inline var DERIVATION_LIST:UnsignedLong = 0x00000008;
	
	public function isDerivedFrom(typeNamespaceArg:DOMString, typeNameArg:DOMString, derivationMethod:UnsignedLong) : Bool;
}


extern class UserDataHandler {
	public static inline var NODE_CLONED:UnsignedShort = 1;
	public static inline var NODE_IMPORTED:UnsignedShort = 2;
	public static inline var NODE_DELETED:UnsignedShort = 3;
	public static inline var NODE_RENAMED:UnsignedShort = 4;
	public static inline var NODE_ADOPTED:UnsignedShort = 5;
	public function handle(operation:UnsignedShort, key:DOMString, data:DOMUserData, src:Node, dst:Node) : Void;
}


extern class DOMError {
	public static inline var SEVERITY_WARNING:UnsignedShort = 1;
	public static inline var SEVERITY_ERROR:UnsignedShort = 2;
	public static inline var SEVERITY_FATAL_ERROR:UnsignedShort = 3;

	public var severity (default,never) : UnsignedShort;
	public var message (default,never) : DOMString;
	public var type (default,never) : DOMString;
	public var relatedException (default,never) : DOMObject;
	public var relatedData (default,never) : DOMObject;
	public var location (default,never) : DOMLocator;
}


extern interface DOMErrorHandler {
	public function handleError(error:DOMError) : Bool;
}


extern interface DOMLocator {
	public var lineNumber (default,never) : Long;
	public var columnNumber (default,never) : Long;
	public var byteOffset (default,never) : Long;
	public var utf16Offset (default,never) : Long;
	public var relatedNode (default,never) : Node;
	public var uri (default,never) : DOMString;
}


extern interface DOMConfiguration {
	public var parameterNames (default,never) : DOMStringList;
	public function setParameter(name:DOMString, value:DOMUserData) : Void; // throws DOMException
	public function getParameter(name:DOMString) : DOMUserData; // throws DOMException
	public function canSetParameter(name:DOMString, value:DOMUserData) : Bool;
}


extern class CDATASection extends Text {
}


extern class DocumentType extends Node {
	public var name (default,never) : DOMString;
	public var entities (default,never) : NamedNodeMap<Entity>;
	public var notations (default,never) : NamedNodeMap<Notation>;
	public var publicId (default,never) : DOMString;
	public var systemId (default,never) : DOMString;
	public var internalSubset (default,never) : DOMString;
}


extern class Notation extends Node {
	public var publicId (default,never) : DOMString;
	public var systemId (default,never) : DOMString;
}


extern class Entity extends Node {
	public var publicId (default,never) : DOMString;
	public var systemId (default,never) : DOMString;
	public var notationName (default,never) : DOMString;
	public var inputEncoding (default,never) : DOMString;
	public var xmlEncoding (default,never) : DOMString;
	public var xmlVersion (default,never) : DOMString;
}


extern class EntityReference extends Node {
}


extern class ProcessingInstruction extends Node {
	public var target (default,never) : DOMString;
	public var data : DOMString;
}


extern class DocumentFragment extends Node, implements NodeSelector {
	// from selectors2
	public function querySelector(selectors:DOMString, ?refNodes:Dynamic) : Element;
	public function querySelectorAll(selectors:DOMString, ?refNodes:Dynamic) : NodeList;
	public function queryScopedSelector(selectors:DOMString) : Element;
	public function queryScopedSelectorAll(selectors:DOMString) : NodeList;

}


extern class Document extends Node, implements DocumentEvent, implements NodeSelector {
	public var doctype (default,never) : DocumentType;
	public var implementation (default,never) : DOMImplementation;
	public var documentElement (default,never) : Element; 
	// from DocumentEvent
	public function createEvent(eventType:DOMString) : Event;
	public function canDispatch(namespaceURI:DOMString, type:DOMString) : Bool;
	// from selectors2
	public function querySelector(selectors:DOMString, ?refNodes:Dynamic) : Element;
	public function querySelectorAll(selectors:DOMString, ?refNodes:Dynamic) : NodeList;
	public function queryScopedSelector(selectors:DOMString) : Element;
	public function queryScopedSelectorAll(selectors:DOMString) : NodeList;
			
	public function createElement(tagName:DOMString) : Element; // throws DOMException
	public function createDocumentFragment() : DocumentFragment;
	public function createTextNode(data:DOMString) : Text;
	public function createComment(data:DOMString) : Comment;
	public function createCDATASection(data:DOMString) : CDATASection; // throws DOMException
	public function createProcessingInstruction(target:DOMString, data:DOMString) : ProcessingInstruction; // throws DOMException
	public function createAttribute(name:DOMString) : Attr; // throws DOMException
	public function createEntityReference(name:DOMString) : EntityReference; // throws DOMException
	public function getElementsByTagName(tagname:DOMString) : NodeList;
	public function importNode(importedNode:Node, deep:Bool) : Node; // throws DOMException
	public function createElementNS(namespaceURI:DOMString, qualifiedName:DOMString) : Element; // throws DOMException
	public function createAttributeNS(namespaceURI:DOMString, qualifiedName:DOMString) : Attr; // throws DOMException
	public function getElementsByTagNameNS(namespaceURI:DOMString, localName:DOMString) : NodeList;
	public function getElementById(elementId:DOMString) : Element;
		
	public var inputEncoding (default,never) : DOMString;
	public var xmlEncoding (default,never) : DOMString;
	public var xmlStandalone : Bool; // throws DOMException
	public var xmlVersion : DOMString; // throws DOMException
	public var strictErrorChecking : Bool; // throws DOMException
	public var documentURI : DOMString;

	public function adoptNode(source:Node) : Node; // throws DOMException

	public var domConfig (default,never) : DOMConfiguration;
	
	public function normalizeDocument() : Void;
	public function renameNode(n:Node, namespaceURI:DOMString, qualifiedName:DOMString) : Node; // throws DOMException
	
}