#
# File			Makefile
# Title			Example makefile
#
# Copyright		Copyright (C) Imagination Technologies Limited.
#

.PHONY: clean

SDKDIR  = ../../../../../..
OUTNAME = OGLES2ParallaxBumpMap
APIS    = OGLES2
DEPENDS = PVRSHELL PVRTOOLS

OBJECTS +=	\
           OGLES2ParallaxBumpMap.o	\
           FragShader.o	\
           VertShader.o	\
           Box.o	\
           base_COLOR.o	\
           base_NRM.o	\
           base_DISP.o	\
           base_SPEC.o

include $(SDKDIR)/Builds/Linux/make_example.mak

../../Content/FragShader.cpp ../../Content/VertShader.cpp ../../Content/Box.cpp ../../Content/base_COLOR.cpp ../../Content/base_NRM.cpp ../../Content/base_DISP.cpp ../../Content/base_SPEC.cpp: wrap_content_files 

