
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


// js.w3c.DOMTypes
	typedef DOMString = js.w3c.DOMTypes.DOMString;
	typedef DOMTimeStamp = js.w3c.DOMTypes.DOMTimeStamp;
	typedef DOMUserData = js.w3c.DOMTypes.DOMUserData;
	typedef DOMObject = js.w3c.DOMTypes.DOMObject;
	typedef Double = js.w3c.DOMTypes.Double;
	typedef Long = js.w3c.DOMTypes.Long;
	typedef Short = js.w3c.DOMTypes.Short;
	typedef UnsignedLong = js.w3c.DOMTypes.UnsignedLong;
	typedef UnsignedShort = js.w3c.DOMTypes.UnsignedShort;
	typedef ByteArray =js.w3c.DOMTypes.ByteArray;
	typedef Byte =js.w3c.DOMTypes.Byte;
	typedef UnsignedByte =js.w3c.DOMTypes.UnsignedByte;



// js.w3c.css.CSSOM
	typedef MediaList = js.w3c.css.CSSOM.MediaList;
	typedef StyleSheet = js.w3c.css.CSSOM.StyleSheet;
	typedef CSSStyleSheet = js.w3c.css.CSSOM.CSSStyleSheet;
	typedef DocumentStyle = js.w3c.css.CSSOM.DocumentStyle;
	typedef LinkStyle = js.w3c.css.CSSOM.LinkStyle;
	typedef CSSRule = js.w3c.css.CSSOM.CSSRule;
	typedef CSSStyleRule = js.w3c.css.CSSOM.CSSStyleRule;
	typedef CSSImportRule = js.w3c.css.CSSOM.CSSImportRule;
	typedef CSSMediaRule = js.w3c.css.CSSOM.CSSMediaRule;
	typedef CSSFontFaceRule = js.w3c.css.CSSOM.CSSFontFaceRule;
	typedef CSSPageRule = js.w3c.css.CSSOM.CSSPageRule;
	typedef CSSNamespaceRule = js.w3c.css.CSSOM.CSSNamespaceRule;
	typedef CSSStyleDeclaration = js.w3c.css.CSSOM.CSSStyleDeclaration;
	typedef ElementCSSInlineStyle = js.w3c.css.CSSOM.ElementCSSInlineStyle;
	typedef WindowStyle = js.w3c.css.CSSOM.WindowStyle;
	typedef CSSRuleList = js.w3c.css.CSSOM.CSSRuleList;
	typedef StyleSheetList = js.w3c.css.CSSOM.StyleSheetList;
	typedef CSSStyleDeclarationValue = js.w3c.css.CSSOM.CSSStyleDeclarationValue;



// js.w3c.level2.Range
	typedef Range = js.w3c.level2.Range.Range;
	typedef RangeException = js.w3c.level2.Range.RangeException;
	typedef DocumentRange = js.w3c.level2.Range.DocumentRange;



// js.w3c.level2.Traversal
	typedef DocumentTraversal = js.w3c.level2.Traversal.DocumentTraversal;
	typedef NodeFilter = js.w3c.level2.Traversal.NodeFilter;
	typedef NodeIterator = js.w3c.level2.Traversal.NodeIterator;
	typedef TreeWalker = js.w3c.level2.Traversal.TreeWalker;



