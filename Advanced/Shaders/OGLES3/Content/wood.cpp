// This file was created by Filewrap 1.1
// Little endian mode
// DO NOT EDIT

#include "../PVRTMemoryFileSystem.h"

// using 32 bit to guarantee alignment.
#ifndef A32BIT
 #define A32BIT static const unsigned int
#endif

// ******** Start: wood.pfx ********

// File data
static const char _wood_pfx[] = 
	"[HEADER]\r\n"
	"\tVERSION\t\t00.00.00.00\r\n"
	"\tDESCRIPTION Wood Example\r\n"
	"\tCOPYRIGHT\tImagination Technologies Ltd.\r\n"
	"[/HEADER]\r\n"
	"\r\n"
	"[TEXTURES]\r\n"
	"[/TEXTURES]\r\n"
	"\r\n"
	"[VERTEXSHADER]\r\n"
	"\tNAME myVertShader\r\n"
	"\t[GLSL_CODE]\r\n"
	"\t\t#version 300 es\r\n"
	"\r\n"
	"\t\tlayout (location = 0) in highp vec4\tmyVertex;\r\n"
	"\t\tlayout (location = 1) in mediump vec3 myNormal;\r\n"
	"\t\tlayout (location = 2) in mediump vec4 myUV;\r\n"
	"\r\n"
	"\t\tuniform mediump mat4\tmyMVPMatrix;\r\n"
	"\t\tuniform mediump mat3\tmyModelViewIT;\r\n"
	"\t\tuniform mediump mat4\tmyModelView;\r\n"
	"\r\n"
	"\t\tconst mediump vec3\t\tLightPosition = vec3(0.0, 0.0, 4.0);\r\n"
	"\t\tconst mediump float\t\tScale = 0.25;\r\n"
	"\r\n"
	"\t\tout mediump float lightIntensity;\r\n"
	"\t\tout mediump vec3 Position;\r\n"
	"\r\n"
	"\t\tvoid main(void)\r\n"
	"\t\t{\r\n"
	"\t\t\tmediump vec4 pos = myModelView * myVertex;\r\n"
	"\t\t\tPosition = vec3(myVertex) * Scale;\r\n"
	"\t\t\tmediump vec3 tnorm = myModelViewIT * myNormal;\r\n"
	"\t\t\tlightIntensity = abs(dot(normalize(LightPosition - vec3(pos)), tnorm)) * 1.5;\r\n"
	"\t\t\tgl_Position = myMVPMatrix * myVertex;\r\n"
	"\t\t}\r\n"
	"\t[/GLSL_CODE]\r\n"
	"[/VERTEXSHADER]\r\n"
	"\r\n"
	"[FRAGMENTSHADER]\r\n"
	"\tNAME myFragShader\r\n"
	"\t[GLSL_CODE]\r\n"
	"\t\t#version 300 es\r\n"
	"\r\n"
	"\t\tconst mediump float GrainSizeRecip = 7.0;\r\n"
	"\t\tconst mediump vec3  DarkColour = vec3(0.6, 0.3, 0.1);\r\n"
	"\t\tconst  mediump vec3 spread = vec3(0.15, 0.075, 0.0);\r\n"
	"\r\n"
	"\t\tin mediump float lightIntensity; \r\n"
	"\t\tin highp vec3 Position;\r\n"
	"\r\n"
	"\t\tlayout (location = 0) out lowp vec4 oColour;\r\n"
	"\r\n"
	"\t\tvoid main (void)\r\n"
	"\t\t{\r\n"
	"\t\t\t//\r\n"
	"\t\t\t// cheap noise\r\n"
	"\t\t\t//\r\n"
	"\t\t\tmediump vec3 location = Position;\r\n"
	"\t\t\tmediump vec3 floorvec = vec3(floor(10.0 * Position.x), 0.0, floor(10.0 * Position.z));\r\n"
	"\t\t\tmediump vec3 noise = Position * 10.0 - floorvec - 0.5;\r\n"
	"\t\t\tnoise *= noise;\r\n"
	"\t\t\tlocation += noise * 0.12;\r\n"
	"\t\t\r\n"
	"\t\t\t//\r\n"
	"\t\t\t// distance from axis\r\n"
	"\t\t\t//\r\n"
	"\t\t\tmediump float dist = location.x * location.x + location.z * location.z;\r\n"
	"\t\t\tmediump float grain = dist * GrainSizeRecip;\r\n"
	"\r\n"
	"\t\t\t//\r\n"
	"\t\t\t// grain effects as function of distance\r\n"
	"\t\t\t//\r\n"
	"\t\t\tmediump float brightness = fract(grain);  \r\n"
	"\t\t\t  \r\n"
	"\t\t\tif (brightness > 0.5) \r\n"
	"\t\t\t\tbrightness = 1.0 - brightness;\r\n"
	"\r\n"
	"\t\t\tmediump vec3 colour = DarkColour + brightness * spread;\r\n"
	"\r\n"
	"\t\t\t//\r\n"
	"\t\t\t// apply lighting effects from vertex processor\r\n"
	"\t\t\t//\r\n"
	"\t\t\tcolour = clamp(colour * lightIntensity, 0.0, 1.0); \r\n"
	"\r\n"
	"\t\t\toColour = vec4(colour, 1.0);\r\n"
	"\t\t}\r\n"
	"\t[/GLSL_CODE]\r\n"
	"[/FRAGMENTSHADER]\r\n"
	"\r\n"
	"[EFFECT]\r\n"
	"\tNAME myEffect\r\n"
	"\r\n"
	"\tATTRIBUTE\tmyVertex\t\t\tPOSITION\r\n"
	"\tATTRIBUTE\tmyNormal\t\t\tNORMAL\r\n"
	"\tUNIFORM\t\tmyMVPMatrix\t\t\tWORLDVIEWPROJECTION\r\n"
	"\tUNIFORM\t\tmyModelViewIT\t\tWORLDVIEWIT\r\n"
	"\r\n"
	"\tVERTEXSHADER myVertShader\r\n"
	"\tFRAGMENTSHADER myFragShader\r\n"
	"[/EFFECT]\r\n";

// Register wood.pfx in memory file system at application startup time
static CPVRTMemoryFileSystem RegisterFile_wood_pfx("wood.pfx", _wood_pfx, 2468);

// ******** End: wood.pfx ********

