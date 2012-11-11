
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


package js.webgl;
import js.w3c.DOMTypes;

//based on http://www.khronos.org/registry/typedarray/specs/1.0/


extern class ArrayBuffer {
	public function new(length:UnsignedLong) : Void;
	public var byteLength (default,never) : UnsignedLong;
}


extern interface ArrayBufferView {
	public var buffer (default,never) : ArrayBuffer;
	public var byteOffset (default,never) : UnsignedLong;
	public var byteLength (default,never) : UnsignedLong;
}


extern class Int8Array implements ArrayBufferView, implements ArrayAccess<Int> {
	
	static var BYTES_PER_ELEMENT:UnsignedLong;
	var buffer(default,null):ArrayBuffer;
	var byteOffset(default,null):UnsignedLong;
	var byteLength(default,null):UnsignedLong;
	
	@:overload(function (length:UnsignedLong):Void{})
	@:overload(function (array:Int8Array):Void{})
	@:overload(function (array:ArrayAccess<Int>):Void{})
	function new(buffer:ArrayBuffer, ?byteOffset:UnsignedLong, ?length:UnsignedLong):Void;
	
	function get(index:UnsignedLong):Int;
	function subarray(begin:Long, end:Long):Int8Array;
	
	@:overload(function (index:UnsignedLong, value:ArrayAccess<Int>):Void{})
	@:overload(function (array:Int8Array, ?offset:UnsignedLong):Void{})
	function set(array:ArrayBuffer, ?offset:UnsignedLong):Void;
	

	
}


extern class Uint8Array implements ArrayBufferView, implements ArrayAccess<Int> {

	public static var BYTES_PER_ELEMENT:UnsignedLong;
	public var buffer(default,null):ArrayBuffer;
	public var byteOffset(default,null):UnsignedLong;
	public var byteLength(default,null):UnsignedLong;
	
	@:overload(function (length:UnsignedLong):Void{})
	@:overload(function (array:Uint8Array):Void{})
	@:overload(function (array:ArrayAccess<Int>):Void{})
	function new(buffer:ArrayBuffer, ?byteOffset:UnsignedLong, ?length:UnsignedLong):Void;
	
	public function get(index:UnsignedLong):Int;
	public function subarray(begin:Long, end:Long):Uint8Array;
	
	@:overload(function (index:UnsignedLong, value:ArrayAccess<Int>):Void{})
	@:overload(function (array:Uint8Array, ?offset:UnsignedLong):Void{})
	public function set(array:ArrayBuffer, ?offset:UnsignedLong):Void;
	
	
}



extern class Int16Array implements ArrayBufferView, implements ArrayAccess<Int> {
    
	public static var BYTES_PER_ELEMENT:UnsignedLong;
	public var buffer(default,null):ArrayBuffer;
	public var byteOffset(default,null):UnsignedLong;
	public var byteLength(default,null):UnsignedLong;

	@:overload(function(length:UnsignedLong):Void{})
	@:overload(function(array:Int16Array):Void{})
	@:overload(function(array:ArrayAccess<Int>):Void{})
	function new(buffer:ArrayBuffer, ?byteOffset:UnsignedLong, ?length:UnsignedLong):Void;

	
	public function get(index:UnsignedLong):Int;
	public function subarray(begin:Long, end:Long):Int16Array;
	
	@:overload(function (index:UnsignedLong, value:ArrayAccess<Int>):Void{})
	@:overload(function (array:Int16Array, ?offset:UnsignedLong):Void{})
	public function set(array:ArrayBuffer, ?offset:UnsignedLong):Void;
	
	
}



extern class Uint16Array implements ArrayBufferView, implements ArrayAccess<Int> {
    
	public static var BYTES_PER_ELEMENT:UnsignedLong;
	public var buffer(default,null):ArrayBuffer;
	public var byteOffset(default,null):UnsignedLong;
	public var byteLength(default,null):UnsignedLong;

	@:overload(function(length:UnsignedLong):Void{})
	@:overload(function(array:Uint16Array):Void{})
	@:overload(function (array:ArrayAccess<Int>):Void{})
	public function new(buffer:ArrayBuffer, ?byteOffset:UnsignedLong, ?length:UnsignedLong):Void;
	
	public function get(index:UnsignedLong):Int;
	public function subarray(begin:Long, end:Long):Uint16Array;
	
	@:overload(function (index:UnsignedLong, value:ArrayAccess<Int>):Void{})
	@:overload(function (array:Uint16Array, ?offset:UnsignedLong):Void{})
	public function set(array:ArrayBuffer, ?offset:UnsignedLong):Void;

	
}



extern class Int32Array implements ArrayBufferView, implements ArrayAccess<Int> {
    
	public static var BYTES_PER_ELEMENT:UnsignedLong;
	public var buffer(default,null):ArrayBuffer;
	public var byteOffset(default,null):UnsignedLong;
	public var byteLength(default,null):UnsignedLong;

	@:overload(function(length:UnsignedLong):Void{})
	@:overload(function(array:Int32Array):Void{})
	@:overload(function(array:ArrayAccess<Int>):Void{})
	public function new(buffer:ArrayBuffer, ?byteOffset:UnsignedLong, ?length:UnsignedLong):Void;
	
	public function get(index:UnsignedLong):Int;
	public function subarray(begin:Long, end:Long):Int32Array;
	
	@:overload(function (index:UnsignedLong, value:ArrayAccess<Int>):Void{})
	@:overload(function (array:Int32Array, ?offset:UnsignedLong):Void{})
	public function set(array:ArrayBuffer, ?offset:UnsignedLong):Void;
	
	
}