// js.w3c.level3.Core
	typedef DOMException = js.w3c.level3.Core.DOMException;
	typedef DOMStringList = js.w3c.level3.Core.DOMStringList;
	typedef NameList = js.w3c.level3.Core.NameList;
	typedef DOMImplementationList = js.w3c.level3.Core.DOMImplementationList;
	typedef DOMImplementationSource = js.w3c.level3.Core.DOMImplementationSource;
	typedef DOMImplementation = js.w3c.level3.Core.DOMImplementation;
	typedef Node = js.w3c.level3.Core.Node;
	extern class NodeList extends js.w3c.level3.Core.NodeList {}
	typedef NamedNodeMap<T> = js.w3c.level3.Core.NamedNodeMap<T>;
	typedef CharacterData = js.w3c.level3.Core.CharacterData;
	typedef Attr = js.w3c.level3.Core.Attr;
	typedef Element = js.w3c.level3.Core.Element;
	typedef Text = js.w3c.level3.Core.Text;
	typedef Comment = js.w3c.level3.Core.Comment;
	typedef TypeInfo = js.w3c.level3.Core.TypeInfo;
	typedef UserDataHandler = js.w3c.level3.Core.UserDataHandler;
	typedef DOMError = js.w3c.level3.Core.DOMError;
	typedef DOMErrorHandler = js.w3c.level3.Core.DOMErrorHandler;
	typedef DOMLocator = js.w3c.level3.Core.DOMLocator;
	typedef DOMConfiguration = js.w3c.level3.Core.DOMConfiguration;
	typedef CDATASection = js.w3c.level3.Core.CDATASection;
	typedef DocumentType = js.w3c.level3.Core.DocumentType;
	typedef Notation = js.w3c.level3.Core.Notation;
	typedef Entity = js.w3c.level3.Core.Entity;
	typedef EntityReference = js.w3c.level3.Core.EntityReference;
	typedef ProcessingInstruction = js.w3c.level3.Core.ProcessingInstruction;
	typedef DocumentFragment = js.w3c.level3.Core.DocumentFragment;



// js.w3c.level3.Events
	typedef EventException = js.w3c.level3.Events.EventException;
	typedef Event = js.w3c.level3.Events.Event;
	typedef CustomEvent = js.w3c.level3.Events.CustomEvent;
	typedef EventTarget = js.w3c.level3.Events.EventTarget;
	typedef EventListener<T:Event> = T->Void;
	typedef DocumentEvent = js.w3c.level3.Events.DocumentEvent;
	typedef UIEvent = js.w3c.level3.Events.UIEvent;
	typedef TextEvent = js.w3c.level3.Events.TextEvent;
	typedef KeyboardEvent = js.w3c.level3.Events.KeyboardEvent;
	typedef MouseEvent = js.w3c.level3.Events.MouseEvent;
	typedef WheelEvent = js.w3c.level3.Events.WheelEvent;
	typedef MouseWheelEvent = js.w3c.level3.Events.MouseWheelEvent;
	typedef MutationEvent = js.w3c.level3.Events.MutationEvent;
	typedef MutationNameEvent = js.w3c.level3.Events.MutationNameEvent;
	typedef CompositionEvent = js.w3c.level3.Events.CompositionEvent;



//js.w3c.2dcontext.Canvas2DContext
	typedef CanvasRenderingContext2D = js.w3c.html5.Canvas2DContext.CanvasRenderingContext2D;
	typedef CanvasGradient = js.w3c.html5.Canvas2DContext.CanvasGradient;
	typedef CanvasPattern = js.w3c.html5.Canvas2DContext.CanvasPattern;
	typedef TextMetrics = js.w3c.html5.Canvas2DContext.TextMetrics;
	typedef ImageData = js.w3c.html5.Canvas2DContext.ImageData;
	typedef CanvasPixelArray = js.w3c.html5.Canvas2DContext.CanvasPixelArray;



// js.w3c.html5.Messaging
	typedef MessageEvent = js.w3c.html5.Messaging.MessageEvent;
	typedef MessagePort = js.w3c.html5.Messaging.MessagePort;
	typedef MessagePortArray = js.w3c.html5.Messaging.MessagePortArray;
	extern class MessageChannel extends js.w3c.html5.Messaging.MessageChannel {} // extension so you can use native constructor



