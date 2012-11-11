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

package js.w3c.html5;


import js.w3c.DOMTypes;
import js.w3c.level3.Core;
import js.w3c.html5.Core;


// based on http://www.w3.org/TR/2dcontext/

extern interface CanvasGradient {
	// opaque object
	public function addColorStop(offset:Double, color:DOMString) : Void;
}

extern interface CanvasPattern {
	// opaque object
}

extern interface TextMetrics {
	public var width : Double; /* READ ONLY */
}

extern interface ImageData {
	public var width (default,never) : UnsignedLong; /* READ ONLY */
	public var height (default,never) : UnsignedLong; /* READ ONLY */
	public var data (default,never) : CanvasPixelArray; /* READ ONLY */
}

extern interface CanvasPixelArray implements ArrayAccess<Int> {
	public var length (default,never) : UnsignedLong; /* READ ONLY */
}


extern interface CanvasRenderingContext2D {
	
	 //Reference back to the canvas
	  	public var canvas (default,never) : HTMLCanvasElement; //READ ONLY

	 //State Management 
	  	public function save() : Void; // push state on state stack
		public function restore() : Void; // pop state stack and restore state
	 
	 //Transformations (default transform is the identity matrix)
	 	public function scale(x:Double, y:Double) : Void;
		public function rotate(angle:Double) : Void;
		public function translate(x:Double, y:Double) : Void;
		public function transform(a:Double, b:Double, c:Double, d:Double, e:Double, f:Double) : Void;
		public function setTransform(a:Double, b:Double, c:Double, d:Double, e:Double, f:Double) : Void;
	  
	//Compositing
	    public var globalAlpha : Double; // (default 1.0)
		public var globalCompositeOperation : DOMString; // (default source-over)

	//Colors and styles
	    public var strokeStyle : Dynamic; // (default black)
		public var fillStyle : Dynamic;  // (default black)  

		public function createLinearGradient(x0:Double, y0:Double, x1:Double, y1:Double) : CanvasGradient;
		public function createRadialGradient(x0:Double, y0:Double, r0:Double, x1:Double, y1:Double, r1:Double): CanvasGradient;
		@:overload( function(image:HTMLImageElement, repetition:DOMString ) : CanvasPattern {} )
		@:overload( function(image:HTMLCanvasElement, repetition:DOMString ) : CanvasPattern {} )
		public function createPattern(image:HTMLVideoElement, repetition:DOMString) : CanvasPattern;

	  // line caps/joins
		public var lineWidth : Double; // (default 1)
		public var lineCap : DOMString;  // "butt", "round", "square" (default "butt")
		public var lineJoin : DOMString; // "round", "bevel", "miter" (default "miter")
		public var miterLimit : Double; // (default 10)

	  // shadows
	    public var shadowOffsetX : Double; // (default 0)
	 	public var shadowOffsetY : Double; // (default 0)
		public var shadowBlur: Double; // (default 0)
		public var shadowColor : DOMString;  // (default transparent black)      

	 //rects
	 	public function clearRect(x:Double, y:Double, w:Double, h:Double) : Void;
	 	public function fillRect(x:Double, y:Double, w:Double, h:Double) : Void;
	 	public function strokeRect(x:Double, y:Double, w:Double, h:Double) : Void;

	  // path API
		public function beginPath() : Void;
		public function closePath() : Void;
		public function moveTo(x:Double, y:Double) : Void;
		public function lineTo(x:Double, y:Double) : Void;
		public function quadraticCurveTo(cpx:Double, cpy:Double, x:Double, y:Double) : Void;
		public function bezierCurveTo(cp1x:Double, cp1y:Double, cp2x:Double, cp2y:Double, x:Double, y:Double) : Void;
		public function arcTo(x1:Double, y1:Double, x2:Double, y2:Double, radius:Double) : Void;
		public function rect(x:Double, y:Double, w:Double, h:Double) : Void;
		public function arc(x:Double, y:Double, radius:Double, startAngle:Double, endAngle:Double, ?anticlockwise:Bool) : Void;
		public function fill() : Void;
		public function stroke() : Void;
		public function clip() : Void;
		public function isPointInPath(x:Double, y:Double) : Bool;

	  // Focus management
	  	public function drawFocusRing(element:Element, ?canDrawCustom:Bool) : Void;

	  // Caret and selection management
	  	public function caretBlinkRate() : Long;
	  	public function setCaretSelectionRect(element:Element, x:Double, y:Double, w:Double, h:Double)  : Bool;

	  // text
		public var font : DOMString; // (default 10px sans-serif)
		public var textAlign : DOMString; // "start", "end", "left", "right", "center" (default: "start")
		public var textBaseline : DOMString; // "top", "hanging", "middle", "alphabetic", "ideographic", "bottom" (default: "alphabetic")
		public function fillText(text:DOMString, x:Double, y:Double, ?maxWidth:Double) : Void;
		public function strokeText(text:DOMString, x:Double, y:Double, ?maxWidth:Double) : Void;
	 	public function measureText(text:DOMString) : TextMetrics;
	
	  // drawing images
	  	@:overload( function(image:HTMLImageElement, sx:Double, sy:Double, sw:Double, sh:Double, dx:Double, dy:Double, dw:Double, dh:Double) : Void {} )
	  	@:overload( function(image:HTMLCanvasElement, sx:Double, sy:Double, sw:Double, sh:Double, dx:Double, dy:Double, dw:Double, dh:Double) : Void {} )
		@:overload( function(image:HTMLVideoElement, sx:Double, sy:Double, sw:Double, sh:Double, dx:Double, dy:Double, dw:Double, dh:Double) : Void {} )
		@:overload( function(image:HTMLImageElement, dx:Double, dy:Double, dw:Double, dh:Double) : Void {} )
		@:overload( function(image:HTMLCanvasElement, dx:Double, dy:Double, dw:Double, dh:Double) : Void {} )
		@:overload( function(image:HTMLVideoElement, dx:Double, dy:Double, dw:Double, dh:Double) : Void {} )
		@:overload( function(image:HTMLImageElement, dx:Double, dy:Double) : Void {} )
		@:overload( function(image:HTMLCanvasElement, dx:Double, dy:Double) : Void {} )
		public function drawImage(image:HTMLVideoElement, dx:Double, dy:Double) : Void;
		
		
	  // pixel manipulation
	  	@:overload( function(sw:Double, sh:Double) : ImageData {} )
	  	public function createImageData(imagedata:ImageData) : ImageData;
		public function getImageData(sx:Double, sy:Double, sw:Double, sh:Double) : ImageData;
		public function putImageData(imagedata:ImageData, dx:Double, dy:Double, ?dirtyX:Double, ?dirtyY:Double, ?dirtyWidth:Double, ?dirtyHeight:Double) : Void;
	
}





