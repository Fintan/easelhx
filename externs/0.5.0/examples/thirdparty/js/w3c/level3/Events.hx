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

import js.w3c.DOMTypes;
import js.w3c.level2.Views;
import js.w3c.level3.Core;


extern interface EventException {
	public var code:Short;
}


extern class Event extends Object {
	public static inline var CAPTURING_PHASE:UnsignedShort = 1;
	public static inline var AT_TARGET:UnsignedShort = 2;
	public static inline var BUBBLING_PHASE:UnsignedShort = 3;
	
	public var type (default,never) : DOMString;
	public var target (default,never) : EventTarget;
	public var currentTarget (default,never) : EventTarget;
	public var eventPhase (default,never) : UnsignedShort;
	public var bubbles (default,never) : Bool;
	public var cancelable (default,never) : Bool;
	public var timeStamp (default,never) : DOMTimeStamp;
	public var namespaceURI (default,never) : DOMString;
	public var defaultPrevented (default,never) : Bool;
	
	public function stopPropagation() : Void;
	public function preventDefault() : Void;
	public function initEvent(eventTypeArg:DOMString, canBubbleArg:Bool, cancelableArg:Bool) : Void;
	public function stopImmediatePropagation() : Void;
	public function initEventNS(namespaceURIArg:DOMString, eventTypeArg:DOMString, canBubbleArg:Bool, cancelableArg:Bool) : Void;
}


extern class CustomEvent extends Event {
	public var detail (default,never) : DOMObject;
	public function initCustomEvent(typeArg:DOMString, canBubbleArg:Bool, cancelableArg:Bool, detailArg:DOMObject) : Void;
	public function initCustomEventNS(namespaceURIArg:DOMString, typeArg:DOMString, canBubbleArg:Bool, cancelableArg:Bool, detailArg:DOMObject) : Void;
}


extern class EventTarget extends Object {
	public function addEventListener(type:DOMString, listener:EventListener<Dynamic>, useCapture:Bool) : Void;
	public function removeEventListener(type:DOMString, listener:EventListener<Dynamic>, useCapture:Bool) : Void;
	public function dispatchEvent(evt:Event) : Bool;
	public function addEventListenerNS(namespaceURI:DOMString, type:DOMString, listener:EventListener<Dynamic>, useCapture:Bool) : Void;
	public function removeEventListenerNS(namespaceURI:DOMString, type:DOMString, listener:EventListener<Dynamic>, useCapture:Bool) : Void;
}


typedef EventListener<T:Event> = T->Void;


//extern interface EventListener<T:Event> {
//	public function handleEvent(evt:T) : Void;
//}


extern interface DocumentEvent {
	public function createEvent(eventType:DOMString) : Event;
	public function canDispatch(namespaceURI:DOMString, type:DOMString) : Bool;
}


extern class UIEvent extends Event {
	public var view (default,never) : AbstractView;
	public var detail (default,never) : Long;
	public function initUIEvent(typeArg:DOMString, canBubbleArg:Bool, cancelableArg:Bool, viewArg:AbstractView, detailArg:Long) : Void;
	public function initUIEventNS(namespaceURIArg:DOMString, typeArg:DOMString, canBubbleArg:Bool, cancelableArg:Bool, viewArg:AbstractView, detailArg:Long) : Void;
}


extern class TextEvent extends UIEvent {
	public var data (default,never) : DOMString;
	public function initTextEvent(typeArg:DOMString, canBubbleArg:Bool, cancelableArg:Bool, viewArg:AbstractView, dataArg:DOMString, inputMode:UnsignedLong) : Void;
	public function initTextEventNS(namespaceURIArg:DOMString, typeArg:DOMString, canBubbleArg:Bool, cancelableArg:Bool, viewArg:AbstractView, dataArg:DOMString, inputMode:UnsignedLong) : Void;
}


extern class KeyboardEvent extends UIEvent {
	public static inline var DOM_KEY_LOCATION_STANDARD:UnsignedLong = 0x00;
	public static inline var DOM_KEY_LOCATION_LEFT:UnsignedLong = 0x01;
	public static inline var DOM_KEY_LOCATION_RIGHT:UnsignedLong = 0x02;
	public static inline var DOM_KEY_LOCATION_NUMPAD:UnsignedLong = 0x03;
	public static inline var DOM_KEY_LOCATION_MOBILE:UnsignedLong = 0x04;
	public static inline var DOM_KEY_LOCATION_JOYSTICK:UnsignedLong = 0x05;

	public var keyIdentifier (default,never) : DOMString;
	public var keyLocation (default,never) : UnsignedLong;
	public var ctrlKey (default,never) : Bool;
	public var shiftKey (default,never) : Bool;
	public var altKey (default,never) : Bool;
	public var metaKey (default,never) : Bool;

	public function getModifierState(keyIdentifierArg:DOMString) : Bool;
	public function initKeyboardEvent(typeArg:DOMString, canBubbleArg:Bool, cancelableArg:Bool, viewArg:AbstractView, keyIdentifierArg:DOMString, keyLocationArg:UnsignedLong, modifiersListArg:DOMString) : Void;
	public function initKeyboardEventNS(namespaceURIArg:DOMString, typeArg:DOMString, canBubbleArg:Bool, cancelableArg:Bool, viewArg:AbstractView, keyIdentifierArg:DOMString, keyLocationArg:UnsignedLong, modifiersListArg:DOMString) : Void;
}