// js.w3c.html5.Core
	typedef HTMLCollection = js.w3c.html5.Core.HTMLCollection;
	typedef HTMLAllCollection = js.w3c.html5.Core.HTMLAllCollection;
	typedef HTMLFormControlsCollection = js.w3c.html5.Core.HTMLFormControlsCollection;
	typedef RadioNodeList = js.w3c.html5.Core.RadioNodeList;
	typedef HTMLOptionsCollection = js.w3c.html5.Core.HTMLOptionsCollection;
	typedef DOMTokenList = js.w3c.html5.Core.DOMTokenList;
	typedef DOMSettableTokenList = js.w3c.html5.Core.DOMSettableTokenList;
	typedef DOMStringMap = js.w3c.html5.Core.DOMStringMap;
	typedef HTMLDocument = js.w3c.html5.Core.HTMLDocument;
	typedef DOMHTMLImplementation = js.w3c.html5.Core.DOMHTMLImplementation;
	typedef XMLDocumentLoader = js.w3c.html5.Core.XMLDocumentLoader;
	typedef HTMLElement = js.w3c.html5.Core.HTMLElement;
	typedef HTMLUnknownElement = js.w3c.html5.Core.HTMLUnknownElement;
	typedef HTMLHtmlElement = js.w3c.html5.Core.HTMLHtmlElement;
	typedef HTMLHeadElement = js.w3c.html5.Core.HTMLHeadElement;
	typedef HTMLTitleElement = js.w3c.html5.Core.HTMLTitleElement;
	typedef HTMLBaseElement = js.w3c.html5.Core.HTMLBaseElement;
	typedef HTMLLinkElement = js.w3c.html5.Core.HTMLLinkElement;
	typedef HTMLMetaElement = js.w3c.html5.Core.HTMLMetaElement;
	typedef HTMLStyleElement = js.w3c.html5.Core.HTMLStyleElement;
	typedef HTMLScriptElement = js.w3c.html5.Core.HTMLScriptElement;
	typedef HTMLBodyElement = js.w3c.html5.Core.HTMLBodyElement;
	typedef HTMLHeadingElement = js.w3c.html5.Core.HTMLHeadingElement;
	typedef HTMLParagraphElement = js.w3c.html5.Core.HTMLParagraphElement;
	typedef HTMLHRElement = js.w3c.html5.Core.HTMLHRElement;
	typedef HTMLPreElement = js.w3c.html5.Core.HTMLPreElement;
	typedef HTMLQuoteElement = js.w3c.html5.Core.HTMLQuoteElement;
	typedef HTMLOListElement = js.w3c.html5.Core.HTMLOListElement;
	typedef HTMLUListElement = js.w3c.html5.Core.HTMLUListElement;
	typedef HTMLLIElement = js.w3c.html5.Core.HTMLLIElement;
	typedef HTMLDListElement = js.w3c.html5.Core.HTMLDListElement;
	typedef HTMLDivElement = js.w3c.html5.Core.HTMLDivElement;
	typedef HTMLAnchorElement = js.w3c.html5.Core.HTMLAnchorElement;
	typedef HTMLTimeElement = js.w3c.html5.Core.HTMLTimeElement;
	typedef HTMLSpanElement = js.w3c.html5.Core.HTMLSpanElement;
	typedef HTMLBRElement = js.w3c.html5.Core.HTMLBRElement;
	typedef HTMLModElement = js.w3c.html5.Core.HTMLModElement;
	typedef HTMLImageElement = js.w3c.html5.Core.HTMLImageElement;
	extern class Image extends js.w3c.html5.Core.Image {} // extension so you can use native constructor
	typedef HTMLIFrameElement = js.w3c.html5.Core.HTMLIFrameElement;
	typedef HTMLEmbedElement = js.w3c.html5.Core.HTMLEmbedElement;
	typedef HTMLObjectElement = js.w3c.html5.Core.HTMLObjectElement;
	typedef HTMLParamElement = js.w3c.html5.Core.HTMLParamElement;
	typedef HTMLVideoElement = js.w3c.html5.Core.HTMLVideoElement;
	typedef HTMLAudioElement = js.w3c.html5.Core.HTMLAudioElement;
	extern class Audio extends js.w3c.html5.Core.Audio {} // extension so you can use native constructor
	typedef HTMLSourceElement = js.w3c.html5.Core.HTMLSourceElement;
	typedef HTMLMediaElement = js.w3c.html5.Core.HTMLMediaElement;
	typedef MediaError = js.w3c.html5.Core.MediaError;
	typedef TimeRanges = js.w3c.html5.Core.TimeRanges;
	typedef HTMLCanvasElement = js.w3c.html5.Core.HTMLCanvasElement;
	typedef HTMLMapElement = js.w3c.html5.Core.HTMLMapElement;
	typedef HTMLAreaElement = js.w3c.html5.Core.HTMLAreaElement;
	typedef HTMLBaseFontElement = js.w3c.html5.Core.HTMLBaseFontElement;
	typedef HTMLTableElement = js.w3c.html5.Core.HTMLTableElement;
	typedef HTMLTableCaptionElement = js.w3c.html5.Core.HTMLTableCaptionElement;
	typedef HTMLTableColElement = js.w3c.html5.Core.HTMLTableColElement;
	typedef HTMLTableSectionElement = js.w3c.html5.Core.HTMLTableSectionElement;
	typedef HTMLTableRowElement = js.w3c.html5.Core.HTMLTableRowElement;
	typedef HTMLTableDataCellElement = js.w3c.html5.Core.HTMLTableDataCellElement;
	typedef HTMLTableHeaderCellElement = js.w3c.html5.Core.HTMLTableHeaderCellElement;
	typedef HTMLTableCellElement = js.w3c.html5.Core.HTMLTableCellElement;
	typedef HTMLFormElement = js.w3c.html5.Core.HTMLFormElement;
	typedef HTMLFieldSetElement = js.w3c.html5.Core.HTMLFieldSetElement;
	typedef HTMLLegendElement = js.w3c.html5.Core.HTMLLegendElement;
	typedef HTMLLabelElement = js.w3c.html5.Core.HTMLLabelElement;
	typedef HTMLInputElement = js.w3c.html5.Core.HTMLInputElement;
	typedef HTMLButtonElement = js.w3c.html5.Core.HTMLButtonElement;
	typedef HTMLSelectElement = js.w3c.html5.Core.HTMLSelectElement;
	typedef HTMLDataListElement = js.w3c.html5.Core.HTMLDataListElement;
	typedef HTMLOptGroupElement = js.w3c.html5.Core.HTMLOptGroupElement;
	typedef HTMLOptionElement = js.w3c.html5.Core.HTMLOptionElement;
	extern class Option extends js.w3c.html5.Core.Option {} // extension so you can use native constructor
	typedef HTMLTextAreaElement = js.w3c.html5.Core.HTMLTextAreaElement;
	typedef HTMLKeygenElement = js.w3c.html5.Core.HTMLKeygenElement;
	typedef HTMLOutputElement = js.w3c.html5.Core.HTMLOutputElement;
	typedef HTMLProgressElement = js.w3c.html5.Core.HTMLProgressElement;
	typedef HTMLMeterElement = js.w3c.html5.Core.HTMLMeterElement;
	typedef ValidityState = js.w3c.html5.Core.ValidityState;
	typedef HTMLDetailsElement = js.w3c.html5.Core.HTMLDetailsElement;
	typedef HTMLCommandElement = js.w3c.html5.Core.HTMLCommandElement;
	typedef HTMLMenuElement = js.w3c.html5.Core.HTMLMenuElement;



