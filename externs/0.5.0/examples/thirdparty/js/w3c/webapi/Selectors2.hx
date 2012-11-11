
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
// externs for http://dev.w3.org/2006/webapi/selectors-api2/ (v. 19 January 2010)

import js.w3c.DOMTypes;
import js.w3c.level3.Core;


extern interface NodeSelector {
	public function querySelector(selectors:DOMString, ?refNodes:Dynamic) : Element;
	public function querySelectorAll(selectors:DOMString, ?refNodes:Dynamic) : NodeList;
	public function queryScopedSelector(selectors:DOMString) : Element;
	public function queryScopedSelectorAll(selectors:DOMString) : NodeList;
}

// Document implements NodeSelector;
// DocumentFragment implements NodeSelector;
// Element implements NodeSelector;


extern interface ElementSelector {
	public function matchesSelector(selectors:DOMString, ?refNodes:Dynamic) : Bool;
}