extern class Uint32Array implements ArrayBufferView, implements ArrayAccess<Int> {
    
	public static var BYTES_PER_ELEMENT:UnsignedLong;
	public var buffer(default,null):ArrayBuffer;
	public var byteOffset(default,null):UnsignedLong;
	public var byteLength(default,null):UnsignedLong;

	@:overload(function(length:UnsignedLong):Void{})
	@:overload(function(array:Uint32Array):Void{})
	@:overload(function(array:ArrayAccess<Int>):Void{})
	public function new(buffer:ArrayBuffer, ?byteOffset:UnsignedLong, ?length:UnsignedLong):Void;
	
	public function get(index:UnsignedLong):Int;
	public function subarray(begin:Long, end:Long):Uint32Array;
	
	@:overload(function (index:UnsignedLong, value:ArrayAccess<Int>):Void{})
	@:overload(function (array:Uint32Array, ?offset:UnsignedLong):Void{})
	public function set(array:ArrayBuffer, ?offset:UnsignedLong):Void;
	
	
}


extern class Float32Array implements ArrayBufferView, implements ArrayAccess<Float> {
    
	public static var BYTES_PER_ELEMENT:UnsignedLong;
	public var buffer(default,null):ArrayBuffer;
	public var byteOffset(default,null):UnsignedLong;
	public var byteLength(default,null):UnsignedLong;

	@:overload(function(length:UnsignedLong):Void{})
	@:overload(function(array:Float32Array):Void{})
	@:overload(function(array:ArrayAccess<Float>):Void{})
	public function new(buffer:ArrayBuffer, ?byteOffset:UnsignedLong, ?length:UnsignedLong):Void;
	
	public function get(index:UnsignedLong):Int;
	public function subarray(begin:Long, end:Long):Float32Array;
	
	@:overload(function (index:UnsignedLong, value:ArrayAccess<Float>):Void{})
	@:overload(function (array:Float32Array, ?offset:UnsignedLong):Void{})
	public function set(array:ArrayBuffer, ?offset:UnsignedLong):Void;
	
	
}


extern class Float64Array implements ArrayBufferView, implements ArrayAccess<Float> {
    
	public static var BYTES_PER_ELEMENT:UnsignedLong;
	public var buffer(default,null):ArrayBuffer;
	public var byteOffset(default,null):UnsignedLong;
	public var byteLength(default,null):UnsignedLong;

	@:overload(function(length:UnsignedLong):Void{})
	@:overload(function(array:Float64Array):Void{})
	@:overload(function(array:ArrayAccess<Float>):Void{})
	public function new(buffer:ArrayBuffer, ?byteOffset:UnsignedLong, ?length:UnsignedLong):Void;
	
	public function get(index:UnsignedLong):Int;
	public function subarray(begin:Long, end:Long):Float64Array;
	
	@:overload(function (index:UnsignedLong, value:ArrayAccess<Float>):Void{})
	@:overload(function (array:Float64Array, ?offset:UnsignedLong):Void{})
	public function set(array:ArrayBuffer, ?offset:UnsignedLong):Void;

	
}



extern class DataView implements ArrayBufferView {
  	
	public var buffer (default,never) : ArrayBuffer;
	public var byteOffset (default,never) : UnsignedLong;
	public var byteLength (default,never) : UnsignedLong;
	public function new(buffer:ArrayBuffer, ?byteOffset:UnsignedLong, ?byteLength:UnsignedLong) : Void;
  	
	public function getInt8(byteOffset:UnsignedLong) : Byte;
	public function getUInt8(byteOffset:UnsignedLong) : UnsignedByte;
	public function getInt16(byteOffset:UnsignedLong, ?littleEndian:Bool) : Short;
	public function getUInt16(byteOffset:UnsignedLong, ?littleEndian:Bool) : UnsignedShort;
	public function getInt32(byteOffset:UnsignedLong, ?littleEndian:Bool) : Long;
	public function getUInt32(byteOffset:UnsignedLong, ?littleEndian:Bool) : UnsignedLong;
	public function getFloat32(byteOffset:UnsignedLong, ?littleEndian:Bool) : Float;
	public function getFloat64(byteOffset:UnsignedLong, ?littleEndian:Bool) : Double;
	
	public function setInt8(byteOffset:UnsignedLong, value:Byte, ?littleEndian:Bool) : Void;
	public function setUint8(byteOffset:UnsignedLong, value:UnsignedByte, ?littleEndian:Bool) : Void;
	public function setInt16(byteOffset:UnsignedLong, Short:Byte, ?littleEndian:Bool) : Void;
	public function setUint16(byteOffset:UnsignedLong, value:UnsignedShort, ?littleEndian:Bool) : Void;
	public function setInt32(byteOffset:UnsignedLong, value:Long, ?littleEndian:Bool) : Void;
	public function setUint32(byteOffset:UnsignedLong, value:UnsignedLong, ?littleEndian:Bool) : Void;
	public function setFloat32(byteOffset:UnsignedLong, value:Float, ?littleEndian:Bool) : Void;
	public function setFloat64(byteOffset:UnsignedLong, value:Double, ?littleEndian:Bool) : Void;

}