// Additional Events
	typedef PopStateEvent = js.w3c.html5.Core.PopStateEvent;
	typedef HashChangeEvent = js.w3c.html5.Core.HashChangeEvent;
	typedef PageTransitionEvent = js.w3c.html5.Core.PageTransitionEvent;
	typedef BeforeUnloadEvent = js.w3c.html5.Core.BeforeUnloadEvent;
	typedef DragEvent = js.w3c.html5.Core.DragEvent;
	typedef DataTransfer = js.w3c.html5.Core.DataTransfer;



// User Agent Related Features
	typedef WindowProxy = js.w3c.html5.Core.WindowProxy;
	extern class Window extends js.w3c.html5.Core.Window {}
	typedef BarProp = js.w3c.html5.Core.BarProp;
	typedef History = js.w3c.html5.Core.History;
	typedef Location = js.w3c.html5.Core.Location;
	typedef ApplicationCache = js.w3c.html5.Core.ApplicationCache;
	typedef WindowTimers = js.w3c.html5.Core.WindowTimers;
	typedef Navigator = js.w3c.html5.Core.Navigator;
	typedef NavigatorID = js.w3c.html5.Core.NavigatorID;
	typedef NavigatorOnLine = js.w3c.html5.Core.NavigatorOnLine;
	typedef NavigatorAbilities = js.w3c.html5.Core.NavigatorAbilities;
	typedef Selection = js.w3c.html5.Core.Selection;
	typedef UndoManager = js.w3c.html5.Core.UndoManager;
	typedef UndoManagerEvent = js.w3c.html5.Core.UndoManagerEvent;



