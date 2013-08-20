#--------------------------------------------------------------------------
# Name         : content.mak
# Title        : Makefile to build content files
#
# Copyright    : Copyright (C) by Imagination Technologies Limited.
#
# Description  : Makefile to wrap content files for examples in the PowerVR SDK
#
# Platform     :
#
#--------------------------------------------------------------------------

#############################################################################
## Variables
#############################################################################
FILEWRAP 	= ..\..\..\..\Utilities\Filewrap\Windows_x86_32\Filewrap.exe
CONTENTDIR = Content

#############################################################################
## Instructions
#############################################################################

RESOURCES = \
	$(CONTENTDIR)/FragShader.cpp \
	$(CONTENTDIR)/VertShader.cpp \
	$(CONTENTDIR)/Mask.cpp \
	$(CONTENTDIR)/Reflection.cpp \
	$(CONTENTDIR)/Thickness.cpp

all: resources
	
help:
	@echo Valid targets are:
	@echo resources, clean
	@echo FILEWRAP can be used to override the default path to the Filewrap utility.

clean:
	@for i in $(RESOURCES); do test -f $$i && rm -vf $$i || true; done

resources: $(RESOURCES)

$(CONTENTDIR):
	-mkdir $@

$(CONTENTDIR)/FragShader.cpp: $(CONTENTDIR)
	$(FILEWRAP)  -s  -o $@ FragShader.fsh

$(CONTENTDIR)/VertShader.cpp: $(CONTENTDIR)
	$(FILEWRAP)  -s  -o $@ VertShader.vsh

$(CONTENTDIR)/Mask.cpp: $(CONTENTDIR)
	$(FILEWRAP)  -o $@ Mask.pod

$(CONTENTDIR)/Reflection.cpp: $(CONTENTDIR)
	$(FILEWRAP)  -o $@ Reflection.pvr

$(CONTENTDIR)/Thickness.cpp: $(CONTENTDIR)
	$(FILEWRAP)  -o $@ Thickness.pvr

############################################################################
# End of file (content.mak)
############################################################################