extern class MouseEvent extends UIEvent {
	public var screenX (default,never) : Long;
	public var screenY (default,never) : Long;
	public var clientX (default,never) : Long;
	public var clientY (default,never) : Long;
	public var ctrlKey (default,never) : Bool;
	public var shiftKey (default,never) : Bool;
	public var altKey (default,never) : Bool;
	public var metaKey (default,never) : Bool;
	public var button (default,never) : UnsignedShort;
	public var relatedTarget (default,never) : EventTarget;
	
	public function getModifierState(keyIdentifierArg:DOMString) : Bool;
	public function initMouseEvent(typeArg:DOMString, canBubbleArg:Bool, cancelableArg:Bool, viewArg:AbstractView, detailArg:Long, screenXArg:Long, screenYArg:Long, clientXArg:Long, clientYArg:Long, buttonArg:UnsignedShort, relatedTargetArg:EventTarget, modifiersListArg:DOMString) : Void;
	public function initMouseEventNS(namespaceURIArg:DOMString, typeArg:DOMString, canBubbleArg:Bool, cancelableArg:Bool, viewArg:AbstractView, detailArg:Long, screenXArg:Long, screenYArg:Long, clientXArg:Long, clientYArg:Long, buttonArg:UnsignedShort, relatedTargetArg:EventTarget, modifiersListArg:DOMString) : Void;
}


extern class WheelEvent extends MouseEvent {
	public var deltaX (default,never) : Long;
	public var deltaY (default,never) : Long;
	public var deltaZ (default,never) : Long;
	
	public function initWheelEventNS(namespaceURIArg:DOMString, typeArg:DOMString, canBubbleArg:Bool, cancelableArg:Bool, viewArg:AbstractView, detailArg:Long, screenXArg:Long, screenYArg:Long, clientXArg:Long, clientYArg:Long, buttonArg:UnsignedShort, relatedTargetArg:EventTarget, modifiersListArg:DOMString, deltaXArg:Long, deltaYArg:Long, deltaZArg:Long) : Void;
}


extern class MouseWheelEvent extends MouseEvent {
	public var wheelDelta (default,never) : Long;
	
	public function initMouseWheelEventNS(namespaceURIArg:DOMString, typeArg:DOMString, canBubbleArg:Bool, cancelableArg:Bool, viewArg:AbstractView, detailArg:Long, screenXArg:Long, screenYArg:Long, clientXArg:Long, clientYArg:Long, buttonArg:UnsignedShort, relatedTargetArg:EventTarget, modifiersListArg:DOMString, wheelDeltaArg:Long) : Void;
}


extern class MutationEvent extends Event {
	public static inline var MODIFICATION:UnsignedShort = 1;
	public static inline var ADDITION:UnsignedShort = 2;
	public static inline var REMOVAL:UnsignedShort = 3;

	public var relatedNode (default,never) : Node;
	public var prevValue (default,never) : DOMString;
	public var newValue (default,never) : DOMString;
	public var attrName (default,never) : DOMString;
	public var attrChange (default,never) : UnsignedShort;

	public function initMutationEvent(typeArg:DOMString, canBubbleArg:Bool, cancelableArg:Bool, relatedNodeArg:Node, prevValueArg:DOMString, newValueArg:DOMString, attrNameArg:DOMString, attrChangeArg:UnsignedShort) : Void;
	public function initMutationEventNS(namespaceURIArg:DOMString, typeArg:DOMString, canBubbleArg:Bool, cancelableArg:Bool, relatedNodeArg:Node, prevValueArg:DOMString, newValueArg:DOMString, attrNameArg:DOMString, attrChangeArg:UnsignedShort) : Void;
}


extern class MutationNameEvent extends MutationEvent {
	public var prevNamespaceURI (default,never) : DOMString;
	public var prevNodeName (default,never) : DOMString;
	
	public function initMutationNameEvent(typeArg:DOMString, canBubbleArg:Bool, cancelableArg:Bool, relatedNodeArg:Node, prevNamespaceURIArg:DOMString, prevNodeNameArg:DOMString) : Void;
	public function initMutationNameEventNS(namespaceURIArg:DOMString, typeArg:DOMString, canBubbleArg:Bool, cancelableArg:Bool, relatedNodeArg:Node, prevNamespaceURIArg:DOMString, prevNodeNameArg:DOMString) : Void;
}


extern class CompositionEvent extends UIEvent {
	public var data (default,never) : DOMString;
	
	public function initCompositionEvent(typeArg:DOMString, canBubbleArg:Bool, cancelableArg:Bool, viewArg:AbstractView, dataArg:DOMString) : Void;
	public function initCompositionEventNS(namespaceURIArg:DOMString, typeArg:DOMString, canBubbleArg:Bool, cancelableArg:Bool, viewArg:AbstractView, dataArg:DOMString) : Void;
}