LOCAL_PATH := $(realpath $(call my-dir)/../../../../../../../..)
PVRSDKDIR := $(LOCAL_PATH)

ASSETDIR := $(PVRSDKDIR)/Examples/Advanced/PolyBump/OGLES/Build/Android/assets

include $(CLEAR_VARS)

LOCAL_MODULE    := OGLESPolyBump

### Add all source file names to be included in lib separated by a whitespace
LOCAL_SRC_FILES := \
				   Examples/Advanced/PolyBump/OGLES/OGLESPolyBump.cpp \
				   Shell/PVRShell.cpp \
				   Shell/API/KEGL/PVRShellAPI.cpp \
				   Shell/OS/Android/PVRShellOS.cpp

LOCAL_C_INCLUDES :=	\
				    $(PVRSDKDIR)/Shell	\
				    $(PVRSDKDIR)/Shell/API/KEGL	\
				    $(PVRSDKDIR)/Shell/OS/Android	\
				    $(PVRSDKDIR)/Builds/Include	\
				    $(PVRSDKDIR)/Tools	\
				    $(PVRSDKDIR)/Tools/OGLES

LOCAL_CFLAGS := -DBUILD_OGLES


LOCAL_LDLIBS :=  \
				-llog \
				-landroid \
				-lEGL \
				-lGLESv1_CM

LOCAL_STATIC_LIBRARIES := \
				          android_native_app_glue \
				          oglestools 

include $(BUILD_SHARED_LIBRARY)

$(call import-module,android/native_app_glue)

### Copy our external files to the assets folder
.PHONY : build_textures

$(PVRSDKDIR)/Examples/Advanced/PolyBump/OGLES/OGLESPolyBump.cpp:  \
								$(ASSETDIR)/Head.pod \
								$(ASSETDIR)/Head_clonespacePVRTC.pvr \
								$(ASSETDIR)/Head_clonespaceBGRA.pvr \
								$(ASSETDIR)/Head_diffuse.pvr

$(ASSETDIR):
	-mkdir $(ASSETDIR)

$(ASSETDIR)/Head_clonespacePVRTC.pvr: $(ASSETDIR) $(PVRSDKDIR)/Examples/Advanced/PolyBump/OGLES/Head_clonespacePVRTC.pvr
	cp "$(PVRSDKDIR)/Examples/Advanced/PolyBump/OGLES/Head_clonespacePVRTC.pvr"	"$(ASSETDIR)/" 

$(ASSETDIR)/Head_clonespaceBGRA.pvr: $(ASSETDIR) $(PVRSDKDIR)/Examples/Advanced/PolyBump/OGLES/Head_clonespaceBGRA.pvr
	cp "$(PVRSDKDIR)/Examples/Advanced/PolyBump/OGLES/Head_clonespaceBGRA.pvr"	"$(ASSETDIR)/" 

$(ASSETDIR)/Head_diffuse.pvr: $(ASSETDIR) $(PVRSDKDIR)/Examples/Advanced/PolyBump/OGLES/Head_diffuse.pvr
	cp "$(PVRSDKDIR)/Examples/Advanced/PolyBump/OGLES/Head_diffuse.pvr"	"$(ASSETDIR)/" 

$(ASSETDIR)/Head.pod: $(ASSETDIR) $(PVRSDKDIR)/Examples/Advanced/PolyBump/OGLES/Head.pod
	cp "$(PVRSDKDIR)/Examples/Advanced/PolyBump/OGLES/Head.pod"	"$(ASSETDIR)/" 



