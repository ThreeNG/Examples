LOCAL_PATH := $(realpath $(call my-dir)/../../../../../../../..)
PVRSDKDIR := $(LOCAL_PATH)

ASSETDIR := $(PVRSDKDIR)/Examples/Beginner/06_IntroducingPrint3D/OGLES2/Build/Android/assets

include $(CLEAR_VARS)

LOCAL_MODULE    := OGLES2IntroducingPrint3D

### Add all source file names to be included in lib separated by a whitespace
LOCAL_SRC_FILES := \
				   Examples/Beginner/06_IntroducingPrint3D/OGLES2/OGLES2IntroducingPrint3D.cpp \
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

$(PVRSDKDIR)/Examples/Beginner/06_IntroducingPrint3D/OGLES2/OGLES2IntroducingPrint3D.cpp:  \
								$(ASSETDIR)/Text.txt \
								$(ASSETDIR)/arial_36.pvr \
								$(ASSETDIR)/starjout_60.pvr \
								$(ASSETDIR)/title_36.pvr \
								$(ASSETDIR)/title_46.pvr \
								$(ASSETDIR)/title_56.pvr

$(ASSETDIR):
	-mkdir $(ASSETDIR)

$(ASSETDIR)/Text.txt: $(ASSETDIR) $(PVRSDKDIR)/Examples/Beginner/06_IntroducingPrint3D/OGLES2/Text.txt
	cp "$(PVRSDKDIR)/Examples/Beginner/06_IntroducingPrint3D/OGLES2/Text.txt"	"$(ASSETDIR)/" 

$(ASSETDIR)/arial_36.pvr: $(ASSETDIR) $(PVRSDKDIR)/Examples/Beginner/06_IntroducingPrint3D/OGLES2/arial_36.pvr
	cp "$(PVRSDKDIR)/Examples/Beginner/06_IntroducingPrint3D/OGLES2/arial_36.pvr"	"$(ASSETDIR)/" 

$(ASSETDIR)/starjout_60.pvr: $(ASSETDIR) $(PVRSDKDIR)/Examples/Beginner/06_IntroducingPrint3D/OGLES2/starjout_60.pvr
	cp "$(PVRSDKDIR)/Examples/Beginner/06_IntroducingPrint3D/OGLES2/starjout_60.pvr"	"$(ASSETDIR)/" 

$(ASSETDIR)/title_36.pvr: $(ASSETDIR) $(PVRSDKDIR)/Examples/Beginner/06_IntroducingPrint3D/OGLES2/title_36.pvr
	cp "$(PVRSDKDIR)/Examples/Beginner/06_IntroducingPrint3D/OGLES2/title_36.pvr"	"$(ASSETDIR)/" 

$(ASSETDIR)/title_46.pvr: $(ASSETDIR) $(PVRSDKDIR)/Examples/Beginner/06_IntroducingPrint3D/OGLES2/title_46.pvr
	cp "$(PVRSDKDIR)/Examples/Beginner/06_IntroducingPrint3D/OGLES2/title_46.pvr"	"$(ASSETDIR)/" 

$(ASSETDIR)/title_56.pvr: $(ASSETDIR) $(PVRSDKDIR)/Examples/Beginner/06_IntroducingPrint3D/OGLES2/title_56.pvr
	cp "$(PVRSDKDIR)/Examples/Beginner/06_IntroducingPrint3D/OGLES2/title_56.pvr"	"$(ASSETDIR)/" 



