
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


package ;

import js.w3c.level3.Core;
import UserAgentContext;
using StringTools;

class CommonJS {
	
	
	//Gets the current Window
		public static function getWindow() : Window{
			var window : Window =  untyped __js__("window");
			return window;
		}
		
	//Gets the current HTML Document 
		public static function getHtmlDocument() : HTMLDocument{
			var htmlDocument : HTMLDocument =  untyped __js__("document");
			return htmlDocument;
		}		
	
	
	//Creates a new element on a given element or if none provided on the document body
		public static function newElement( elementType : String, ?htmlElement : Dynamic  ) : Dynamic{
			var htmlDocument : HTMLDocument =  getHtmlDocument();
			if(htmlElement == null) htmlElement = htmlDocument.body;
			return htmlElement.createElement(elementType);
		}


	//Gets an element from the HTML document body
		public static function get( domSelection : String  ) : Dynamic{
			var htmlDocument : HTMLDocument =  getHtmlDocument();
			return htmlDocument.body.querySelector(domSelection);
		}
		
		
		
	//Gets all elements from the HTML document body
		public static function getAll( domSelection : String  ) : NodeList{
			var htmlDocument : HTMLDocument =  getHtmlDocument();
			return htmlDocument.body.querySelectorAll(domSelection);
		}	
		

	//Stop's the event propergation and defualt action
		public static function stopEventPropergation( event : Dynamic ){
			if(event.stopPropagation != null) event.stopPropagation(); 
			else if( event.cancelBubble != null) event.cancelBubble = true;
			if (event.preventDefault != null) event.preventDefault();
			else if( event.returnValue != null) event.returnValue = false;
		}	
		
		
	//Add event listener to all matching elements
		public static function addEventListener( domSelection : String, eventType :String, eventHandler:Dynamic->Void, ?useCapture:Bool = true){
			var nodeList : NodeList =  getAll(domSelection);
			for( i in 0...nodeList.length ){
				var element : Element = nodeList[i];
				element.addEventListener(eventType, eventHandler, useCapture); 
			}	 
		}	
			
	//Remove event listener from all matching elements
		public static function removeEventListener( domSelection : String, eventType :String, eventHandler:Dynamic->Void, ?useCapture:Bool = true){
			var nodeList : NodeList =  getAll(domSelection);
			for( i in 0...nodeList.length ){
				var element : Element = nodeList[i];
				element.removeEventListener(eventType, eventHandler, useCapture); 
			}
		}
		
	
	//Get's the computed style style of a rendered HTML element
		public static function getComputedStyle( element : Element, style :String) : Dynamic {
  			var computedStyle : CSSStyleDeclaration;
  			var htmlDocument : HTMLDocument =  getHtmlDocument();
 		 	if (element.currentStyle != null){ computedStyle = element.currentStyle; }
  			else { computedStyle = htmlDocument.defaultView.getComputedStyle(element, null); }
  			return computedStyle.getPropertyValue(style);
		}
		
		
	//Sets CSS styles for all matching elements 
		public static function setStyle( domSelection : String, cssStyle :String, value:String){
			var nodeList : NodeList =  getAll(domSelection);
			for( i in 0...nodeList.length ){
				var element : Element = nodeList[i];
				untyped element.style[cssStyle] = value;
			}
		}	
		
	
	
					
		
	
}