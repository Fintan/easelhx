
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
import js.webgl.DOMTypes;
import js.webgl.TypedArray;
import js.w3c.level3.Core;
import js.w3c.level3.Events;
import js.w3c.html5.Core;

import UserAgentContext;

//based on http://www.khronos.org/registry/webgl/specs/1.0/

extern interface WebGLContextAttributes {
    public var alpha : Bool;
    public var depth : Bool;
    public var stencil : Bool;
    public var antialias : Bool;
    public var premultipliedAlpha : Bool;
    public var preserveDrawingBuffer : Bool;
}


extern interface WebGLObject {}
extern interface WebGLBuffer implements WebGLObject {}
extern interface WebGLFramebuffer implements WebGLObject {}
extern interface WebGLProgram implements WebGLObject {}
extern interface WebGLRenderbuffer implements WebGLObject {}
extern interface WebGLShader implements WebGLObject {}
extern interface WebGLTexture implements WebGLObject {}
extern interface WebGLUniformLocation {}


extern interface WebGLActiveInfo {
    public var size  (default,never) : GLint;  /* READ ONLY */	
   	public var type  (default,never) : GLenum; /* EAD ONLY */		
   	public var name  (default,never) : DOMString; /* EAD ONLY */	
}


extern class WebGLRenderingContext {
	
	/* ClearBufferMask */
		public var DEPTH_BUFFER_BIT  (default,never) : GLenum; /* CONSTANT */		
		public var STENCIL_BUFFER_BIT  (default,never) : GLenum; /* CONSTANT */		
		public var COLOR_BUFFER_BIT  (default,never) : GLenum; /* CONSTANT */		

	/* BeginMode */
		public var POINTS  (default,never) : GLenum; /* CONSTANT */		
		public var LINES  (default,never) : GLenum; /* CONSTANT */		
		public var LINE_LOOP (default,never) : GLenum; /* CONSTANT */		
		public var LINE_STRIP  (default,never) : GLenum; /* CONSTANT */		
		public var TRIANGLES (default,never) : GLenum; /* CONSTANT */		
		public var TRIANGLE_STRIP  (default,never) : GLenum; /* CONSTANT */		
		public var TRIANGLE_FAN  (default,never) : GLenum; /* CONSTANT */		
		
	/* AlphaFunction (not supported in ES20) */
		/* NEVER */
		/* LESS */
		/* EQUAL */
		/* LEQUAL */
		/* GREATER */
		/* NOTEQUAL */
		/* GEQUAL */
		/* ALWAYS */	
		
	/* BlendingFactorDest */
		public var ZERO  (default,never) : GLenum; /* CONSTANT */		
		public var ONE  (default,never) : GLenum; /* CONSTANT */		
		public var SRC_COLOR  (default,never) : GLenum; /* CONSTANT */		
		public var ONE_MINUS_SRC_COLOR  (default,never) : GLenum; /* CONSTANT */		
		public var SRC_ALPHA  (default,never) : GLenum; /* CONSTANT */		
		public var ONE_MINUS_SRC_ALPHA  (default,never) : GLenum; /* CONSTANT */		
		public var DST_ALPHA  (default,never) : GLenum; /* CONSTANT */		
		public var ONE_MINUS_DST_ALPHA  (default,never) : GLenum; /* CONSTANT */		

	/* BlendingFactorSrc */
		/* ZERO */
		/* ONE */
		public var DST_COLOR  (default,never) : GLenum; /* CONSTANT */		
		public var ONE_MINUS_DST_COLOR  (default,never) : GLenum; /* CONSTANT */		
		public var SRC_ALPHA_SATURATE : GLenum ; /* CONSTANT */	
		/* SRC_ALPHA */
	    /* ONE_MINUS_SRC_ALPHA */
	    /* DST_ALPHA */
	    /* ONE_MINUS_DST_ALPHA */
		
	/* BlendEquationSeparate */
		public var FUNC_ADD  (default,never) : GLenum; /* CONSTANT */		
		public var BLEND_EQUATION  (default,never) : GLenum; /* CONSTANT */		
		public var BLEND_EQUATION_RGB : GLenum;   /* same as BLEND_EQUATION */ /* CONSTANT */	
		public var BLEND_EQUATION_ALPHA  (default,never) : GLenum; /* CONSTANT */		

	/* BlendSubtract */
		public var FUNC_SUBTRACT  (default,never) : GLenum; /* CONSTANT */		
		public var FUNC_REVERSE_SUBTRACT  (default,never) : GLenum; /* CONSTANT */		

	/* Separate Blend Functions */
		public var BLEND_DST_RGB  (default,never) : GLenum; /* CONSTANT */		
		public var BLEND_SRC_RGB   (default,never) : GLenum; /* CONSTANT */		
		public var BLEND_DST_ALPHA  (default,never) : GLenum; /* CONSTANT */		
		public var BLEND_SRC_ALPHA  (default,never) : GLenum; /* CONSTANT */		
		public var CONSTANT_COLOR  (default,never) : GLenum; /* CONSTANT */		
		public var ONE_MINUS_CONSTANT_COLOR  (default,never) : GLenum; /* CONSTANT */		
		public var CONSTANT_ALPHA  (default,never) : GLenum; /* CONSTANT */		
		public var ONE_MINUS_CONSTANT_ALPHA  (default,never) : GLenum; /* CONSTANT */		
		public var BLEND_COLOR  (default,never) : GLenum; /* CONSTANT */		

	/* Buffer Objects */
		public var ARRAY_BUFFER  (default,never) : GLenum; /* CONSTANT */		
		public var ELEMENT_ARRAY_BUFFER  (default,never) : GLenum; /* CONSTANT */		
		public var ARRAY_BUFFER_BINDING  (default,never) : GLenum; /* CONSTANT */		
		public var ELEMENT_ARRAY_BUFFER_BINDING  (default,never) : GLenum; /* CONSTANT */		
		public var STREAM_DRAW  (default,never) : GLenum; /* CONSTANT */		
		public var STATIC_DRAW  (default,never) : GLenum; /* CONSTANT */		
		public var DYNAMIC_DRAW  (default,never) : GLenum; /* CONSTANT */		
		public var BUFFER_SIZE  (default,never) : GLenum; /* CONSTANT */		
		public var BUFFER_USAGE  (default,never) : GLenum; /* CONSTANT */		
		public var CURRENT_VERTEX_ATTRIB  (default,never) : GLenum; /* CONSTANT */		

	/* CullFaceMode */
		public var FRONT  (default,never) : GLenum; /* CONSTANT */		
		public var BACK  (default,never) : GLenum; /* CONSTANT */		
		public var FRONT_AND_BACK  (default,never) : GLenum; /* CONSTANT */		
		
	/* DepthFunction */
		/* NEVER */
		/* LESS */
		/* EQUAL */
		/* LEQUAL */
		/* GREATER */
		/* NOTEQUAL */
		/* GEQUAL */
		/* ALWAYS */	

	/* EnableCap */
		public var CULL_FACE (default,never) : GLenum; /* CONSTANT */		
		public var BLEND  (default,never) : GLenum; /* CONSTANT */		
		public var DITHER  (default,never) : GLenum; /* CONSTANT */		
		public var STENCIL_TEST  (default,never) : GLenum; /* CONSTANT */		
		public var DEPTH_TEST  (default,never) : GLenum; /* CONSTANT */		
		public var CISSOR_TEST  (default,never) : GLenum; /* CONSTANT */		
		public var POLYGON_OFFSET_FILL  (default,never) : GLenum; /* CONSTANT */		
		public var SAMPLE_ALPHA_TO_COVERAGE  (default,never) : GLenum; /* CONSTANT */		
		public var SAMPLE_COVERAGE  (default,never) : GLenum; /* CONSTANT */		

	/* ErrorCode */
		public var NO_ERROR  (default,never) : GLenum; /* CONSTANT */		
		public var INVALID_ENUM   (default,never) : GLenum; /* CONSTANT */		
		public var INVALID_VALUE  (default,never) : GLenum; /* CONSTANT */		
		public var INVALID_OPERATION  (default,never) : GLenum; /* CONSTANT */		
		public var OUT_OF_MEMORY  (default,never) : GLenum; /* CONSTANT */		

	/* FrontFaceDirection */
		public var CW  (default,never) : GLenum; /* CONSTANT */		
		public var CCW  (default,never) : GLenum; /* CONSTANT */		

	/* GetPName */
		public var LINE_WIDTH  (default,never) : GLenum; /* CONSTANT */		
		public var ALIASED_POINT_SIZE_RANGE  (default,never) : GLenum; /* CONSTANT */		
		public var ALIASED_LINE_WIDTH_RANGE  (default,never) : GLenum; /* CONSTANT */		
		public var CULL_FACE_MODE  (default,never) : GLenum; /* CONSTANT */		
		public var FRONT_FACE  (default,never) : GLenum; /* CONSTANT */		
		public var DEPTH_RANGE  (default,never) : GLenum; /* CONSTANT */		
		public var DEPTH_WRITEMASK   (default,never) : GLenum; /* CONSTANT */		
		public var DEPTH_CLEAR_VALUE  (default,never) : GLenum; /* CONSTANT */		
		public var DEPTH_FUNC  (default,never) : GLenum; /* CONSTANT */		
		public var STENCIL_CLEAR_VALUE  (default,never) : GLenum; /* CONSTANT */		
		public var STENCIL_FUNC  (default,never) : GLenum; /* CONSTANT */		
		public var STENCIL_FAIL  (default,never) : GLenum; /* CONSTANT */		
		public var STENCIL_PASS_DEPTH_FAIL  (default,never) : GLenum; /* CONSTANT */		
		public var STENCIL_PASS_DEPTH_PASS  (default,never) : GLenum; /* CONSTANT */		
		public var STENCIL_REF  (default,never) : GLenum; /* CONSTANT */		
		public var STENCIL_VALUE_MASK   (default,never) : GLenum; /* CONSTANT */		
		public var STENCIL_WRITEMASK  (default,never) : GLenum; /* CONSTANT */		
		public var STENCIL_BACK_FUNC  (default,never) : GLenum; /* CONSTANT */		
		public var STENCIL_BACK_FAIL  (default,never) : GLenum; /* CONSTANT */		
		public var STENCIL_BACK_PASS_DEPTH_FAIL : GLenum; /* CONSTANT */	
		public var STENCIL_BACK_PASS_DEPTH_PASS : GLenum; /* CONSTANT */	
		public var STENCIL_BACK_REF  (default,never) : GLenum; /* CONSTANT */		
		public var STENCIL_BACK_VALUE_MASK  (default,never) : GLenum; /* CONSTANT */		
		public var STENCIL_BACK_WRITEMASK   (default,never) : GLenum; /* CONSTANT */		
		public var VIEWPORT  (default,never) : GLenum; /* CONSTANT */		
		public var SCISSOR_BOX  (default,never) : GLenum; /* CONSTANT */		
		 /* SCISSOR_TEST */
		public var COLOR_CLEAR_VALUE  (default,never) : GLenum; /* CONSTANT */		
		public var COLOR_WRITEMASK   (default,never) : GLenum; /* CONSTANT */		
		public var UNPACK_ALIGNMENT  (default,never) : GLenum; /* CONSTANT */		
		public var PACK_ALIGNMENT  (default,never) : GLenum; /* CONSTANT */		
		public var MAX_TEXTURE_SIZE  (default,never) : GLenum; /* CONSTANT */		
		public var MAX_VIEWPORT_DIMS  (default,never) : GLenum; /* CONSTANT */		
		public var SUBPIXEL_BITS  (default,never) : GLenum; /* CONSTANT */		
		public var RED_BITS  (default,never) : GLenum; /* CONSTANT */		
		public var GREEN_BITS  (default,never) : GLenum; /* CONSTANT */		
		public var BLUE_BITS  (default,never) : GLenum; /* CONSTANT */		
		public var ALPHA_BITS  (default,never) : GLenum; /* CONSTANT */		
		public var DEPTH_BITS  (default,never) : GLenum; /* CONSTANT */		
		public var STENCIL_BITS  (default,never) : GLenum; /* CONSTANT */		
		public var POLYGON_OFFSET_UNITS (default,never) : GLenum; /* CONSTANT */		
		/* POLYGON_OFFSET_FILL */
		public var POLYGON_OFFSET_FACTOR  (default,never) : GLenum; /* CONSTANT */		
		public var TEXTURE_BINDING_2D   (default,never) : GLenum; /* CONSTANT */		
		public var SAMPLE_BUFFERS  (default,never) : GLenum; /* CONSTANT */		
		public var SAMPLES  (default,never) : GLenum; /* CONSTANT */		
		public var SAMPLE_COVERAGE_VALUE : GLenum; /* CONSTANT */	
		public var SAMPLE_COVERAGE_INVERT  (default,never) : GLenum; /* CONSTANT */		

	/* GetTextureParameter */
		/* TEXTURE_MAG_FILTER */
		/* TEXTURE_MIN_FILTER */
		/* TEXTURE_WRAP_S */
		/* TEXTURE_WRAP_T */
		public var NUM_COMPRESSED_TEXTURE_FORMATS  (default,never) : GLenum; /* CONSTANT */		
		public var COMPRESSED_TEXTURE_FORMATS  (default,never) : GLenum; /* CONSTANT */		

	/* HintMode */
		public var DONT_CARE (default,never) : GLenum; /* CONSTANT */		
		public var FASTEST  (default,never) : GLenum; /* CONSTANT */		
		public var NICEST  (default,never) : GLenum; /* CONSTANT */		

	/* HintTarget */
		public var GENERATE_MIPMAP_HINT  (default,never) : GLenum; /* CONSTANT */		

	/* DataType */
		public var BYTE  (default,never) : GLenum; /* CONSTANT */		
		public var UNSIGNED_BYTE  (default,never) : GLenum; /* CONSTANT */		
		public var SHORT  (default,never) : GLenum; /* CONSTANT */		
		public var UNSIGNED_SHORT  (default,never) : GLenum; /* CONSTANT */		
		public var INT  (default,never) : GLenum; /* CONSTANT */		
		public var UNSIGNED_INT  (default,never) : GLenum; /* CONSTANT */		
		public var FLOAT  (default,never) : GLenum; /* CONSTANT */		

	/* PixelFormat */
		public var DEPTH_COMPONENT  (default,never) : GLenum; /* CONSTANT */		
		public var ALPHA  (default,never) : GLenum; /* CONSTANT */		
		public var RGB  (default,never) : GLenum; /* CONSTANT */		
		public var RGBA  (default,never) : GLenum; /* CONSTANT */		
		public var LUMINANCE (default,never) : GLenum; /* CONSTANT */		
		public var LUMINANCE_ALPHA  (default,never) : GLenum; /* CONSTANT */		

	/* PixelType */
		public var UNSIGNED_SHORT_4_4_4_4  (default,never) : GLenum; /* CONSTANT */		
		public var UNSIGNED_SHORT_5_5_5_1  (default,never) : GLenum; /* CONSTANT */		
		public var UNSIGNED_SHORT_5_6_5 (default,never) : GLenum; /* CONSTANT */		

	/* Shaders */
		public var FRAGMENT_SHADER  (default,never) : GLenum; /* CONSTANT */		
		public var VERTEX_SHADER  (default,never) : GLenum; /* CONSTANT */		
		public var MAX_VERTEX_ATTRIBS  (default,never) : GLenum; /* CONSTANT */		
		public var MAX_VERTEX_UNIFORM_VECTORS  (default,never) : GLenum; /* CONSTANT */		
		public var MAX_VARYING_VECTORS  (default,never) : GLenum; /* CONSTANT */		
		public var MAX_COMBINED_TEXTURE_IMAGE_UNITS (default,never) : GLenum; /* CONSTANT */		
		public var MAX_VERTEX_TEXTURE_IMAGE_UNITS (default,never) : GLenum; /* CONSTANT */		
		public var MAX_TEXTURE_IMAGE_UNITS  (default,never) : GLenum; /* CONSTANT */		
		public var MAX_FRAGMENT_UNIFORM_VECTORS  (default,never) : GLenum; /* CONSTANT */		
		public var SHADER_TYPE (default,never) : GLenum; /* CONSTANT */		
		public var DELETE_STATUS  (default,never) : GLenum; /* CONSTANT */		
		public var LINK_STATUS  (default,never) : GLenum; /* CONSTANT */		
		public var VALIDATE_STATUS  (default,never) : GLenum; /* CONSTANT */		
		public var ATTACHED_SHADERS  (default,never) : GLenum; /* CONSTANT */		
		public var ACTIVE_UNIFORMS  (default,never) : GLenum; /* CONSTANT */		
		public var ACTIVE_ATTRIBUTES  (default,never) : GLenum; /* CONSTANT */		
		public var SHADING_LANGUAGE_VERSION  (default,never) : GLenum; /* CONSTANT */		
		public var CURRENT_PROGRAM  (default,never) : GLenum; /* CONSTANT */		

	/* StencilFunction */
		public var NEVER  (default,never) : GLenum; /* CONSTANT */		
		public var LESS  (default,never) : GLenum; /* CONSTANT */		
		public var EQUAL  (default,never) : GLenum; /* CONSTANT */		
		public var LEQUAL  (default,never) : GLenum; /* CONSTANT */		
		public var GREATER  (default,never) : GLenum; /* CONSTANT */		
		public var NOTEQUAL  (default,never) : GLenum; /* CONSTANT */		
		public var GEQUAL  (default,never) : GLenum; /* CONSTANT */		
		public var ALWAYS  (default,never) : GLenum; /* CONSTANT */		

	/* StencilOp */
		public var KEEP  (default,never) : GLenum; /* CONSTANT */		
		public var REPLACE  (default,never) : GLenum; /* CONSTANT */		
		public var INCR  (default,never) : GLenum; /* CONSTANT */		
		public var DECR  (default,never) : GLenum; /* CONSTANT */		
		public var INVERT  (default,never) : GLenum; /* CONSTANT */		
		public var INCR_WRAP  (default,never) : GLenum; /* CONSTANT */		
		public var DECR_WRAP  (default,never) : GLenum; /* CONSTANT */		

	/* StringName */
		public var VENDOR  (default,never) : GLenum; /* CONSTANT */		
		public var RENDERER  (default,never) : GLenum; /* CONSTANT */		
		public var VERSION  (default,never) : GLenum; /* CONSTANT */		

	/* TextureMagFilter */
		public var NEAREST  (default,never) : GLenum; /* CONSTANT */		
		public var LINEAR  (default,never) : GLenum; /* CONSTANT */		

	/* TextureMinFilter */
		/* NEAREST */
		/* LINEAR */
		public var NEAREST_MIPMAP_NEAREST (default,never) : GLenum; /* CONSTANT */		
		public var LINEAR_MIPMAP_NEAREST  (default,never) : GLenum; /* CONSTANT */		
		public var NEAREST_MIPMAP_LINEAR  (default,never) : GLenum; /* CONSTANT */		
		public var LINEAR_MIPMAP_LINEAR (default,never) : GLenum; /* CONSTANT */		

	/* TextureParameterName */
		public var TEXTURE_MAG_FILTER  (default,never) : GLenum; /* CONSTANT */		
		public var TEXTURE_MIN_FILTER  (default,never) : GLenum; /* CONSTANT */		
		public var TEXTURE_WRAP_S  (default,never) : GLenum; /* CONSTANT */		
		public var TEXTURE_WRAP_T  (default,never) : GLenum; /* CONSTANT */		

	/* TextureTarget */
		public var TEXTURE_2D  (default,never) : GLenum; /* CONSTANT */		
		public var TEXTURE  (default,never) : GLenum; /* CONSTANT */		
		public var TEXTURE_CUBE_MAP  (default,never) : GLenum; /* CONSTANT */		
		public var TEXTURE_BINDING_CUBE_MAP  (default,never) : GLenum; /* CONSTANT */		
		public var TEXTURE_CUBE_MAP_POSITIVE_X (default,never) : GLenum; /* CONSTANT */		
		public var TEXTURE_CUBE_MAP_NEGATIVE_X (default,never) : GLenum; /* CONSTANT */		
		public var TEXTURE_CUBE_MAP_POSITIVE_Y (default,never) : GLenum; /* CONSTANT */		
		public var TEXTURE_CUBE_MAP_NEGATIVE_Y (default,never) : GLenum; /* CONSTANT */		
		public var TEXTURE_CUBE_MAP_POSITIVE_Z (default,never) : GLenum; /* CONSTANT */		
		public var TEXTURE_CUBE_MAP_NEGATIVE_Z (default,never) : GLenum; /* CONSTANT */		
		public var MAX_CUBE_MAP_TEXTURE_SIZE  (default,never) : GLenum; /* CONSTANT */		

	/* TextureUnit */
		public var TEXTURE0  (default,never) : GLenum; /* CONSTANT */		
		public var TEXTURE1  (default,never) : GLenum; /* CONSTANT */		
		public var TEXTURE2  (default,never) : GLenum; /* CONSTANT */		
		public var TEXTURE3  (default,never) : GLenum; /* CONSTANT */		
		public var TEXTURE4  (default,never) : GLenum; /* CONSTANT */		
		public var TEXTURE5  (default,never) : GLenum; /* CONSTANT */		
		public var TEXTURE6  (default,never) : GLenum; /* CONSTANT */		
		public var TEXTURE7  (default,never) : GLenum; /* CONSTANT */		
		public var TEXTURE8  (default,never) : GLenum; /* CONSTANT */		
		public var TEXTURE9  (default,never) : GLenum; /* CONSTANT */		
		public var TEXTURE10  (default,never) : GLenum; /* CONSTANT */		
		public var TEXTURE11  (default,never) : GLenum; /* CONSTANT */		
		public var TEXTURE12  (default,never) : GLenum; /* CONSTANT */		
		public var TEXTURE13  (default,never) : GLenum; /* CONSTANT */		
		public var TEXTURE14  (default,never) : GLenum; /* CONSTANT */		
		public var TEXTURE15  (default,never) : GLenum; /* CONSTANT */		
		public var TEXTURE16  (default,never) : GLenum; /* CONSTANT */		
		public var TEXTURE17 (default,never) : GLenum; /* CONSTANT */		
		public var TEXTURE18 (default,never) : GLenum; /* CONSTANT */		
		public var TEXTURE19 (default,never) : GLenum; /* CONSTANT */		
		public var TEXTURE20 (default,never) : GLenum; /* CONSTANT */		
		public var TEXTURE21 (default,never) : GLenum; /* CONSTANT */		
		public var TEXTURE22 (default,never) : GLenum; /* CONSTANT */		
		public var TEXTURE23 (default,never) : GLenum; /* CONSTANT */		
		public var TEXTURE24 (default,never) : GLenum; /* CONSTANT */		
		public var TEXTURE25 (default,never) : GLenum; /* CONSTANT */		
		public var TEXTURE26 (default,never) : GLenum; /* CONSTANT */		
		public var TEXTURE27 (default,never) : GLenum; /* CONSTANT */		
		public var TEXTURE28 (default,never) : GLenum; /* CONSTANT */		
		public var TEXTURE29 (default,never) : GLenum; /* CONSTANT */		
		public var TEXTURE30 (default,never) : GLenum; /* CONSTANT */			
		public var TEXTURE31 (default,never) : GLenum; /* CONSTANT */			
		public var ACTIVE_TEXTURE (default,never) : GLenum; /* CONSTANT */			

	/* TextureWrapMode */
		public var REPEAT (default,never) : GLenum; /* CONSTANT */			
		public var CLAMP_TO_EDGE (default,never) : GLenum; /* CONSTANT */			
		public var MIRRORED_REPEAT (default,never) : GLenum; /* CONSTANT */			

	/* Uniform Types */
		public var FLOAT_VEC2 (default,never) : GLenum; /* CONSTANT */			
		public var FLOAT_VEC3 (default,never) : GLenum; /* CONSTANT */			
		public var FLOAT_VEC4 (default,never) : GLenum; /* CONSTANT */			
		public var INT_VEC2 (default,never) : GLenum; /* CONSTANT */			
		public var INT_VEC3 (default,never) : GLenum; /* CONSTANT */			
		public var INT_VEC4 (default,never) : GLenum; /* CONSTANT */			
		public var BOOL (default,never) : GLenum; /* CONSTANT */			
		public var BOOL_VEC2 (default,never) : GLenum; /* CONSTANT */			
		public var BOOL_VEC3 (default,never) : GLenum; /* CONSTANT */			
		public var BOOL_VEC4 (default,never) : GLenum; /* CONSTANT */			
		public var FLOAT_MAT2 (default,never) : GLenum; /* CONSTANT */			
		public var FLOAT_MAT3 (default,never) : GLenum; /* CONSTANT */			
		public var FLOAT_MAT4 (default,never) : GLenum; /* CONSTANT */			
		public var SAMPLER_2D (default,never) : GLenum; /* CONSTANT */			
		public var SAMPLER_CUBE (default,never) : GLenum; /* CONSTANT */			

	/* Vertex Arrays */
		public var VERTEX_ATTRIB_ARRAY_ENABLED (default,never) : GLenum; /* CONSTANT */			
		public var VERTEX_ATTRIB_ARRAY_SIZE (default,never) : GLenum; /* CONSTANT */			
		public var VERTEX_ATTRIB_ARRAY_STRIDE (default,never) : GLenum; /* CONSTANT */			
		public var VERTEX_ATTRIB_ARRAY_TYPE (default,never) : GLenum; /* CONSTANT */			
		public var VERTEX_ATTRIB_ARRAY_NORMALIZED (default,never) : GLenum; /* CONSTANT */			
		public var VERTEX_ATTRIB_ARRAY_POINTER (default,never) : GLenum; /* CONSTANT */			
		public var VERTEX_ATTRIB_ARRAY_BUFFER_BINDING (default,never) : GLenum; /* CONSTANT */			

	/* Shader Source */
		public var COMPILE_STATUS (default,never) : GLenum; /* CONSTANT */			

	/* Shader Precision-Specified Types */
		public var LOW_FLOAT (default,never) : GLenum; /* CONSTANT */	
		public var MEDIUM_FLOAT (default,never) : GLenum; /* CONSTANT */	
		public var HIGH_FLOAT (default,never) : GLenum; /* CONSTANT */	
		public var LOW_INT (default,never) : GLenum; /* CONSTANT */	
		public var MEDIUM_INT (default,never) : GLenum; /* CONSTANT */			
		public var HIGH_INT (default,never) : GLenum; /* CONSTANT */			

	/* Framebuffer Object. */
		public var FRAMEBUFFER (default,never) : GLenum; /* CONSTANT */			
		public var RENDERBUFFER (default,never) : GLenum; /* CONSTANT */			
		public var RGBA4 (default,never) : GLenum; /* CONSTANT */			
		public var RGB5_A1 (default,never) : GLenum; /* CONSTANT */			
		public var RGB565 (default,never) : GLenum; /* CONSTANT */			
		public var DEPTH_COMPONENT16 (default,never) : GLenum; /* CONSTANT */			
		public var STENCIL_INDEX (default,never) : GLenum; /* CONSTANT */			
		public var STENCIL_INDEX8 (default,never) : GLenum;/* CONSTANT */	
		public var DEPTH_STENCIL (default,never) : GLenum; /* CONSTANT */			
		public var RENDERBUFFER_WIDTH (default,never) : GLenum; /* CONSTANT */			
		public var RENDERBUFFER_HEIGHT (default,never) : GLenum; /* CONSTANT */			
		public var RENDERBUFFER_INTERNAL_FORMAT (default,never) : GLenum;/* CONSTANT */	
		public var RENDERBUFFER_RED_SIZE (default,never) : GLenum; /* CONSTANT */			
		public var RENDERBUFFER_GREEN_SIZE (default,never) : GLenum; /* CONSTANT */			
		public var RENDERBUFFER_BLUE_SIZE (default,never) : GLenum; /* CONSTANT */			
		public var RENDERBUFFER_ALPHA_SIZE (default,never) : GLenum; /* CONSTANT */			
		public var RENDERBUFFER_DEPTH_SIZE (default,never) : GLenum; /* CONSTANT */			
		public var RENDERBUFFER_STENCIL_SIZ (default,never) : GLenum; /* CONSTANT */			
		public var FRAMEBUFFER_ATTACHMENT_OBJECT_TYPE (default,never) : GLenum; /* CONSTANT */			
		public var FRAMEBUFFER_ATTACHMENT_OBJECT_NAME (default,never) : GLenum;/* CONSTANT */	
		public var FRAMEBUFFER_ATTACHMENT_TEXTURE_LEVEL (default,never) : GLenum; /* CONSTANT */			
		public var FRAMEBUFFER_ATTACHMENT_TEXTURE_CUBE_MAP_FACE (default,never) : GLenum; /* CONSTANT */			
		public var COLOR_ATTACHMENT0 (default,never) : GLenum; /* CONSTANT */			
		public var DEPTH_ATTACHMENT (default,never) : GLenum;/* CONSTANT */	
		public var STENCIL_ATTACHMENT (default,never) : GLenum; /* CONSTANT */			
		public var DEPTH_STENCIL_ATTACHMENT (default,never) : GLenum; /* CONSTANT */			
		public var NONE (default,never) : GLenum; /* CONSTANT */			
		public var FRAMEBUFFER_COMPLETE (default,never) : GLenum; /* CONSTANT */			
		public var FRAMEBUFFER_INCOMPLETE_ATTACHMENT (default,never) : GLenum; /* CONSTANT */			
		public var FRAMEBUFFER_INCOMPLETE_MISSING_ATTACHMENT (default,never) : GLenum; /* CONSTANT */			
		public var FRAMEBUFFER_INCOMPLETE_DIMENSIONS (default,never) : GLenum; /* CONSTANT */			
		public var FRAMEBUFFER_UNSUPPORTED (default,never) :  GLenum; /* CONSTANT */	
		public var FRAMEBUFFER_BINDING (default,never) :  GLenum; /* CONSTANT */	
		public var RENDERBUFFER_BINDING (default,never) :  GLenum; /* CONSTANT */	
		public var MAX_RENDERBUFFER_SIZE (default,never) :  GLenum; /* CONSTANT */	  
		public var INVALID_FRAMEBUFFER_OPERATION (default,never) : GLenum; /* CONSTANT */			

	/* WebGL-specific enums */
		public var UNPACK_FLIP_Y_WEBGL (default,never) :  GLenum; /* CONSTANT */	
		public var UNPACK_PREMULTIPLY_ALPHA_WEBGL (default,never) :  GLenum; /* CONSTANT */	
		public var CONTEXT_LOST_WEBGL (default,never) :  GLenum; /* CONSTANT */	
		public var UNPACK_COLORSPACE_CONVERSION_WEBGL (default,never) :  GLenum; /* CONSTANT */	
		public var BROWSER_DEFAULT_WEBGL (default,never) : GLenum; /* CONSTANT */			
	
	/* properties */
		public var canvas (default,never) : HTMLCanvasElement; /* READ ONLY */
    	public var drawingBufferWidth  (default,never) : GLsizei; /* READ ONLY */
    	public var drawingBufferHeight (default,never) : GLsizei; /* READ ONLY */
    
	/* methods */
		public function getContextAttributes() : WebGLContextAttributes;
		public function isContextLost() : Bool;
		public function getSupportedExtensions() : Array<DOMString>;
		public function getExtension(name:DOMString) : Object;
		public function activeTexture(texture:GLenum) : Void;
		public function attachShader(program:WebGLProgram, shader:WebGLShader) : Void;
		public function bindAttribLocation(program:WebGLProgram, index:GLuint, name:DOMString) : Void;
		public function bindBuffer(target:GLenum, buffer:WebGLBuffer) : Void;
		public function bindFramebuffer(target:GLenum, framebuffer:WebGLFramebuffer) : Void;
		public function bindRenderbuffer(target:GLenum, renderbuffer:WebGLRenderbuffer) : Void;
		public function bindTexture(target:GLenum, texture:WebGLTexture) : Void;
		public function blendColor(red:GLclampf, green:GLclampf, blue:GLclampf, alpha:GLclampf) : Void;
		public function blendEquation(mode:GLenum) : Void;
		public function blendEquationSeparate(modeRGB:GLenum, modeAlpha:GLenum) : Void;
		public function blendFunc(sfactor:GLenum, dfactor:GLenum) : Void;
		public function blendFuncSeparate(srcRGB:GLenum, dstRGB:GLenum, srcAlpha:GLenum, dstAlpha:GLenum) : Void;
		
		@:overload(function (target:GLenum, size:GLsizeiptr, usage:GLenum) : Void {} )
		@:overload(function (target:GLenum, data:ArrayBufferView, usage:GLenum) : Void {} )
		public function bufferData(target:GLenum, data:ArrayBuffer, usage:GLenum):Void;
		  
		@:overload(function (target:GLenum, offset:GLintptr, data:ArrayBufferView) : Void {} )  
		public function bufferSubData(target:GLenum, offset:GLintptr, data:ArrayBuffer):Void;
			
		public function checkFramebufferStatus(target:GLenum) : GLenum;
		public function clear(mask:GLbitfield) : Void;
		public function clearColor(red:GLclampf, green:GLclampf, blue:GLclampf, alpha:GLclampf) : Void;
		public function clearDepth(depth:GLclampf) : Void;
		public function clearStencil(s:GLint) : Void;
		public function colorMask(red:GLboolean, green:GLboolean, blue:GLboolean, alpha:GLboolean) : Void;
		public function compileShader(shader:WebGLShader) : Void;
		public function copyTexImage2D(target:GLenum, level:GLint, internalformat:GLenum, x:GLint, y:GLint,  width:GLsizei, height:GLsizei, border:GLint) : Void;
		public function copyTexSubImage2D(target:GLenum, level:GLint, xoffset:GLint, yoffset:GLint, x:GLint, y:GLint, width:GLsizei, height:GLsizei) : Void;
		public function createBuffer() : WebGLBuffer;
		public function createFramebuffer() : WebGLFramebuffer;
		public function createProgram() : WebGLProgram;
		public function createRenderbuffer() : WebGLRenderbuffer;
		public function createShader(type:GLenum) : WebGLShader;
		public function createTexture() : WebGLTexture;
		public function cullFace(mode:GLenum) : Void;
		public function deleteBuffer(buffer:WebGLBuffer) : Void;
		public function deleteFramebuffer(framebuffer:WebGLFramebuffer) : Void;
		public function deleteProgram(program:WebGLProgram) : Void;
		public function deleteRenderbuffer(renderbuffer:WebGLRenderbuffer) : Void;
		public function deleteShader(shader:WebGLShader) : Void;
		public function deleteTexture(texture:WebGLTexture) : Void;
		public function depthFunc(func:GLenum) : Void;
		public function depthMask(flag:GLboolean) : Void;
		public function depthRange(zNear:GLclampf, zFar:GLclampf) : Void;
		public function detachShader(program:WebGLProgram, shader:WebGLShader) : Void;
		public function disable(cap:GLenum) : Void;
		public function disableVertexAttribArray(index:GLuint) : Void;
		public function drawArrays(mode:GLenum, first:GLint, count:GLsizei) : Void;
		public function drawElements(mode:GLenum, count:GLsizei, type:GLenum, offset:GLintptr) : Void;
		public function enable(cap:GLenum) : Void;
		public function enableVertexAttribArray(index:GLuint) : Void;
		public function finish() : Void;
		public function flush() : Void;
		public function framebufferRenderbuffer(target:GLenum, attachment:GLenum, renderbuffertarget:GLenum, renderbuffer:WebGLRenderbuffer) : Void;
		public function framebufferTexture2D(target:GLenum, attachment:GLenum, textarget:GLenum, texture:WebGLTexture, level:GLint) : Void;
		public function frontFace(mode:GLenum) : Void;
		public function generateMipmap(target:GLenum) : Void;
		public function getActiveAttrib(program:WebGLProgram, index:GLuint) : WebGLActiveInfo;
		public function getActiveUniform(program:WebGLProgram, index:GLuint) : WebGLActiveInfo;
		public function getAttachedShaders(program:WebGLProgram) : Array<WebGLShader>;
		public function getAttribLocation(program:WebGLProgram, name:DOMString) : GLint;
		public function getParameter(pname:GLenum) : Dynamic;
		public function getBufferParameter(target:GLenum, pname:GLenum) : Dynamic;
		public function getError() : GLenum;
		public function getFramebufferAttachmentParameter(target:GLenum, attachment:GLenum, pname:GLenum) : Dynamic;
		public function getProgramParameter(program:WebGLProgram, pname:GLenum) : Dynamic;
		public function getProgramInfoLog(program:WebGLProgram) : DOMString;
		public function getRenderbufferParameter(target:GLenum, pname:GLenum) : Dynamic;
		public function getShaderParameter(shader:WebGLShader, pname:GLenum) : Dynamic;
		public function getShaderInfoLog(shader:WebGLShader) : DOMString;
		public function getShaderSource(shader:WebGLShader) : DOMString;
		public function getTexParameter(target:GLenum, pname:GLenum) : Dynamic;
		public function getUniform(program:WebGLProgram, location:WebGLUniformLocation) : Dynamic;
		public function getUniformLocation(program:WebGLProgram, name:DOMString) : WebGLUniformLocation;
		public function  getVertexAttrib(index:GLuint, pname:GLenum) : Dynamic;
		public function getVertexAttribOffset(index:GLuint, pname:GLenum) : GLsizeiptr;
		public function hint(target:GLenum, mode:GLenum) : Void;
		public function isBuffer(buffer:WebGLBuffer) : GLboolean;
		public function isEnabled(cap:GLenum) : GLboolean;
		public function isFramebuffer(framebuffer:WebGLFramebuffer) : GLboolean;
		public function isProgram(program:WebGLProgram) : GLboolean;
		public function  isRenderbuffer(renderbuffer:WebGLRenderbuffer) : GLboolean;
		public function isShader(shader:WebGLShader) : GLboolean;
		public function isTexture(texture:WebGLTexture) : GLboolean;
		public function lineWidth(width:GLfloat) : Void;
		public function linkProgram(program:WebGLProgram) : Void;
		public function pixelStorei(pname:GLenum, param:GLint) : Void;
		public function polygonOffset(factor:GLfloat, units:GLfloat) : Void;
		public function readPixels(x:GLint, y:GLint, width:GLsizei, height:GLsizei, format:GLenum, type:GLenum, pixels:ArrayBufferView) : Void;
		public function renderbufferStorage(target:GLenum, internalformat:GLenum, width:GLsizei, height:GLsizei) : Void;
		public function sampleCoverage(value:GLclampf, invert:GLboolean) : Void;
		public function scissor(x:GLint, y:GLint, width:GLsizei, height:GLsizei) : Void;
		public function shaderSource(shader:WebGLShader, source:DOMString) : Void;
		public function stencilFunc(func:GLenum, ref:GLint, mask:GLuint) : Void;
		public function stencilFuncSeparate(face:GLenum, func:GLenum, ref:GLint, mask:GLuint) : Void;
		public function stencilMask(mask:GLuint) : Void;
		public function stencilMaskSeparate(face:GLenum, mask:GLuint) : Void;
		public function stencilOp(fail:GLenum, zfail:GLenum, zpass:GLenum) : Void;
		public function stencilOpSeparate(face:GLenum, fail:GLenum, zfail:GLenum, zpass:GLenum) : Void;
    	
		@:overload(function (target:GLenum, level:GLint, internalformat:GLenum, width:GLsizei , height:GLsizei , border:GLint , format:GLenum, type:GLenum , pixels:ArrayBufferView) : Void {} )
		@:overload(function (target:GLenum, level:GLint, internalformat:GLenum, format:GLenum, type:GLenum,  pixels:ImageData) : Void {} )
		@:overload(function (target:GLenum, level:GLint, internalformat:GLenum, format:GLenum, type:GLenum, image:HTMLImageElement) : Void {} )
		@:overload(function (target:GLenum, level:GLint, internalformat:GLenum, format:GLenum, type:GLenum, canvas:HTMLCanvasElement) : Void {} )
		public function texImage2D(target:GLenum, level:GLint, internalformat:GLenum, format:GLenum, type:GLenum, video:HTMLVideoElement):Void;
		
		@:overload(function (target:GLenum, pname:GLenum, param:GLfloat) : Void {} )
		public function texParameteri(target:GLenum, pname:GLenum, param:GLint) : Void;
		
		@:overload(function (target:GLenum, level:GLint, xoffset:GLint, yoffset:GLint, width:GLsizei, height:GLsizei, format:GLenum, type:GLenum, pixels:ArrayBufferView) : Void {} )
		@:overload(function (target:GLenum, level:GLint, xoffset:GLint, yoffset:GLint, format:GLenum, type:GLenum, pixels:ImageData) : Void {} )
		@:overload(function (target:GLenum, level:GLint, xoffset:GLint, yoffset:GLint, format:GLenum, type:GLenum, image:HTMLImageElement) : Void {} )
		@:overload(function (target:GLenum, level:GLint, xoffset:GLint, yoffset:GLint, format:GLenum, type:GLenum, canvas:HTMLCanvasElement) : Void {} )
		public function texSubImage2D(target:GLenum, level:GLint, xoffset:GLint , yoffset:GLint, format:GLenum, type:GLenum, video:HTMLVideoElement) : Void;
		
		public function uniform1f(location:WebGLUniformLocation, x:GLfloat) : Void;
		public function uniform1i(location:WebGLUniformLocation, x:GLint) : Void;
		public function uniform2f(location:WebGLUniformLocation, x:GLfloat, y:GLfloat) : Void;
		public function uniform2i(location:WebGLUniformLocation, x:GLint, y:GLint) : Void;
		public function uniform3f(location:WebGLUniformLocation, x:GLfloat, y:GLfloat, z:GLfloat) : Void;	
		public function uniform3i(location:WebGLUniformLocation, x:GLint, y:GLint, z:GLint) : Void;
		public function uniform4f(location:WebGLUniformLocation, x:GLfloat, y:GLfloat, z:GLfloat, w:GLfloat) : Void;
		public function uniform4i(location:WebGLUniformLocation, x:GLint, y:GLint, z:GLint, w:GLint) : Void;
		
		@:overload(function (location:WebGLUniformLocation, v:Float32Array) : Void {} )
		public function uniform1fv(location:WebGLUniformLocation, v:ArrayAccess<Float>) : Void;

    	@:overload(function (location:WebGLUniformLocation, v:Int32Array) : Void {} )
		public function uniform1iv(location:WebGLUniformLocation, v:ArrayAccess<Long>) : Void;
    	
		@:overload(function (location:WebGLUniformLocation, v:Float32Array) : Void {} )
		public function uniform2fv(location:WebGLUniformLocation, v:ArrayAccess<Float>) : Void;

		@:overload(function (location:WebGLUniformLocation, v:Int32Array) : Void {} )
		public function uniform2iv(location:WebGLUniformLocation, v:ArrayAccess<Long>) : Void;

		@:overload(function (location:WebGLUniformLocation, v:Float32Array) : Void {} )
		public function uniform3fv(location:WebGLUniformLocation, v:ArrayAccess<Float>) : Void;
		
		@:overload(function (location:WebGLUniformLocation, v:Int32Array) : Void {} )
		public function uniform3iv(location:WebGLUniformLocation, v:ArrayAccess<Long>) : Void;
		
		@:overload(function (location:WebGLUniformLocation, v:Float32Array) : Void {} )
		public function uniform4fv(location:WebGLUniformLocation, v:ArrayAccess<Float>) : Void;
		
		@:overload(function (location:WebGLUniformLocation, v:Int32Array) : Void {} )
		public function uniform4iv(location:WebGLUniformLocation, v:ArrayAccess<Long>) : Void;

		@:overload(function (location:WebGLUniformLocation, transpose:GLboolean, value:Float32Array) : Void {} )
		public function uniformMatrix2fv(location:WebGLUniformLocation, transpose:GLboolean, value:ArrayAccess<Float>) : Void;
		    
		@:overload(function (location:WebGLUniformLocation, transpose:GLboolean, value:Float32Array) : Void {} )
		public function  uniformMatrix3fv(location:WebGLUniformLocation, transpose:GLboolean, value:ArrayAccess<Float>) : Void;
		    
		@:overload(function (location:WebGLUniformLocation, transpose:GLboolean, value:Float32Array) : Void {} )
		public function uniformMatrix4fv(location:WebGLUniformLocation, transpose:GLboolean, value:ArrayAccess<Float>) : Void;
		
		public function useProgram(program:WebGLProgram) : Void;
		public function validateProgram(program:WebGLProgram) : Void;
		
		public function vertexAttrib1f(indx:GLuint, x:GLfloat) : Void;	
		public function vertexAttrib2f(indx:GLuint, x:GLfloat, y:GLfloat) : Void;	
		public function vertexAttrib3f(indx:GLuint, x:GLfloat, y:GLfloat, z:GLfloat) : Void;
		public function vertexAttrib4f(indx:GLuint, x:GLfloat, y:GLfloat, z:GLfloat, w:GLfloat) : Void;
		public function vertexAttribPointer(indx:GLuint, size:GLint, type:GLenum, normalized:GLboolean, stride:GLsizei, offset:GLintptr) : Void;

		@:overload(function (indx:GLuint, values:Float32Array) : Void {} )
		public function vertexAttrib1fv(indx:GLuint, values:ArrayAccess<Float>) : Void;

		@:overload(function (indx:GLuint, values:Float32Array) : Void {} )
		public function vertexAttrib2fv(indx:GLuint, values:ArrayAccess<Float>) : Void;

		@:overload(function (indx:GLuint, values:Float32Array) : Void {} )
		public function vertexAttrib3fv(indx:GLuint, values:ArrayAccess<Float>) : Void;

		@:overload(function (indx:GLuint, values:Float32Array) : Void {} )
		public function vertexAttrib4fv(indx:GLuint, values:ArrayAccess<Float>) : Void;
	
		public function viewport(x:GLint, y:GLint, width:GLsizei, height:GLsizei) : Void;	
  
}


extern class WebGLContextEvent extends Event {
	public var statusMessage (default,never) : DOMString; /* READ ONLY */
	public function new(typeArg:DOMString, canBubbleArg:Bool, cancelableArg:Bool, statusMessageArg:DOMString) : Void;
}
