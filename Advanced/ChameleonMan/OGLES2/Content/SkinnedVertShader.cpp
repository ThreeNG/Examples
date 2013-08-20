// This file was created by Filewrap 1.1
// Little endian mode
// DO NOT EDIT

#include "../PVRTMemoryFileSystem.h"

// using 32 bit to guarantee alignment.
#ifndef A32BIT
 #define A32BIT static const unsigned int
#endif

// ******** Start: SkinnedVertShader.vsh ********

// File data
static const char _SkinnedVertShader_vsh[] = 
	"/*\r\n"
	"\tIf the current vertex is affected by bones then the vertex position and\r\n"
	"\tnormal will be transformed by the bone matrices. Each vertex wil have up \r\n"
	"\tto 4 bone indices (inBoneIndex) and bone weights (inBoneWeights).\r\n"
	"\t\r\n"
	"\tThe indices are used to index into the array of bone matrices \r\n"
	"\t(BoneMatrixArray) to get the required bone matrix for transformation. The \r\n"
	"\tamount of influence a particular bone has on a vertex is determined by the\r\n"
	"\tweights which should always total 1. So if a vertex is affected by 2 bones \r\n"
	"\tthe vertex position in world space is given by the following equation:\r\n"
	"\r\n"
	"\tposition = (BoneMatrixArray[Index0] * inVertex) * Weight0 + \r\n"
	"\t           (BoneMatrixArray[Index1] * inVertex) * Weight1\r\n"
	"\r\n"
	"\tThe same proceedure is applied to the normals but the translation part of \r\n"
	"\tthe transformation is ignored.\r\n"
	"\r\n"
	"\tAfter this the position is multiplied by the view and projection matrices \r\n"
	"\tonly as the bone matrices already contain the model transform for this \r\n"
	"\tparticular mesh. The two-step transformation is required because lighting \r\n"
	"\twill not work properly in clip space.\r\n"
	"*/\r\n"
	"\r\n"
	"attribute highp   vec3 inVertex;\r\n"
	"attribute mediump vec3 inNormal;\r\n"
	"attribute mediump vec3 inTangent;\r\n"
	"attribute mediump vec3 inBiNormal;\r\n"
	"attribute mediump vec2 inTexCoord;\r\n"
	"attribute mediump vec4 inBoneIndex;\r\n"
	"attribute mediump vec4 inBoneWeights;\r\n"
	"\r\n"
	"uniform highp   mat4 ViewProjMatrix;\r\n"
	"uniform mediump vec3 LightPos;\r\n"
	"uniform mediump\tint\t BoneCount;\r\n"
	"uniform highp   mat4 BoneMatrixArray[8];\r\n"
	"uniform highp   mat3 BoneMatrixArrayIT[8];\r\n"
	"uniform bool\tbUseDot3;\r\n"
	"\r\n"
	"varying mediump vec3 Light;\r\n"
	"varying mediump vec2 TexCoord;\r\n"
	"\r\n"
	"void main()\r\n"
	"{\r\n"
	"\tif(BoneCount > 0)\r\n"
	"\t{\r\n"
	"\t\t// On PowerVR SGX it is possible to index the components of a vector\r\n"
	"\t\t// with the [] operator. However this can cause trouble with PC\r\n"
	"\t\t// emulation on some hardware so we \"rotate\" the vectors instead.\r\n"
	"\t\tmediump ivec4 boneIndex = ivec4(inBoneIndex);\r\n"
	"\t\tmediump vec4 boneWeights = inBoneWeights;\r\n"
	"\t\r\n"
	"\t\thighp mat4 boneMatrix = BoneMatrixArray[boneIndex.x];\r\n"
	"\t\tmediump mat3 normalMatrix = BoneMatrixArrayIT[boneIndex.x];\r\n"
	"\t\r\n"
	"\t\thighp vec4 position = boneMatrix * vec4(inVertex, 1.0) * boneWeights.x;\r\n"
	"\t\tmediump vec3 worldNormal = normalMatrix * inNormal * boneWeights.x;\r\n"
	"\t\t\r\n"
	"\t\tmediump vec3 worldTangent;\r\n"
	"\t\tmediump vec3 worldBiNormal;\r\n"
	"\t\t\r\n"
	"\t\tif(bUseDot3)\r\n"
	"\t\t{\r\n"
	"\t\t\tworldTangent = normalMatrix * inTangent * boneWeights.x;\r\n"
	"\t\t\tworldBiNormal = normalMatrix * inBiNormal * boneWeights.x;\r\n"
	"\t\t}\r\n"
	"\t\r\n"
	"\t\tfor (lowp int i = 1; i < 3; ++i)\r\n"
	"\t\t{\r\n"
	"\t\t\tif(i < BoneCount)\r\n"
	"\t\t\t{\r\n"
	"\t\t\t\t// \"rotate\" the vector components\r\n"
	"\t\t\t\tboneIndex = boneIndex.yzwx;\r\n"
	"\t\t\t\tboneWeights = boneWeights.yzwx;\r\n"
	"\t\t\t\r\n"
	"\t\t\t\tboneMatrix = BoneMatrixArray[boneIndex.x];\r\n"
	"\t\t\t\tnormalMatrix = BoneMatrixArrayIT[boneIndex.x];\r\n"
	"\r\n"
	"\t\t\t\tposition += boneMatrix * vec4(inVertex, 1.0) * boneWeights.x;\r\n"
	"\t\t\t\tworldNormal += normalMatrix * inNormal * boneWeights.x;\r\n"
	"\t\t\t\t\r\n"
	"\t\t\t\tif(bUseDot3)\r\n"
	"\t\t\t\t{\r\n"
	"\t\t\t\t\tworldTangent += normalMatrix * inTangent * boneWeights.x;\r\n"
	"\t\t\t\t\tworldBiNormal += normalMatrix * inBiNormal * boneWeights.x;\r\n"
	"\t\t\t\t}\r\n"
	"\t\t\t}\r\n"
	"\t\t}\t\t\r\n"
	"\t\tgl_Position = ViewProjMatrix * position;\r\n"
	"\t\t\r\n"
	"\t\t// lighting\r\n"
	"\t\tmediump vec3 TmpLightDir = normalize(LightPos - position.xyz);\r\n"
	"\t\t\r\n"
	"\t\tif(bUseDot3)\r\n"
	"\t\t{\r\n"
	"\t\t\tLight.x = dot(normalize(worldTangent), TmpLightDir);\r\n"
	"\t\t\tLight.y = dot(normalize(worldBiNormal), TmpLightDir);\r\n"
	"\t\t\tLight.z = dot(normalize(worldNormal), TmpLightDir);\r\n"
	"\t\t}\r\n"
	"\t\telse\r\n"
	"\t\t{\r\n"
	"\t\t\tLight.x = dot(normalize(worldNormal), TmpLightDir);\r\n"
	"\t\t}\r\n"
	"\t}\r\n"
	"\r\n"
	"\t\r\n"
	"\t// Pass through texcoords\r\n"
	"\tTexCoord = inTexCoord;\r\n"
	"}\r\n"
	" ";

// Register SkinnedVertShader.vsh in memory file system at application startup time
static CPVRTMemoryFileSystem RegisterFile_SkinnedVertShader_vsh("SkinnedVertShader.vsh", _SkinnedVertShader_vsh, 3539);

// ******** End: SkinnedVertShader.vsh ********

