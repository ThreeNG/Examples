// This file was created by Filewrap 1.1
// Little endian mode
// DO NOT EDIT

#include "../PVRTMemoryFileSystem.h"

// using 32 bit to guarantee alignment.
#ifndef A32BIT
 #define A32BIT static const unsigned int
#endif

// ******** Start: effect.pfx ********

// File data
static const char _effect_pfx[] = 
	"[HEADER]\r\n"
	"\tVERSION\t\t01.00.00.00\r\n"
	"\tDESCRIPTION OGLES3CubeShadowMapping\r\n"
	"\tCOPYRIGHT\tImagination Technologies\r\n"
	"[/HEADER]\r\n"
	"\r\n"
	"[TEXTURES] \r\n"
	"\tFILE texture \ttexture.pvr\t\tLINEAR-LINEAR-LINEAR REPEAT-REPEAT\r\n"
	"[/TEXTURES]\r\n"
	"\r\n"
	"//\r\n"
	"// Effect to render the scene using a cube shadow map\r\n"
	"//\r\n"
	"\r\n"
	"[EFFECT] \r\n"
	"\tNAME \tRenderMRTs\r\n"
	"\t\t\r\n"
	"\t// GLOBALS UNIFORMS\r\n"
	"\tUNIFORM uWorldViewProjMatrix\tWORLDVIEWPROJECTION\r\n"
	"\tUNIFORM uModelMatrix\t\t\t\tWORLD\r\n"
	"\tUNIFORM uViewMatrix\t\t\t\t\tVIEW\r\n"
	"\tUNIFORM uModelViewIT\t\t \t\tWORLDVIEWIT\t\r\n"
	"\tUNIFORM uLightDirView\t\t\t\tLIGHTDIREYE\r\n"
	"\t\t\r\n"
	"\tUNIFORM sTextureMap\t\t\t\t\tTEXTURE0\r\n"
	"\t\r\n"
	"\t// ATTRIBUTES\r\n"
	"\tATTRIBUTE inVertex\t\tPOSITION\r\n"
	"\tATTRIBUTE\tinNormal\t\tNORMAL\r\n"
	"\tATTRIBUTE\tinTexCoord\tUV\t\t\r\n"
	"\t\r\n"
	"\t// SHADERS\r\n"
	"\tVERTEXSHADER   MRTVertexShader\r\n"
	"\tFRAGMENTSHADER MRTFragmentShader\r\n"
	"\t\r\n"
	"\tTEXTURE 0 texture\r\n"
	"[/EFFECT]\r\n"
	"\r\n"
	"[VERTEXSHADER]\r\n"
	"\tNAME \t\tMRTVertexShader\r\n"
	"\r\n"
	"\t[GLSL_CODE]\r\n"
	"\t\t#version 300 es\r\n"
	"\r\n"
	"\t\t#define VERTEX_ARRAY    0\r\n"
	"\t\t#define NORMAL_ARRAY    1\r\n"
	"\t\t#define TEXCOORD_ARRAY  2\r\n"
	"\r\n"
	"\t\tlayout(location = VERTEX_ARRAY)   in highp   vec3 inVertex; \r\n"
	"\t\tlayout(location = NORMAL_ARRAY)   in highp   vec3 inNormal;\r\n"
	"\t\tlayout(location = TEXCOORD_ARRAY) in mediump vec2 inTexCoord;\r\n"
	"\r\n"
	"\t\tuniform  mat4  uWorldViewProjMatrix; \r\n"
	"\t\tuniform  mat4  uModelMatrix; \r\n"
	"\t\tuniform  mat4  uViewMatrix; \r\n"
	"\t\tuniform  mat3  uModelViewIT; \r\n"
	"\t\tuniform  vec3  uLightDirView; \r\n"
	"\r\n"
	"\t\tout highp   vec2  vDiffuseSpecular; \r\n"
	"\t\tout mediump vec2  vTexCoord;\r\n"
	"\r\n"
	"\t\tvoid main() \r\n"
	"\t\t{\r\n"
	"\t\t\t// Transform position\r\n"
	"\t\t\tgl_Position = uWorldViewProjMatrix * vec4(inVertex, 1.0);\r\n"
	"\t\t\t\t\r\n"
	"\t\t\t// Transform normal from model space to eye space\r\n"
	"\t\t\thighp vec3 normalView = normalize(uModelViewIT * inNormal);\r\n"
	"\r\n"
	"\t\t\t// Calculate the specular component\r\n"
	"\t\t\thighp vec3 posView = (uViewMatrix * vec4(inVertex, 1.0)).xyz;\r\n"
	"\t\t\thighp vec3 reflLight = reflect(uLightDirView, normalView);\r\n"
	"\t\t\thighp vec3 viewDir = normalize(posView);\r\n"
	"\t\t\tvDiffuseSpecular.y = pow(max(dot(reflLight, viewDir), 0.0), 16.0);\r\n"
	"\t\t\t\r\n"
	"\t\t\t// Calculate the diffuse intensity, applying scale and bias.\r\n"
	"\t\t\tvDiffuseSpecular.x = max(dot(normalView, uLightDirView), 0.0);\r\n"
	"\t\t\t\r\n"
	"\t\t\t// Pass the texture coordinates to the fragment shader\r\n"
	"\t\t\tvTexCoord = inTexCoord;\r\n"
	"\t\t}\r\n"
	"\t[/GLSL_CODE]\r\n"
	"[/VERTEXSHADER]\r\n"
	"\r\n"
	"    \r\n"
	"[FRAGMENTSHADER] \r\n"
	"\tNAME \t\tMRTFragmentShader \r\n"
	"\r\n"
	"\t[GLSL_CODE]\r\n"
	"\t  #version 300 es\r\n"
	"\r\n"
	"\t\tuniform sampler2D  sTexture;\r\n"
	"\r\n"
	"\t\tin highp   vec2  vDiffuseSpecular; \r\n"
	"\t\tin mediump vec2  vTexCoord;\r\n"
	"\r\n"
	"\t\tlayout(location = 0) out lowp vec3  oAlbedo; \r\n"
	"\t\tlayout(location = 1) out lowp float oDiffuse; \r\n"
	"\t\tlayout(location = 2) out lowp float oSpecular; \r\n"
	"\t\tlayout(location = 3) out lowp vec3  oColour; \r\n"
	" \r\n"
	"\t\tvoid main() \r\n"
	"\t\t{ \r\n"
	"\t\t\tlowp vec3 texcolor = texture(sTexture, vTexCoord).rgb;\t\r\n"
	"\t\t\toColour = (texcolor * vDiffuseSpecular.x) + vDiffuseSpecular.y; \r\n"
	"\t\t\toAlbedo = texcolor; \r\n"
	"\t\t\toDiffuse = vDiffuseSpecular.x; \r\n"
	"\t\t\toSpecular = vDiffuseSpecular.y; \r\n"
	"\t\t}\t\r\n"
	"\t[/GLSL_CODE]\r\n"
	"[/FRAGMENTSHADER]\r\n"
	"\r\n"
	"\r\n"
	"//\r\n"
	"// Effect to blit a 3-channel texture\r\n"
	"//\r\n"
	"\r\n"
	"[EFFECT] \r\n"
	"\tNAME \tBlitTexture\r\n"
	"\t\t\r\n"
	"\t// GLOBALS UNIFORMS\r\n"
	"\tUNIFORM sTexture\t\t\tTEXTURE0\r\n"
	"\t\t\r\n"
	"\t// ATTRIBUTES\r\n"
	"\tATTRIBUTE inVertex\t\tPOSITION\r\n"
	"\tATTRIBUTE\tinTexCoord\tUV\t\t\r\n"
	"\r\n"
	"\t// SHADERS\t\r\n"
	"\tVERTEXSHADER   BlitVertexShader\r\n"
	"\tFRAGMENTSHADER RGBBlitFragmentShader\r\n"
	"[/EFFECT]\r\n"
	"\r\n"
	"[EFFECT] \r\n"
	"\tNAME \tBlitSingleChannelTexture\r\n"
	"\t\t\r\n"
	"\t// GLOBALS UNIFORMS\r\n"
	"\tUNIFORM sTexture\t\t\tTEXTURE0\r\n"
	"\t\t\r\n"
	"\t// ATTRIBUTES\r\n"
	"\tATTRIBUTE inVertex\t\tPOSITION\r\n"
	"\tATTRIBUTE\tinTexCoord\tUV\t\t\r\n"
	"\r\n"
	"\t// SHADERS\t\r\n"
	"\tVERTEXSHADER   BlitVertexShader\r\n"
	"\tFRAGMENTSHADER SingleChannelBlitFragmentShader\r\n"
	"[/EFFECT]\r\n"
	"\r\n"
	"[VERTEXSHADER]\r\n"
	"\tNAME \t\tBlitVertexShader\r\n"
	"\r\n"
	"\t[GLSL_CODE]\r\n"
	"\t\t#version 300 es\r\n"
	"\r\n"
	"\t\t#define VERTEX_ARRAY    0\r\n"
	"\t\t#define NORMAL_ARRAY    1\r\n"
	"\t\t#define TEXCOORD_ARRAY  2\r\n"
	"\r\n"
	"\t\tlayout(location = VERTEX_ARRAY)   in highp   vec2 inVertex;\r\n"
	"\t\tlayout(location = TEXCOORD_ARRAY) in mediump vec2 inTexCoord;\r\n"
	"\r\n"
	"\t\tout mediump vec2  vTexCoord;\r\n"
	"\r\n"
	"\t\tvoid main() \r\n"
	"\t\t{ \r\n"
	"\t\t\t// pass-through position and texture coordinates\r\n"
	"\t\t\tgl_Position = vec4(inVertex, 0.0, 1.0);\r\n"
	"\t\t\tvTexCoord = inTexCoord;\r\n"
	"\t\t} \r\n"
	"\t[/GLSL_CODE]\r\n"
	"[/VERTEXSHADER]\r\n"
	"\r\n"
	"[FRAGMENTSHADER] \r\n"
	"\tNAME \t\tRGBBlitFragmentShader \r\n"
	"\r\n"
	"\t[GLSL_CODE]\r\n"
	"\t\t#version 300 es\r\n"
	"\r\n"
	"\t\tuniform sampler2D sTexture;\r\n"
	"\r\n"
	"\t\tin mediump vec2 vTexCoord;\r\n"
	"\r\n"
	"\t\tlayout(location = 0) out lowp vec4  oColour; \r\n"
	"\r\n"
	"\t\tvoid main()\r\n"
	"\t\t{\r\n"
	"\t\t\toColour = texture(sTexture, vTexCoord);\r\n"
	"\t\t}\r\n"
	"\t[/GLSL_CODE]\r\n"
	"[/FRAGMENTSHADER]\r\n"
	"\r\n"
	"[FRAGMENTSHADER] \r\n"
	"\tNAME \t\tSingleChannelBlitFragmentShader \r\n"
	"\r\n"
	"\t[GLSL_CODE]\r\n"
	"\t\t#version 300 es\r\n"
	"\r\n"
	"\t\tuniform sampler2D sTexture;\r\n"
	"\r\n"
	"\t\tin mediump vec2 vTexCoord;\r\n"
	"\r\n"
	"\t\tlayout(location = 0) out lowp vec4  oColour; \r\n"
	"\r\n"
	"\t\tvoid main()\r\n"
	"\t\t{\r\n"
	"\t\t\toColour.rgb = texture(sTexture, vTexCoord).rrr;\r\n"
	"\t\t\toColour.a = 1.0;\r\n"
	"\t\t}\r\n"
	"\t[/GLSL_CODE]\r\n"
	"[/FRAGMENTSHADER]\r\n";

// Register effect.pfx in memory file system at application startup time
static CPVRTMemoryFileSystem RegisterFile_effect_pfx("effect.pfx", _effect_pfx, 4665);

// ******** End: effect.pfx ********
