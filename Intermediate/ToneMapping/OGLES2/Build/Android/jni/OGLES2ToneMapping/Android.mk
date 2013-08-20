LOCAL_PATH := $(realpath $(call my-dir)/../../../../../../../..)
PVRSDKDIR := $(LOCAL_PATH)

ASSETDIR := $(PVRSDKDIR)/Examples/Intermediate/ToneMapping/OGLES2/Build/Android/assets

include $(CLEAR_VARS)

LOCAL_MODULE    := OGLES2ToneMapping

### Add all source file names to be included in lib separated by a whitespace
LOCAL_SRC_FILES := \
				   Examples/Intermediate/ToneMapping/OGLES2/OGLES2ToneMapping.cpp \
				   Shell/PVRShell.cpp \
				   Shell/API/KEGL/PVRShellAPI.cpp \
				   Shell/OS/Android/PVRShellOS.cpp

LOCAL_C_INCLUDES :=	\
				    $(PVRSDKDIR)/Shell	\
				    $(PVRSDKDIR)/Shell/API/KEGL	\
				    $(PVRSDKDIR)/Shell/OS/Android	\
				    $(PVRSDKDIR)/Builds/Include	\
				    $(PVRSDKDIR)/Tools	\
				    $(PVRSDKDIR)/Tools/OGLES2

LOCAL_CFLAGS := -DBUILD_OGLES2


LOCAL_LDLIBS :=  \
				-llog \
				-landroid \
				-lEGL \
				-lGLESv2

LOCAL_STATIC_LIBRARIES := \
				          android_native_app_glue \
				          ogles2tools 

include $(BUILD_SHARED_LIBRARY)

$(call import-module,android/native_app_glue)

### Copy our external files to the assets folder
.PHONY :

$(PVRSDKDIR)/Examples/Intermediate/ToneMapping/OGLES2/OGLES2ToneMapping.cpp:  \
								$(ASSETDIR)/hdrscene.pvr \
								$(ASSETDIR)/effects.pfx

$(ASSETDIR):
	-mkdir $(ASSETDIR)

$(ASSETDIR)/hdrscene.pvr: $(ASSETDIR) $(PVRSDKDIR)/Examples/Intermediate/ToneMapping/OGLES2/hdrscene.pvr
	cp "$(PVRSDKDIR)/Examples/Intermediate/ToneMapping/OGLES2/hdrscene.pvr"	"$(ASSETDIR)/" 

$(ASSETDIR)/effects.pfx: $(ASSETDIR) $(PVRSDKDIR)/Examples/Intermediate/ToneMapping/OGLES2/effects.pfx
	cp "$(PVRSDKDIR)/Examples/Intermediate/ToneMapping/OGLES2/effects.pfx"	"$(ASSETDIR)/" 