// js.w3c.webapi.EventSource
	extern class EventSource extends js.w3c.webapi.EventSource.EventSource {
		public static var CONNECTING : UnsignedShort = 0;
		public static var OPEN : UnsignedShort = 1;
		public static var CLOSED : UnsignedShort = 2;
	}



// js.w3c.webapi.File
	typedef FileList = js.w3c.webapi.File.FileList;
	typedef File = js.w3c.webapi.File.File;
	typedef Blob = js.w3c.webapi.File.Blob;
	extern class BlobReader extends js.w3c.webapi.File.BlobReader {
		public static var EMPTY : UnsignedShort = 0;
		public static var LOADING : UnsignedShort = 1;
		public static var DONE : UnsignedShort = 2;
	}
	extern class BlobReaderSync extends js.w3c.webapi.File.BlobReaderSync {}
	typedef FileError = js.w3c.webapi.File.FileError;
	typedef FileException = js.w3c.webapi.File.FileException; 



// js.w3c.webapi.FileWriter
	extern class BlobBuilder extends js.w3c.webapi.FileWriter.BlobBuilder {}
	extern class FileSaver extends js.w3c.webapi.FileWriter.FileSaver {
		public static var INIT : UnsignedShort = 0;
		public static var WRITING : UnsignedShort = 1;
		public static var DONE : UnsignedShort = 2;
	}
	typedef FileSaverSync = js.w3c.webapi.FileWriter.FileSaverSync;
	extern class FileWriter extends js.w3c.webapi.FileWriter.FileWriter {}
	extern class FileWriterSync extends js.w3c.webapi.FileWriter.FileWriterSync {}



// js.w3c.webapi.Progress
	typedef ProgressEvent = js.w3c.webapi.Progress.ProgressEvent;


// js.w3c.webapi.WebSockets
	extern class WebSocket extends js.w3c.webapi.WebSockets.WebSocket {
		public static var CONNECTING : UnsignedShort = 0;
		public static var OPEN : UnsignedShort = 1;
		public static var CLOSING : UnsignedShort = 2;
		public static var CLOSED : UnsignedShort = 3;
	}
	typedef CloseEvent = js.w3c.webapi.WebSockets.CloseEvent;



// js.w3c.webapi.WebStorage
	extern class Storage extends js.w3c.webapi.WebStorage.Storage {}
	typedef StorageEvent = js.w3c.webapi.WebStorage.StorageEvent;



// js.w3c.webapi.WebWorkers
	typedef ErrorEvent = js.w3c.webapi.WebWorkers.ErrorEvent;
	typedef AbstractWorker = js.w3c.webapi.WebWorkers.AbstractWorker;
	extern class Worker extends js.w3c.webapi.WebWorkers.SharedWorker {}
	extern class SharedWorker extends js.w3c.webapi.WebWorkers.SharedWorker {}
	typedef WorkerLocation = js.w3c.webapi.WebWorkers.WorkerLocation;



