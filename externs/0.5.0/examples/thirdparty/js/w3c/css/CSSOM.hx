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

package js.w3c.css;

import js.w3c.DOMTypes;
import js.w3c.level3.Core;


extern class MediaList extends Object {
	public var mediaText : DOMString;
	public var length (default,never) : UnsignedLong;
	public function item(index:UnsignedLong) : DOMString;
	public function appendMedium(medium:DOMString) : Void;
	public function deleteMedium(medium:DOMString) : Void;
}

extern class StyleSheet {
	public var type (default,never) : DOMString;
	public var href (default,never) : DOMString;
	public var ownerNode (default,never) : Node;
	public var parentStyleSheet (default,never) : StyleSheet;
	public var title (default,never) : DOMString;
	public var length (default,never) : UnsignedLong;
	public var disabled : Bool;
}

extern class CSSStyleSheet extends StyleSheet {
	public var ownerRule (default,never) : CSSRule;
	public var cssRules (default,never) : CSSRuleList;
	public function insertRule(rule:DOMString, index:UnsignedLong) : UnsignedLong;
	public function deleteRule(index:UnsignedLong) : Void;
}

extern interface DocumentStyle {
	public var styleSheets (default,never) : StyleSheetList;
	public var selectedStyleSheetSet : DOMString;
	public var lastStyleSheetSet (default,never) : DOMString;
	public var preferredStyleSheetSet (default,never) : DOMString;
	public var styleSheetSets (default,never) : DOMStringList;
	public function enableStyleSheetsForSet(name:DOMString) : Void;
}

extern interface LinkStyle {
	public var sheet (default,never) : StyleSheet;
}

extern class CSSRule {
	// Types
	public static var STYLE_RULE : UnsignedShort = 1;
	public static var IMPORT_RULE : UnsignedShort = 3;
	public static var MEDIA_RULE : UnsignedShort = 4;
	public static var FONT_FACE_RULE : UnsignedShort = 5;
	public static var PAGE_RULE : UnsignedShort = 6;
	public static var NAMESPACE_RULE : UnsignedShort = 10;
	public var type (default,never) : UnsignedShort;
	// Parsing and serialization
	public var cssText : DOMString;
	// Context
	public var parentRule (default,never) : CSSRule;
	public var parentStyleSheet (default,never) : CSSStyleSheet;
}

extern class CSSStyleRule extends CSSRule {
	public var selectorText : DOMString;
	public var style (default,never) : CSSStyleDeclaration;
}

extern class CSSImportRule extends CSSRule {
	public var href (default,never) : DOMString;
	public var media (default,never) : MediaList;
	public var styleSheet (default,never) : CSSStyleSheet;
}

extern class CSSMediaRule extends CSSRule {
	public var media (default,never) : MediaList;
	public var cssRules (default,never) : CSSRuleList;
	public function insertRule(rule:DOMString, index:UnsignedLong) : UnsignedLong;
	public function deleteRule(index:UnsignedLong) : Void;
}

extern class CSSFontFaceRule extends CSSRule {
	public var style (default,never) : CSSStyleDeclaration;
}

extern class CSSPageRule extends CSSRule {
	public var selectorText : DOMString;
	public var style (default,never) : CSSStyleDeclaration;
}

extern class CSSNamespaceRule extends CSSRule {
	public var namespaceURI (default,never) : DOMString;
	public var prefix (default,never) : DOMString;
}

