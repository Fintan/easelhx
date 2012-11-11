
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


extern class ECMAScriptContext {
  public static var decodeURI : String -> String = untyped __js__('decodeURI');
  public static var decodeURIComponent : String -> String = untyped __js__('decodeURIComponent');
  public static var encodeURI : String -> String = untyped __js__('encodeURI');
  public static var encodeURIComponent : String -> String = untyped __js__('encodeURIComponent');
  public static var eval : String -> Dynamic = untyped __js__('eval');
  public static var isFinite : Dynamic -> Bool = untyped __js__('isFinite');
  public static var isNaN : Dynamic -> Bool = untyped __js__('isNaN');
  public static var parseFloat : String -> Float = untyped __js__('parseFloat');
  public static var parseInt : String -> Int -> Int = untyped __js__('parseInt'); // note radix is forced to prevent mistakes ;)
}