
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


extern class Object implements Dynamic<Dynamic>, implements ArrayAccess<Dynamic> {
  
  public static var prototype : Object;
  public static var length : Int;
    
  public static function create( o:Object, ?properties:Dynamic) : Object;
  public static function defineProperty( o:Object, p:String, attributes:Dynamic ) : Object;
  public static function defineProperties( o:Object, ?properties:Dynamic) : Object;
  public static function getPrototypeOf( o:Object ) : Dynamic;
  public static function keys(o:Object) : Array<Dynamic>;
  public static function seal(o:Object) : Object;
  public static function freeze(o:Object) : Object;
  public static function preventExtensions(o:Object) : Object;
  public static function isSealed(o:Object) : Bool;
  public static function isFrozen(o:Object) : Bool;
  public static function isExtensible(o:Object) : Bool;
  public static function getOwnPropertyDescriptor( o:Dynamic , p:String ) : Dynamic;
  public static function getOwnPropertyNames(o:Dynamic) : Array<Dynamic>;
  
  public var constructor : Dynamic;
  
  public function new(?o:Dynamic) : Void;
  public function hasOwnProperty(prop:String) : Bool;
  public function isPrototypeOf(object:Object) : Bool;
  public function propertyIsEnumerable(prop:String) : Bool;
  public function toLocaleString() : String;
  public function toString( ?opt:Dynamic ) : String;
  public function valueOf() : Dynamic;
}