// js.w3c.webapi.XMLHttpRequest2
	typedef XMLHttpRequestEventTarget = js.w3c.webapi.XMLHttpRequest2.XMLHttpRequestEventTarget;
	typedef XMLHttpRequestUpload = js.w3c.webapi.XMLHttpRequest2.XMLHttpRequestUpload;
	extern class XMLHttpRequest extends js.w3c.webapi.XMLHttpRequest2.XMLHttpRequest {
		public static var UNSENT : UnsignedShort = 0;
		public static var OPENED : UnsignedShort = 1;
		public static var HEADERS_RECEIVED : UnsignedShort = 2;
		public static var LOADING : UnsignedShort = 3;
		public static var DONE : UnsignedShort = 4;
	}
	extern class AnonXMLHttpRequest extends js.w3c.webapi.XMLHttpRequest2.AnonXMLHttpRequest {}
	extern class FormData extends js.w3c.webapi.XMLHttpRequest2.FormData {}


//js.webgl.DOMTypes
	typedef GLenum = js.webgl.DOMTypes.GLenum;
	typedef GLboolean = js.webgl.DOMTypes.GLboolean;
	typedef GLbitfield = js.webgl.DOMTypes.GLbitfield;
	typedef GLbyte = js.webgl.DOMTypes.GLbyte;
	typedef GLshort = js.webgl.DOMTypes.GLshort; 
	typedef GLint = js.webgl.DOMTypes.GLint;
	typedef GLsizei = js.webgl.DOMTypes.GLsizei;
	typedef GLintptr = js.webgl.DOMTypes.GLintptr;
	typedef GLsizeiptr = js.webgl.DOMTypes.GLsizeiptr;
	typedef GLubyte = js.webgl.DOMTypes.GLubyte;
	typedef GLushort = js.webgl.DOMTypes.GLushort;
	typedef GLuint = js.webgl.DOMTypes.GLuint;
	typedef GLfloat = js.webgl.DOMTypes.GLfloat;
	typedef GLclampf = js.webgl.DOMTypes.GLclampf;


//js.webgl.WebGLContext
	typedef WebGLContextAttributes = js.webgl.WebGLContext.WebGLContextAttributes;
	typedef WebGLObject = js.webgl.WebGLContext.WebGLObject;
	typedef WebGLBuffer = js.webgl.WebGLContext.WebGLBuffer;
	typedef WebGLFramebuffer = js.webgl.WebGLContext.WebGLFramebuffer;
	typedef WebGLProgram = js.webgl.WebGLContext.WebGLProgram;
	typedef WebGLRenderbuffer = js.webgl.WebGLContext.WebGLRenderbuffer;
	typedef WebGLShader = js.webgl.WebGLContext.WebGLShader;
	typedef WebGLTexture = js.webgl.WebGLContext.WebGLTexture;
	typedef WebGLUniformLocation = js.webgl.WebGLContext.WebGLUniformLocation;
	typedef WebGLActiveInfo = js.webgl.WebGLContext.WebGLActiveInfo;


//js.webgl.WebGLContext.WebGLContextEvent
	extern class WebGLContextEvent extends js.webgl.WebGLContext.WebGLContextEvent {} 


//js.webgl.WebGLContext.WebGLRenderingContext (extension so you can use native constructor)
	extern class WebGLRenderingContext extends js.webgl.WebGLContext.WebGLRenderingContext {}
	
//js.webgl.TypedArrays
	typedef ArrayBufferView = js.webgl.TypedArray.ArrayBufferView;
	extern class ArrayBuffer extends js.webgl.TypedArray.ArrayBuffer {}
	extern class DataView extends js.webgl.TypedArray.DataView {}
	extern class Int8Array extends js.webgl.TypedArray.Int8Array {}
	extern class Uint8Array extends js.webgl.TypedArray.Uint8Array {}
	extern class Int16Array extends js.webgl.TypedArray.Int16Array {}
	extern class Uint16Array extends js.webgl.TypedArray.Uint16Array {}
	extern class Int32Array extends js.webgl.TypedArray.Int32Array {}
	extern class Uint32Array extends js.webgl.TypedArray.Uint32Array {}
	extern class Float32Array extends js.webgl.TypedArray.Float32Array {}
	extern class Float64Array extends js.webgl.TypedArray.Float64Array {}	
	

	
				