extern interface CSSStyleDeclaration {
	public var cssText : DOMString;

	public var length (default,never) : UnsignedLong;
	public function item(index:UnsignedLong) : DOMString;

	public function getPropertyValue(property:DOMString) : DOMString;
	public function getPropertyPriority(property:DOMString) : DOMString;
	public function setProperty(property:DOMString, value:DOMString, ?priority:DOMString) : Void;
	public function removeProperty(property:DOMString) : DOMString;

	public var values (default,never) : CSSStyleDeclarationValue;

	public var parentRule (default,never) : CSSRule;

	// CSS Properties
	public var azimuth : DOMString;
	public var background : DOMString;
	public var backgroundAttachment : DOMString;
	public var backgroundColor : DOMString;
	public var backgroundImage : DOMString;
	public var backgroundPosition : DOMString;
	public var backgroundRepeat : DOMString;
	public var border : DOMString;
	public var borderCollapse : DOMString;
	public var borderColor : DOMString;
	public var borderSpacing : DOMString;
	public var borderStyle : DOMString;
	public var borderTop : DOMString;
	public var borderRight : DOMString;
	public var borderBottom : DOMString;
	public var borderLeft : DOMString;
	public var borderTopColor : DOMString;
	public var borderRightColor : DOMString;
	public var borderBottomColor : DOMString;
	public var borderLeftColor : DOMString;
	public var borderTopStyle : DOMString;
	public var borderRightStyle : DOMString;
	public var borderBottomStyle : DOMString;
	public var borderLeftStyle : DOMString;
	public var borderTopWidth : DOMString;
	public var borderRightWidth : DOMString;
	public var borderBottomWidth : DOMString;
	public var borderLeftWidth : DOMString;
	public var borderWidth : DOMString;
	public var bottom : DOMString;
	public var captionSide : DOMString;
	public var clear : DOMString;
	public var clip : DOMString;
	public var color : DOMString;
	public var content : DOMString;
	public var counterIncrement : DOMString;
	public var counterReset : DOMString;
	public var cue : DOMString;
	public var cueAfter : DOMString;
	public var cueBefore : DOMString;
	public var cursor : DOMString;
	public var direction : DOMString;
	public var display : DOMString;
	public var elevation : DOMString;
	public var emptyCells : DOMString;
	public var cssFloat : DOMString;
	public var font : DOMString;
	public var fontFamily : DOMString;
	public var fontSize : DOMString;
	public var fontSizeAdjust : DOMString;
	public var fontStretch : DOMString;
	public var fontStyle : DOMString;
	public var fontVariant : DOMString;
	public var fontWeight : DOMString;
	public var height : DOMString;
	public var left : DOMString;
	public var letterSpacing : DOMString;
	public var lineHeight : DOMString;
	public var listStyle : DOMString;
	public var listStyleImage : DOMString;
	public var listStylePosition : DOMString;
	public var listStyleType : DOMString;
	public var margin : DOMString;
	public var marginTop : DOMString;
	public var marginRight : DOMString;
	public var marginBottom : DOMString;
	public var marginLeft : DOMString;
	public var markerOffset : DOMString;
	public var marks : DOMString;
	public var maxHeight : DOMString;
	public var maxWidth : DOMString;
	public var minHeight : DOMString;
	public var minWidth : DOMString;
	public var orphans : DOMString;
	public var outline : DOMString;
	public var outlineColor : DOMString;
	public var outlineStyle : DOMString;
	public var outlineWidth : DOMString;
	public var overflow : DOMString;
	public var padding : DOMString;
	public var paddingTop : DOMString;
	public var paddingRight : DOMString;
	public var paddingBottom : DOMString;
	public var paddingLeft : DOMString;
	public var page : DOMString;
	public var pageBreakAfter : DOMString;
	public var pageBreakBefore : DOMString;
	public var pageBreakInside : DOMString;
	public var pause : DOMString;
	public var pauseAfter : DOMString;
	public var pauseBefore : DOMString;
	public var pitch : DOMString;
	public var pitchRange : DOMString;
	public var playDuring : DOMString;
	public var position : DOMString;
	public var quotes : DOMString;
	public var richness : DOMString;
	public var right : DOMString;
	public var size : DOMString;
	public var speak : DOMString;
	public var speakHeader : DOMString;
	public var speakNumeral : DOMString;
	public var speakPunctuation : DOMString;
	public var speechRate : DOMString;
	public var stress : DOMString;
	public var tableLayout : DOMString;
	public var textAlign : DOMString;
	public var textDecoration : DOMString;
	public var textIndent : DOMString;
	public var textShadow : DOMString;
	public var textTransform : DOMString;
	public var top : DOMString;
	public var unicodeBidi : DOMString;
	public var verticalAlign : DOMString;
	public var visibility : DOMString;
	public var voiceFamily : DOMString;
	public var volume : DOMString;
	public var whiteSpace : DOMString;
	public var widows : DOMString;
	public var width : DOMString;
	public var wordSpacing : DOMString;
	public var zIndex : DOMString;
}


extern interface ElementCSSInlineStyle {
	public var style (default,never) : CSSStyleDeclaration;
}


extern interface WindowStyle {
	public function getComputedStyle(elt:Element, ?pseudoElt:DOMString) : CSSStyleDeclaration;
}


typedef CSSRuleList = Array<CSSRule>;
typedef StyleSheetList = Array<StyleSheet>;


extern interface CSSStyleDeclarationValue {
}