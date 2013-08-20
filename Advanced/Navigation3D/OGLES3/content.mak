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
	$(CONTENTDIR)/UIVertShader.cpp \
	$(CONTENTDIR)/UIFragShader.cpp \
	$(CONTENTDIR)/SkyboxFragShader.cpp \
	$(CONTENTDIR)/SkyboxVertShader.cpp \
	$(CONTENTDIR)/BuildingFragShader.cpp \
	$(CONTENTDIR)/BuildingVertShader.cpp \
	$(CONTENTDIR)/FullscreenVertShader.cpp \
	$(CONTENTDIR)/FullscreenFragShader.cpp \
	$(CONTENTDIR)/ShadowVolVertShader.cpp \
	$(CONTENTDIR)/ShadowVolFragShader.cpp \
	$(CONTENTDIR)/modelindex.cpp \
	$(CONTENTDIR)/occlusiondata.cpp \
	$(CONTENTDIR)/cameratrack.cpp \
	$(CONTENTDIR)/UIElements.cpp \
	$(CONTENTDIR)/Skybox.cpp \
	$(CONTENTDIR)/CM_US_IL_CHICAGO_008_015_L.DAE.cpp \
	$(CONTENTDIR)/CM_US_IL_CHICAGO_008_016_L.DAE.cpp \
	$(CONTENTDIR)/CM_US_IL_CHICAGO_009_014_L.DAE.cpp \
	$(CONTENTDIR)/CM_US_IL_CHICAGO_009_015_L.DAE.cpp \
	$(CONTENTDIR)/CM_US_IL_CHICAGO_009_016_L.DAE.cpp \
	$(CONTENTDIR)/CM_US_IL_CHICAGO_009_017_L.DAE.cpp \
	$(CONTENTDIR)/CM_US_IL_CHICAGO_009_018_L.DAE.cpp \
	$(CONTENTDIR)/CM_US_IL_CHICAGO_010_014_L.DAE.cpp \
	$(CONTENTDIR)/CM_US_IL_CHICAGO_010_015_L.DAE.cpp \
	$(CONTENTDIR)/CM_US_IL_CHICAGO_010_015_H.DAE.cpp \
	$(CONTENTDIR)/CM_US_IL_CHICAGO_010_016_H.DAE.cpp \
	$(CONTENTDIR)/CM_US_IL_CHICAGO_010_016_L.DAE.cpp \
	$(CONTENTDIR)/CM_US_IL_CHICAGO_010_017_L.DAE.cpp \
	$(CONTENTDIR)/CM_US_IL_CHICAGO_010_017_H.DAE.cpp \
	$(CONTENTDIR)/CM_US_IL_CHICAGO_010_018_L.DAE.cpp \
	$(CONTENTDIR)/CM_US_IL_CHICAGO_011_013_L.DAE.cpp \
	$(CONTENTDIR)/CM_US_IL_CHICAGO_011_014_L.DAE.cpp \
	$(CONTENTDIR)/CM_US_IL_CHICAGO_011_015_L.DAE.cpp \
	$(CONTENTDIR)/CM_US_IL_CHICAGO_011_015_H.DAE.cpp \
	$(CONTENTDIR)/CM_US_IL_CHICAGO_011_016_H.DAE.cpp \
	$(CONTENTDIR)/CM_US_IL_CHICAGO_011_016_L.DAE.cpp \
	$(CONTENTDIR)/CM_US_IL_CHICAGO_011_017_L.DAE.cpp \
	$(CONTENTDIR)/CM_US_IL_CHICAGO_011_017_H.DAE.cpp \
	$(CONTENTDIR)/CM_US_IL_CHICAGO_011_018_L.DAE.cpp \
	$(CONTENTDIR)/CM_US_IL_CHICAGO_012_014_L.DAE.cpp \
	$(CONTENTDIR)/CM_US_IL_CHICAGO_012_015_L.DAE.cpp \
	$(CONTENTDIR)/CM_US_IL_CHICAGO_012_016_L.DAE.cpp \
	$(CONTENTDIR)/CM_US_IL_CHICAGO_012_017_L.DAE.cpp \
	$(CONTENTDIR)/CM_US_IL_CHICAGO_013_015_L.DAE.cpp \
	$(CONTENTDIR)/CM_US_IL_CHICAGO_013_016_L.DAE.cpp \
	$(CONTENTDIR)/006_RUS.PNG.cpp \
	$(CONTENTDIR)/007_RUG.PNG.cpp \
	$(CONTENTDIR)/008_RUG.PNG.cpp \
	$(CONTENTDIR)/009_RUG.PNG.cpp \
	$(CONTENTDIR)/011_GIE.PNG.cpp \
	$(CONTENTDIR)/012_RSR.PNG.cpp \
	$(CONTENTDIR)/016_FOC.PNG.cpp \
	$(CONTENTDIR)/016_RTR.PNG.cpp \
	$(CONTENTDIR)/017_FOD.PNG.cpp \
	$(CONTENTDIR)/018_FOD.PNG.cpp \
	$(CONTENTDIR)/019_FOC.PNG.cpp \
	$(CONTENTDIR)/019_GOC.PNG.cpp \
	$(CONTENTDIR)/019_RZG.PNG.cpp \
	$(CONTENTDIR)/020_FOC.PNG.cpp \
	$(CONTENTDIR)/021_FOC.PNG.cpp \
	$(CONTENTDIR)/022_FOC.PNG.cpp \
	$(CONTENTDIR)/022_RUG.PNG.cpp \
	$(CONTENTDIR)/023_FOB.PNG.cpp \
	$(CONTENTDIR)/023_RUG.PNG.cpp \
	$(CONTENTDIR)/024_FOB.PNG.cpp \
	$(CONTENTDIR)/025_FOC.PNG.cpp \
	$(CONTENTDIR)/025_RUW.PNG.cpp \
	$(CONTENTDIR)/026_FOD.PNG.cpp \
	$(CONTENTDIR)/026_RUW.PNG.cpp \
	$(CONTENTDIR)/027_FOD.PNG.cpp \
	$(CONTENTDIR)/027_RUW.PNG.cpp \
	$(CONTENTDIR)/028_GOF.PNG.cpp \
	$(CONTENTDIR)/029_GCC.PNG.cpp \
	$(CONTENTDIR)/030_GOC.PNG.cpp \
	$(CONTENTDIR)/031_GOD.PNG.cpp \
	$(CONTENTDIR)/032_FOC.PNG.cpp \
	$(CONTENTDIR)/032_GOC.PNG.cpp \
	$(CONTENTDIR)/033_FOA.PNG.cpp \
	$(CONTENTDIR)/033_GOA.PNG.cpp \
	$(CONTENTDIR)/034_FOC.PNG.cpp \
	$(CONTENTDIR)/034_GOC.PNG.cpp \
	$(CONTENTDIR)/035_FOC.PNG.cpp \
	$(CONTENTDIR)/035_GOC.PNG.cpp \
	$(CONTENTDIR)/036_FOC.PNG.cpp \
	$(CONTENTDIR)/036_GOC.PNG.cpp \
	$(CONTENTDIR)/037_FOC.PNG.cpp \
	$(CONTENTDIR)/037_GOC.PNG.cpp \
	$(CONTENTDIR)/041_FRB.PNG.cpp \
	$(CONTENTDIR)/041_GRB.PNG.cpp \
	$(CONTENTDIR)/044_GRC.PNG.cpp \
	$(CONTENTDIR)/046_GRC.PNG.cpp \
	$(CONTENTDIR)/054_GRC.PNG.cpp \
	$(CONTENTDIR)/055_GRC.PNG.cpp \
	$(CONTENTDIR)/056_GRC.PNG.cpp \
	$(CONTENTDIR)/059_FRC.PNG.cpp \
	$(CONTENTDIR)/060_FRC.PNG.cpp \
	$(CONTENTDIR)/061_FRD.PNG.cpp \
	$(CONTENTDIR)/063_GRC.PNG.cpp \
	$(CONTENTDIR)/064_GRC.PNG.cpp \
	$(CONTENTDIR)/066_FCB.PNG.cpp \
	$(CONTENTDIR)/066_GCB.PNG.cpp \
	$(CONTENTDIR)/067_FCC.PNG.cpp \
	$(CONTENTDIR)/067_GCC.PNG.cpp \
	$(CONTENTDIR)/068_GCD.PNG.cpp \
	$(CONTENTDIR)/069_FCA.PNG.cpp \
	$(CONTENTDIR)/069_GCA.PNG.cpp \
	$(CONTENTDIR)/070_GOD.PNG.cpp \
	$(CONTENTDIR)/071_FRC.PNG.cpp \
	$(CONTENTDIR)/072_FRC.PNG.cpp \
	$(CONTENTDIR)/073_FRC.PNG.cpp \
	$(CONTENTDIR)/074_FRC.PNG.cpp \
	$(CONTENTDIR)/075_FRC.PNG.cpp \
	$(CONTENTDIR)/076_FRC.PNG.cpp \
	$(CONTENTDIR)/077_FRC.PNG.cpp \
	$(CONTENTDIR)/080_GCB.PNG.cpp \
	$(CONTENTDIR)/082_FCD.PNG.cpp \
	$(CONTENTDIR)/083_FRC.PNG.cpp \
	$(CONTENTDIR)/085_GRC.PNG.cpp \
	$(CONTENTDIR)/086_FOF.PNG.cpp \
	$(CONTENTDIR)/086_GOF.PNG.cpp \
	$(CONTENTDIR)/087_FCA.PNG.cpp \
	$(CONTENTDIR)/087_GCA.PNG.cpp \
	$(CONTENTDIR)/087_GCC.PNG.cpp \
	$(CONTENTDIR)/088_FRC.PNG.cpp \
	$(CONTENTDIR)/089_FRC.PNG.cpp \
	$(CONTENTDIR)/092_GCA.PNG.cpp \
	$(CONTENTDIR)/094_FOD.PNG.cpp \
	$(CONTENTDIR)/095_FOD.PNG.cpp \
	$(CONTENTDIR)/US_IL_13443_CHICAGO_35EAST_L.PNG.cpp \
	$(CONTENTDIR)/US_IL_13444_CHICAGO_LEOBURNETT_L.PNG.cpp \
	$(CONTENTDIR)/US_IL_13447_CHICAGO_REIDMURDOCH_L.PNG.cpp \
	$(CONTENTDIR)/US_IL_13448_CHICAGO_CARBIDE_L.PNG.cpp \
	$(CONTENTDIR)/US_IL_13449_CHICAGO_CROWNFOUNTAIN_L.PNG.cpp \
	$(CONTENTDIR)/US_IL_13451_CHICAGO_CULTURAL_L.PNG.cpp \
	$(CONTENTDIR)/US_IL_13453_CHICAGO_PRUDENTIAL_PART1_L.PNG.cpp \
	$(CONTENTDIR)/US_IL_13454_CHICAGO_UNITED_L.PNG.cpp \
	$(CONTENTDIR)/US_IL_13456_CHICAGO_SEVENTEENTH_L.PNG.cpp \
	$(CONTENTDIR)/US_IL_13458_CHICAGO_SMURFIT_L.PNG.cpp \
	$(CONTENTDIR)/US_IL_13459_CHICAGO_LASALLE_L.PNG.cpp \
	$(CONTENTDIR)/US_IL_13460_CHICAGO_TRUMP_L.PNG.cpp \
	$(CONTENTDIR)/US_IL_13461_CHICAGO_UNITRIN_L.PNG.cpp \
	$(CONTENTDIR)/US_IL_13462_CHICAGO_WILLOUGHBY_L.PNG.cpp \
	$(CONTENTDIR)/US_IL_13490_CHICAGO_PRUDENTIAL_PART2_L.PNG.cpp \
	$(CONTENTDIR)/US_IL_CHICAGO_AONCENTER_L.PNG.cpp \
	$(CONTENTDIR)/US_IL_CHICAGO_ARTINSTITUTE_L.PNG.cpp \
	$(CONTENTDIR)/US_IL_CHICAGO_BOARDOFTHETRADE_L.PNG.cpp \
	$(CONTENTDIR)/US_IL_CHICAGO_BOEINGBUILDING_L.PNG.cpp \
	$(CONTENTDIR)/US_IL_CHICAGO_CHICAGOTHEATRE_L.PNG.cpp \
	$(CONTENTDIR)/US_IL_CHICAGO_CITYHALL_L.PNG.cpp \
	$(CONTENTDIR)/US_IL_CHICAGO_DALEY_L.PNG.cpp \
	$(CONTENTDIR)/US_IL_CHICAGO_HILTON_L.PNG.cpp \
	$(CONTENTDIR)/US_IL_CHICAGO_JAMESTHOMPSON_L.PNG.cpp \
	$(CONTENTDIR)/US_IL_CHICAGO_LIBRARY_L.PNG.cpp \
	$(CONTENTDIR)/US_IL_CHICAGO_MILLENIUMPARK1_L.PNG.cpp \
	$(CONTENTDIR)/US_IL_CHICAGO_MILLENIUMPARK2_L.PNG.cpp \
	$(CONTENTDIR)/US_IL_CHICAGO_MMART_L.PNG.cpp \
	$(CONTENTDIR)/US_IL_CHICAGO_OGILVIE_L.PNG.cpp \
	$(CONTENTDIR)/US_IL_CHICAGO_SEARSTOWER_L.PNG.cpp \
	$(CONTENTDIR)/US_IL_CHICAGO_UNIONSTATION_L.PNG.cpp \
	$(CONTENTDIR)/US_L_CONCRETE-COLOUR.PNG.cpp \
	$(CONTENTDIR)/US_L_CONCRETE-DETAIL.PNG.cpp \
	$(CONTENTDIR)/US_L_PARK-COLOUR.PNG.cpp \
	$(CONTENTDIR)/US_L_WATER-COLOUR.PNG.cpp \
	$(CONTENTDIR)/US_R_CONCRETE.PNG.cpp \
	$(CONTENTDIR)/US_R_HIGHWAY-SOLID.PNG.cpp \
	$(CONTENTDIR)/US_R_STREET-DASHED.PNG.cpp \
	$(CONTENTDIR)/US_R_STREET-INNER-SHOULDER.PNG.cpp \
	$(CONTENTDIR)/US_R_STREET-LANE-FILLER.PNG.cpp \
	$(CONTENTDIR)/US_R_STREET-SOLID.PNG.cpp \
	$(CONTENTDIR)/US_R_STREET-UNMARKED.PNG.cpp \
	$(CONTENTDIR)/US_R_WALKWAY-SOLID.PNG.cpp \
	$(CONTENTDIR)/US_R_WALKWAY-UNMARKED.PNG.cpp \
	$(CONTENTDIR)/US_T_RAILROAD.PNG.cpp

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

$(CONTENTDIR)/UIVertShader.cpp: $(CONTENTDIR)
	$(FILEWRAP)  -s  -o $@ UIVertShader.vsh

$(CONTENTDIR)/UIFragShader.cpp: $(CONTENTDIR)
	$(FILEWRAP)  -s  -o $@ UIFragShader.fsh

$(CONTENTDIR)/SkyboxFragShader.cpp: $(CONTENTDIR)
	$(FILEWRAP)  -s  -o $@ SkyboxFragShader.fsh

$(CONTENTDIR)/SkyboxVertShader.cpp: $(CONTENTDIR)
	$(FILEWRAP)  -s  -o $@ SkyboxVertShader.vsh

$(CONTENTDIR)/BuildingFragShader.cpp: $(CONTENTDIR)
	$(FILEWRAP)  -s  -o $@ BuildingFragShader.fsh

$(CONTENTDIR)/BuildingVertShader.cpp: $(CONTENTDIR)
	$(FILEWRAP)  -s  -o $@ BuildingVertShader.vsh

$(CONTENTDIR)/FullscreenVertShader.cpp: $(CONTENTDIR)
	$(FILEWRAP)  -s  -o $@ FullscreenVertShader.vsh

$(CONTENTDIR)/FullscreenFragShader.cpp: $(CONTENTDIR)
	$(FILEWRAP)  -s  -o $@ FullscreenFragShader.fsh

$(CONTENTDIR)/ShadowVolVertShader.cpp: $(CONTENTDIR)
	$(FILEWRAP)  -s  -o $@ ShadowVolVertShader.vsh

$(CONTENTDIR)/ShadowVolFragShader.cpp: $(CONTENTDIR)
	$(FILEWRAP)  -s  -o $@ ShadowVolFragShader.fsh

$(CONTENTDIR)/modelindex.cpp: $(CONTENTDIR)
	$(FILEWRAP)  -o $@ modelindex.nav

$(CONTENTDIR)/occlusiondata.cpp: $(CONTENTDIR)
	$(FILEWRAP)  -o $@ occlusiondata.nav

$(CONTENTDIR)/cameratrack.cpp: $(CONTENTDIR)
	$(FILEWRAP)  -o $@ cameratrack.pod

$(CONTENTDIR)/UIElements.cpp: $(CONTENTDIR)
	$(FILEWRAP)  -o $@ UIElements.pvr

$(CONTENTDIR)/Skybox.cpp: $(CONTENTDIR)
	$(FILEWRAP)  -o $@ Skybox.pvr

$(CONTENTDIR)/CM_US_IL_CHICAGO_008_015_L.DAE.cpp: $(CONTENTDIR)
	$(FILEWRAP)  -o $@ CM_US_IL_CHICAGO_008_015_L.DAE.pod

$(CONTENTDIR)/CM_US_IL_CHICAGO_008_016_L.DAE.cpp: $(CONTENTDIR)
	$(FILEWRAP)  -o $@ CM_US_IL_CHICAGO_008_016_L.DAE.pod

$(CONTENTDIR)/CM_US_IL_CHICAGO_009_014_L.DAE.cpp: $(CONTENTDIR)
	$(FILEWRAP)  -o $@ CM_US_IL_CHICAGO_009_014_L.DAE.pod

$(CONTENTDIR)/CM_US_IL_CHICAGO_009_015_L.DAE.cpp: $(CONTENTDIR)
	$(FILEWRAP)  -o $@ CM_US_IL_CHICAGO_009_015_L.DAE.pod

$(CONTENTDIR)/CM_US_IL_CHICAGO_009_016_L.DAE.cpp: $(CONTENTDIR)
	$(FILEWRAP)  -o $@ CM_US_IL_CHICAGO_009_016_L.DAE.pod

$(CONTENTDIR)/CM_US_IL_CHICAGO_009_017_L.DAE.cpp: $(CONTENTDIR)
	$(FILEWRAP)  -o $@ CM_US_IL_CHICAGO_009_017_L.DAE.pod

$(CONTENTDIR)/CM_US_IL_CHICAGO_009_018_L.DAE.cpp: $(CONTENTDIR)
	$(FILEWRAP)  -o $@ CM_US_IL_CHICAGO_009_018_L.DAE.pod

$(CONTENTDIR)/CM_US_IL_CHICAGO_010_014_L.DAE.cpp: $(CONTENTDIR)
	$(FILEWRAP)  -o $@ CM_US_IL_CHICAGO_010_014_L.DAE.pod

$(CONTENTDIR)/CM_US_IL_CHICAGO_010_015_L.DAE.cpp: $(CONTENTDIR)
	$(FILEWRAP)  -o $@ CM_US_IL_CHICAGO_010_015_L.DAE.pod

$(CONTENTDIR)/CM_US_IL_CHICAGO_010_015_H.DAE.cpp: $(CONTENTDIR)
	$(FILEWRAP)  -o $@ CM_US_IL_CHICAGO_010_015_H.DAE.pod

$(CONTENTDIR)/CM_US_IL_CHICAGO_010_016_H.DAE.cpp: $(CONTENTDIR)
	$(FILEWRAP)  -o $@ CM_US_IL_CHICAGO_010_016_H.DAE.pod

$(CONTENTDIR)/CM_US_IL_CHICAGO_010_016_L.DAE.cpp: $(CONTENTDIR)
	$(FILEWRAP)  -o $@ CM_US_IL_CHICAGO_010_016_L.DAE.pod

$(CONTENTDIR)/CM_US_IL_CHICAGO_010_017_L.DAE.cpp: $(CONTENTDIR)
	$(FILEWRAP)  -o $@ CM_US_IL_CHICAGO_010_017_L.DAE.pod

$(CONTENTDIR)/CM_US_IL_CHICAGO_010_017_H.DAE.cpp: $(CONTENTDIR)
	$(FILEWRAP)  -o $@ CM_US_IL_CHICAGO_010_017_H.DAE.pod

$(CONTENTDIR)/CM_US_IL_CHICAGO_010_018_L.DAE.cpp: $(CONTENTDIR)
	$(FILEWRAP)  -o $@ CM_US_IL_CHICAGO_010_018_L.DAE.pod

$(CONTENTDIR)/CM_US_IL_CHICAGO_011_013_L.DAE.cpp: $(CONTENTDIR)
	$(FILEWRAP)  -o $@ CM_US_IL_CHICAGO_011_013_L.DAE.pod

$(CONTENTDIR)/CM_US_IL_CHICAGO_011_014_L.DAE.cpp: $(CONTENTDIR)
	$(FILEWRAP)  -o $@ CM_US_IL_CHICAGO_011_014_L.DAE.pod

$(CONTENTDIR)/CM_US_IL_CHICAGO_011_015_L.DAE.cpp: $(CONTENTDIR)
	$(FILEWRAP)  -o $@ CM_US_IL_CHICAGO_011_015_L.DAE.pod

$(CONTENTDIR)/CM_US_IL_CHICAGO_011_015_H.DAE.cpp: $(CONTENTDIR)
	$(FILEWRAP)  -o $@ CM_US_IL_CHICAGO_011_015_H.DAE.pod

$(CONTENTDIR)/CM_US_IL_CHICAGO_011_016_H.DAE.cpp: $(CONTENTDIR)
	$(FILEWRAP)  -o $@ CM_US_IL_CHICAGO_011_016_H.DAE.pod

$(CONTENTDIR)/CM_US_IL_CHICAGO_011_016_L.DAE.cpp: $(CONTENTDIR)
	$(FILEWRAP)  -o $@ CM_US_IL_CHICAGO_011_016_L.DAE.pod

$(CONTENTDIR)/CM_US_IL_CHICAGO_011_017_L.DAE.cpp: $(CONTENTDIR)
	$(FILEWRAP)  -o $@ CM_US_IL_CHICAGO_011_017_L.DAE.pod

$(CONTENTDIR)/CM_US_IL_CHICAGO_011_017_H.DAE.cpp: $(CONTENTDIR)
	$(FILEWRAP)  -o $@ CM_US_IL_CHICAGO_011_017_H.DAE.pod

$(CONTENTDIR)/CM_US_IL_CHICAGO_011_018_L.DAE.cpp: $(CONTENTDIR)
	$(FILEWRAP)  -o $@ CM_US_IL_CHICAGO_011_018_L.DAE.pod

$(CONTENTDIR)/CM_US_IL_CHICAGO_012_014_L.DAE.cpp: $(CONTENTDIR)
	$(FILEWRAP)  -o $@ CM_US_IL_CHICAGO_012_014_L.DAE.pod

$(CONTENTDIR)/CM_US_IL_CHICAGO_012_015_L.DAE.cpp: $(CONTENTDIR)
	$(FILEWRAP)  -o $@ CM_US_IL_CHICAGO_012_015_L.DAE.pod

$(CONTENTDIR)/CM_US_IL_CHICAGO_012_016_L.DAE.cpp: $(CONTENTDIR)
	$(FILEWRAP)  -o $@ CM_US_IL_CHICAGO_012_016_L.DAE.pod

$(CONTENTDIR)/CM_US_IL_CHICAGO_012_017_L.DAE.cpp: $(CONTENTDIR)
	$(FILEWRAP)  -o $@ CM_US_IL_CHICAGO_012_017_L.DAE.pod

$(CONTENTDIR)/CM_US_IL_CHICAGO_013_015_L.DAE.cpp: $(CONTENTDIR)
	$(FILEWRAP)  -o $@ CM_US_IL_CHICAGO_013_015_L.DAE.pod

$(CONTENTDIR)/CM_US_IL_CHICAGO_013_016_L.DAE.cpp: $(CONTENTDIR)
	$(FILEWRAP)  -o $@ CM_US_IL_CHICAGO_013_016_L.DAE.pod

$(CONTENTDIR)/006_RUS.PNG.cpp: $(CONTENTDIR)
	$(FILEWRAP)  -o $@ 006_RUS.PNG.pvr

$(CONTENTDIR)/007_RUG.PNG.cpp: $(CONTENTDIR)
	$(FILEWRAP)  -o $@ 007_RUG.PNG.pvr

$(CONTENTDIR)/008_RUG.PNG.cpp: $(CONTENTDIR)
	$(FILEWRAP)  -o $@ 008_RUG.PNG.pvr

$(CONTENTDIR)/009_RUG.PNG.cpp: $(CONTENTDIR)
	$(FILEWRAP)  -o $@ 009_RUG.PNG.pvr

$(CONTENTDIR)/011_GIE.PNG.cpp: $(CONTENTDIR)
	$(FILEWRAP)  -o $@ 011_GIE.PNG.pvr

$(CONTENTDIR)/012_RSR.PNG.cpp: $(CONTENTDIR)
	$(FILEWRAP)  -o $@ 012_RSR.PNG.pvr

$(CONTENTDIR)/016_FOC.PNG.cpp: $(CONTENTDIR)
	$(FILEWRAP)  -o $@ 016_FOC.PNG.pvr

$(CONTENTDIR)/016_RTR.PNG.cpp: $(CONTENTDIR)
	$(FILEWRAP)  -o $@ 016_RTR.PNG.pvr

$(CONTENTDIR)/017_FOD.PNG.cpp: $(CONTENTDIR)
	$(FILEWRAP)  -o $@ 017_FOD.PNG.pvr

$(CONTENTDIR)/018_FOD.PNG.cpp: $(CONTENTDIR)
	$(FILEWRAP)  -o $@ 018_FOD.PNG.pvr

$(CONTENTDIR)/019_FOC.PNG.cpp: $(CONTENTDIR)
	$(FILEWRAP)  -o $@ 019_FOC.PNG.pvr

$(CONTENTDIR)/019_GOC.PNG.cpp: $(CONTENTDIR)
	$(FILEWRAP)  -o $@ 019_GOC.PNG.pvr

$(CONTENTDIR)/019_RZG.PNG.cpp: $(CONTENTDIR)
	$(FILEWRAP)  -o $@ 019_RZG.PNG.pvr

$(CONTENTDIR)/020_FOC.PNG.cpp: $(CONTENTDIR)
	$(FILEWRAP)  -o $@ 020_FOC.PNG.pvr

$(CONTENTDIR)/021_FOC.PNG.cpp: $(CONTENTDIR)
	$(FILEWRAP)  -o $@ 021_FOC.PNG.pvr

$(CONTENTDIR)/022_FOC.PNG.cpp: $(CONTENTDIR)
	$(FILEWRAP)  -o $@ 022_FOC.PNG.pvr

$(CONTENTDIR)/022_RUG.PNG.cpp: $(CONTENTDIR)
	$(FILEWRAP)  -o $@ 022_RUG.PNG.pvr

$(CONTENTDIR)/023_FOB.PNG.cpp: $(CONTENTDIR)
	$(FILEWRAP)  -o $@ 023_FOB.PNG.pvr

$(CONTENTDIR)/023_RUG.PNG.cpp: $(CONTENTDIR)
	$(FILEWRAP)  -o $@ 023_RUG.PNG.pvr

$(CONTENTDIR)/024_FOB.PNG.cpp: $(CONTENTDIR)
	$(FILEWRAP)  -o $@ 024_FOB.PNG.pvr

$(CONTENTDIR)/025_FOC.PNG.cpp: $(CONTENTDIR)
	$(FILEWRAP)  -o $@ 025_FOC.PNG.pvr

$(CONTENTDIR)/025_RUW.PNG.cpp: $(CONTENTDIR)
	$(FILEWRAP)  -o $@ 025_RUW.PNG.pvr

$(CONTENTDIR)/026_FOD.PNG.cpp: $(CONTENTDIR)
	$(FILEWRAP)  -o $@ 026_FOD.PNG.pvr

$(CONTENTDIR)/026_RUW.PNG.cpp: $(CONTENTDIR)
	$(FILEWRAP)  -o $@ 026_RUW.PNG.pvr

$(CONTENTDIR)/027_FOD.PNG.cpp: $(CONTENTDIR)
	$(FILEWRAP)  -o $@ 027_FOD.PNG.pvr

$(CONTENTDIR)/027_RUW.PNG.cpp: $(CONTENTDIR)
	$(FILEWRAP)  -o $@ 027_RUW.PNG.pvr

$(CONTENTDIR)/028_GOF.PNG.cpp: $(CONTENTDIR)
	$(FILEWRAP)  -o $@ 028_GOF.PNG.pvr

$(CONTENTDIR)/029_GCC.PNG.cpp: $(CONTENTDIR)
	$(FILEWRAP)  -o $@ 029_GCC.PNG.pvr

$(CONTENTDIR)/030_GOC.PNG.cpp: $(CONTENTDIR)
	$(FILEWRAP)  -o $@ 030_GOC.PNG.pvr

$(CONTENTDIR)/031_GOD.PNG.cpp: $(CONTENTDIR)
	$(FILEWRAP)  -o $@ 031_GOD.PNG.pvr

$(CONTENTDIR)/032_FOC.PNG.cpp: $(CONTENTDIR)
	$(FILEWRAP)  -o $@ 032_FOC.PNG.pvr

$(CONTENTDIR)/032_GOC.PNG.cpp: $(CONTENTDIR)
	$(FILEWRAP)  -o $@ 032_GOC.PNG.pvr

$(CONTENTDIR)/033_FOA.PNG.cpp: $(CONTENTDIR)
	$(FILEWRAP)  -o $@ 033_FOA.PNG.pvr

$(CONTENTDIR)/033_GOA.PNG.cpp: $(CONTENTDIR)
	$(FILEWRAP)  -o $@ 033_GOA.PNG.pvr

$(CONTENTDIR)/034_FOC.PNG.cpp: $(CONTENTDIR)
	$(FILEWRAP)  -o $@ 034_FOC.PNG.pvr

$(CONTENTDIR)/034_GOC.PNG.cpp: $(CONTENTDIR)
	$(FILEWRAP)  -o $@ 034_GOC.PNG.pvr

$(CONTENTDIR)/035_FOC.PNG.cpp: $(CONTENTDIR)
	$(FILEWRAP)  -o $@ 035_FOC.PNG.pvr

$(CONTENTDIR)/035_GOC.PNG.cpp: $(CONTENTDIR)
	$(FILEWRAP)  -o $@ 035_GOC.PNG.pvr

$(CONTENTDIR)/036_FOC.PNG.cpp: $(CONTENTDIR)
	$(FILEWRAP)  -o $@ 036_FOC.PNG.pvr

$(CONTENTDIR)/036_GOC.PNG.cpp: $(CONTENTDIR)
	$(FILEWRAP)  -o $@ 036_GOC.PNG.pvr

$(CONTENTDIR)/037_FOC.PNG.cpp: $(CONTENTDIR)
	$(FILEWRAP)  -o $@ 037_FOC.PNG.pvr

$(CONTENTDIR)/037_GOC.PNG.cpp: $(CONTENTDIR)
	$(FILEWRAP)  -o $@ 037_GOC.PNG.pvr

$(CONTENTDIR)/041_FRB.PNG.cpp: $(CONTENTDIR)
	$(FILEWRAP)  -o $@ 041_FRB.PNG.pvr

$(CONTENTDIR)/041_GRB.PNG.cpp: $(CONTENTDIR)
	$(FILEWRAP)  -o $@ 041_GRB.PNG.pvr

$(CONTENTDIR)/044_GRC.PNG.cpp: $(CONTENTDIR)
	$(FILEWRAP)  -o $@ 044_GRC.PNG.pvr

$(CONTENTDIR)/046_GRC.PNG.cpp: $(CONTENTDIR)
	$(FILEWRAP)  -o $@ 046_GRC.PNG.pvr

$(CONTENTDIR)/054_GRC.PNG.cpp: $(CONTENTDIR)
	$(FILEWRAP)  -o $@ 054_GRC.PNG.pvr

$(CONTENTDIR)/055_GRC.PNG.cpp: $(CONTENTDIR)
	$(FILEWRAP)  -o $@ 055_GRC.PNG.pvr

$(CONTENTDIR)/056_GRC.PNG.cpp: $(CONTENTDIR)
	$(FILEWRAP)  -o $@ 056_GRC.PNG.pvr

$(CONTENTDIR)/059_FRC.PNG.cpp: $(CONTENTDIR)
	$(FILEWRAP)  -o $@ 059_FRC.PNG.pvr

$(CONTENTDIR)/060_FRC.PNG.cpp: $(CONTENTDIR)
	$(FILEWRAP)  -o $@ 060_FRC.PNG.pvr

$(CONTENTDIR)/061_FRD.PNG.cpp: $(CONTENTDIR)
	$(FILEWRAP)  -o $@ 061_FRD.PNG.pvr

$(CONTENTDIR)/063_GRC.PNG.cpp: $(CONTENTDIR)
	$(FILEWRAP)  -o $@ 063_GRC.PNG.pvr

$(CONTENTDIR)/064_GRC.PNG.cpp: $(CONTENTDIR)
	$(FILEWRAP)  -o $@ 064_GRC.PNG.pvr

$(CONTENTDIR)/066_FCB.PNG.cpp: $(CONTENTDIR)
	$(FILEWRAP)  -o $@ 066_FCB.PNG.pvr

$(CONTENTDIR)/066_GCB.PNG.cpp: $(CONTENTDIR)
	$(FILEWRAP)  -o $@ 066_GCB.PNG.pvr

$(CONTENTDIR)/067_FCC.PNG.cpp: $(CONTENTDIR)
	$(FILEWRAP)  -o $@ 067_FCC.PNG.pvr

$(CONTENTDIR)/067_GCC.PNG.cpp: $(CONTENTDIR)
	$(FILEWRAP)  -o $@ 067_GCC.PNG.pvr

$(CONTENTDIR)/068_GCD.PNG.cpp: $(CONTENTDIR)
	$(FILEWRAP)  -o $@ 068_GCD.PNG.pvr

$(CONTENTDIR)/069_FCA.PNG.cpp: $(CONTENTDIR)
	$(FILEWRAP)  -o $@ 069_FCA.PNG.pvr

$(CONTENTDIR)/069_GCA.PNG.cpp: $(CONTENTDIR)
	$(FILEWRAP)  -o $@ 069_GCA.PNG.pvr

$(CONTENTDIR)/070_GOD.PNG.cpp: $(CONTENTDIR)
	$(FILEWRAP)  -o $@ 070_GOD.PNG.pvr

$(CONTENTDIR)/071_FRC.PNG.cpp: $(CONTENTDIR)
	$(FILEWRAP)  -o $@ 071_FRC.PNG.pvr

$(CONTENTDIR)/072_FRC.PNG.cpp: $(CONTENTDIR)
	$(FILEWRAP)  -o $@ 072_FRC.PNG.pvr

$(CONTENTDIR)/073_FRC.PNG.cpp: $(CONTENTDIR)
	$(FILEWRAP)  -o $@ 073_FRC.PNG.pvr

$(CONTENTDIR)/074_FRC.PNG.cpp: $(CONTENTDIR)
	$(FILEWRAP)  -o $@ 074_FRC.PNG.pvr

$(CONTENTDIR)/075_FRC.PNG.cpp: $(CONTENTDIR)
	$(FILEWRAP)  -o $@ 075_FRC.PNG.pvr

$(CONTENTDIR)/076_FRC.PNG.cpp: $(CONTENTDIR)
	$(FILEWRAP)  -o $@ 076_FRC.PNG.pvr

$(CONTENTDIR)/077_FRC.PNG.cpp: $(CONTENTDIR)
	$(FILEWRAP)  -o $@ 077_FRC.PNG.pvr

$(CONTENTDIR)/080_GCB.PNG.cpp: $(CONTENTDIR)
	$(FILEWRAP)  -o $@ 080_GCB.PNG.pvr

$(CONTENTDIR)/082_FCD.PNG.cpp: $(CONTENTDIR)
	$(FILEWRAP)  -o $@ 082_FCD.PNG.pvr

$(CONTENTDIR)/083_FRC.PNG.cpp: $(CONTENTDIR)
	$(FILEWRAP)  -o $@ 083_FRC.PNG.pvr

$(CONTENTDIR)/085_GRC.PNG.cpp: $(CONTENTDIR)
	$(FILEWRAP)  -o $@ 085_GRC.PNG.pvr

$(CONTENTDIR)/086_FOF.PNG.cpp: $(CONTENTDIR)
	$(FILEWRAP)  -o $@ 086_FOF.PNG.pvr

$(CONTENTDIR)/086_GOF.PNG.cpp: $(CONTENTDIR)
	$(FILEWRAP)  -o $@ 086_GOF.PNG.pvr

$(CONTENTDIR)/087_FCA.PNG.cpp: $(CONTENTDIR)
	$(FILEWRAP)  -o $@ 087_FCA.PNG.pvr

$(CONTENTDIR)/087_GCA.PNG.cpp: $(CONTENTDIR)
	$(FILEWRAP)  -o $@ 087_GCA.PNG.pvr

$(CONTENTDIR)/087_GCC.PNG.cpp: $(CONTENTDIR)
	$(FILEWRAP)  -o $@ 087_GCC.PNG.pvr

$(CONTENTDIR)/088_FRC.PNG.cpp: $(CONTENTDIR)
	$(FILEWRAP)  -o $@ 088_FRC.PNG.pvr

$(CONTENTDIR)/089_FRC.PNG.cpp: $(CONTENTDIR)
	$(FILEWRAP)  -o $@ 089_FRC.PNG.pvr

$(CONTENTDIR)/092_GCA.PNG.cpp: $(CONTENTDIR)
	$(FILEWRAP)  -o $@ 092_GCA.PNG.pvr

$(CONTENTDIR)/094_FOD.PNG.cpp: $(CONTENTDIR)
	$(FILEWRAP)  -o $@ 094_FOD.PNG.pvr

$(CONTENTDIR)/095_FOD.PNG.cpp: $(CONTENTDIR)
	$(FILEWRAP)  -o $@ 095_FOD.PNG.pvr

$(CONTENTDIR)/US_IL_13443_CHICAGO_35EAST_L.PNG.cpp: $(CONTENTDIR)
	$(FILEWRAP)  -o $@ US_IL_13443_CHICAGO_35EAST_L.PNG.pvr

$(CONTENTDIR)/US_IL_13444_CHICAGO_LEOBURNETT_L.PNG.cpp: $(CONTENTDIR)
	$(FILEWRAP)  -o $@ US_IL_13444_CHICAGO_LEOBURNETT_L.PNG.pvr

$(CONTENTDIR)/US_IL_13447_CHICAGO_REIDMURDOCH_L.PNG.cpp: $(CONTENTDIR)
	$(FILEWRAP)  -o $@ US_IL_13447_CHICAGO_REIDMURDOCH_L.PNG.pvr

$(CONTENTDIR)/US_IL_13448_CHICAGO_CARBIDE_L.PNG.cpp: $(CONTENTDIR)
	$(FILEWRAP)  -o $@ US_IL_13448_CHICAGO_CARBIDE_L.PNG.pvr

$(CONTENTDIR)/US_IL_13449_CHICAGO_CROWNFOUNTAIN_L.PNG.cpp: $(CONTENTDIR)
	$(FILEWRAP)  -o $@ US_IL_13449_CHICAGO_CROWNFOUNTAIN_L.PNG.pvr

$(CONTENTDIR)/US_IL_13451_CHICAGO_CULTURAL_L.PNG.cpp: $(CONTENTDIR)
	$(FILEWRAP)  -o $@ US_IL_13451_CHICAGO_CULTURAL_L.PNG.pvr

$(CONTENTDIR)/US_IL_13453_CHICAGO_PRUDENTIAL_PART1_L.PNG.cpp: $(CONTENTDIR)
	$(FILEWRAP)  -o $@ US_IL_13453_CHICAGO_PRUDENTIAL_PART1_L.PNG.pvr

$(CONTENTDIR)/US_IL_13454_CHICAGO_UNITED_L.PNG.cpp: $(CONTENTDIR)
	$(FILEWRAP)  -o $@ US_IL_13454_CHICAGO_UNITED_L.PNG.pvr

$(CONTENTDIR)/US_IL_13456_CHICAGO_SEVENTEENTH_L.PNG.cpp: $(CONTENTDIR)
	$(FILEWRAP)  -o $@ US_IL_13456_CHICAGO_SEVENTEENTH_L.PNG.pvr

$(CONTENTDIR)/US_IL_13458_CHICAGO_SMURFIT_L.PNG.cpp: $(CONTENTDIR)
	$(FILEWRAP)  -o $@ US_IL_13458_CHICAGO_SMURFIT_L.PNG.pvr

$(CONTENTDIR)/US_IL_13459_CHICAGO_LASALLE_L.PNG.cpp: $(CONTENTDIR)
	$(FILEWRAP)  -o $@ US_IL_13459_CHICAGO_LASALLE_L.PNG.pvr

$(CONTENTDIR)/US_IL_13460_CHICAGO_TRUMP_L.PNG.cpp: $(CONTENTDIR)
	$(FILEWRAP)  -o $@ US_IL_13460_CHICAGO_TRUMP_L.PNG.pvr

$(CONTENTDIR)/US_IL_13461_CHICAGO_UNITRIN_L.PNG.cpp: $(CONTENTDIR)
	$(FILEWRAP)  -o $@ US_IL_13461_CHICAGO_UNITRIN_L.PNG.pvr

$(CONTENTDIR)/US_IL_13462_CHICAGO_WILLOUGHBY_L.PNG.cpp: $(CONTENTDIR)
	$(FILEWRAP)  -o $@ US_IL_13462_CHICAGO_WILLOUGHBY_L.PNG.pvr

$(CONTENTDIR)/US_IL_13490_CHICAGO_PRUDENTIAL_PART2_L.PNG.cpp: $(CONTENTDIR)
	$(FILEWRAP)  -o $@ US_IL_13490_CHICAGO_PRUDENTIAL_PART2_L.PNG.pvr

$(CONTENTDIR)/US_IL_CHICAGO_AONCENTER_L.PNG.cpp: $(CONTENTDIR)
	$(FILEWRAP)  -o $@ US_IL_CHICAGO_AONCENTER_L.PNG.pvr

$(CONTENTDIR)/US_IL_CHICAGO_ARTINSTITUTE_L.PNG.cpp: $(CONTENTDIR)
	$(FILEWRAP)  -o $@ US_IL_CHICAGO_ARTINSTITUTE_L.PNG.pvr

$(CONTENTDIR)/US_IL_CHICAGO_BOARDOFTHETRADE_L.PNG.cpp: $(CONTENTDIR)
	$(FILEWRAP)  -o $@ US_IL_CHICAGO_BOARDOFTHETRADE_L.PNG.pvr

$(CONTENTDIR)/US_IL_CHICAGO_BOEINGBUILDING_L.PNG.cpp: $(CONTENTDIR)
	$(FILEWRAP)  -o $@ US_IL_CHICAGO_BOEINGBUILDING_L.PNG.pvr

$(CONTENTDIR)/US_IL_CHICAGO_CHICAGOTHEATRE_L.PNG.cpp: $(CONTENTDIR)
	$(FILEWRAP)  -o $@ US_IL_CHICAGO_CHICAGOTHEATRE_L.PNG.pvr

$(CONTENTDIR)/US_IL_CHICAGO_CITYHALL_L.PNG.cpp: $(CONTENTDIR)
	$(FILEWRAP)  -o $@ US_IL_CHICAGO_CITYHALL_L.PNG.pvr

$(CONTENTDIR)/US_IL_CHICAGO_DALEY_L.PNG.cpp: $(CONTENTDIR)
	$(FILEWRAP)  -o $@ US_IL_CHICAGO_DALEY_L.PNG.pvr

$(CONTENTDIR)/US_IL_CHICAGO_HILTON_L.PNG.cpp: $(CONTENTDIR)
	$(FILEWRAP)  -o $@ US_IL_CHICAGO_HILTON_L.PNG.pvr

$(CONTENTDIR)/US_IL_CHICAGO_JAMESTHOMPSON_L.PNG.cpp: $(CONTENTDIR)
	$(FILEWRAP)  -o $@ US_IL_CHICAGO_JAMESTHOMPSON_L.PNG.pvr

$(CONTENTDIR)/US_IL_CHICAGO_LIBRARY_L.PNG.cpp: $(CONTENTDIR)
	$(FILEWRAP)  -o $@ US_IL_CHICAGO_LIBRARY_L.PNG.pvr

$(CONTENTDIR)/US_IL_CHICAGO_MILLENIUMPARK1_L.PNG.cpp: $(CONTENTDIR)
	$(FILEWRAP)  -o $@ US_IL_CHICAGO_MILLENIUMPARK1_L.PNG.pvr

$(CONTENTDIR)/US_IL_CHICAGO_MILLENIUMPARK2_L.PNG.cpp: $(CONTENTDIR)
	$(FILEWRAP)  -o $@ US_IL_CHICAGO_MILLENIUMPARK2_L.PNG.pvr

$(CONTENTDIR)/US_IL_CHICAGO_MMART_L.PNG.cpp: $(CONTENTDIR)
	$(FILEWRAP)  -o $@ US_IL_CHICAGO_MMART_L.PNG.pvr

$(CONTENTDIR)/US_IL_CHICAGO_OGILVIE_L.PNG.cpp: $(CONTENTDIR)
	$(FILEWRAP)  -o $@ US_IL_CHICAGO_OGILVIE_L.PNG.pvr

$(CONTENTDIR)/US_IL_CHICAGO_SEARSTOWER_L.PNG.cpp: $(CONTENTDIR)
	$(FILEWRAP)  -o $@ US_IL_CHICAGO_SEARSTOWER_L.PNG.pvr

$(CONTENTDIR)/US_IL_CHICAGO_UNIONSTATION_L.PNG.cpp: $(CONTENTDIR)
	$(FILEWRAP)  -o $@ US_IL_CHICAGO_UNIONSTATION_L.PNG.pvr

$(CONTENTDIR)/US_L_CONCRETE-COLOUR.PNG.cpp: $(CONTENTDIR)
	$(FILEWRAP)  -o $@ US_L_CONCRETE-COLOUR.PNG.pvr

$(CONTENTDIR)/US_L_CONCRETE-DETAIL.PNG.cpp: $(CONTENTDIR)
	$(FILEWRAP)  -o $@ US_L_CONCRETE-DETAIL.PNG.pvr

$(CONTENTDIR)/US_L_PARK-COLOUR.PNG.cpp: $(CONTENTDIR)
	$(FILEWRAP)  -o $@ US_L_PARK-COLOUR.PNG.pvr

$(CONTENTDIR)/US_L_WATER-COLOUR.PNG.cpp: $(CONTENTDIR)
	$(FILEWRAP)  -o $@ US_L_WATER-COLOUR.PNG.pvr

$(CONTENTDIR)/US_R_CONCRETE.PNG.cpp: $(CONTENTDIR)
	$(FILEWRAP)  -o $@ US_R_CONCRETE.PNG.pvr

$(CONTENTDIR)/US_R_HIGHWAY-SOLID.PNG.cpp: $(CONTENTDIR)
	$(FILEWRAP)  -o $@ US_R_HIGHWAY-SOLID.PNG.pvr

$(CONTENTDIR)/US_R_STREET-DASHED.PNG.cpp: $(CONTENTDIR)
	$(FILEWRAP)  -o $@ US_R_STREET-DASHED.PNG.pvr

$(CONTENTDIR)/US_R_STREET-INNER-SHOULDER.PNG.cpp: $(CONTENTDIR)
	$(FILEWRAP)  -o $@ US_R_STREET-INNER-SHOULDER.PNG.pvr

$(CONTENTDIR)/US_R_STREET-LANE-FILLER.PNG.cpp: $(CONTENTDIR)
	$(FILEWRAP)  -o $@ US_R_STREET-LANE-FILLER.PNG.pvr

$(CONTENTDIR)/US_R_STREET-SOLID.PNG.cpp: $(CONTENTDIR)
	$(FILEWRAP)  -o $@ US_R_STREET-SOLID.PNG.pvr

$(CONTENTDIR)/US_R_STREET-UNMARKED.PNG.cpp: $(CONTENTDIR)
	$(FILEWRAP)  -o $@ US_R_STREET-UNMARKED.PNG.pvr

$(CONTENTDIR)/US_R_WALKWAY-SOLID.PNG.cpp: $(CONTENTDIR)
	$(FILEWRAP)  -o $@ US_R_WALKWAY-SOLID.PNG.pvr

$(CONTENTDIR)/US_R_WALKWAY-UNMARKED.PNG.cpp: $(CONTENTDIR)
	$(FILEWRAP)  -o $@ US_R_WALKWAY-UNMARKED.PNG.pvr

$(CONTENTDIR)/US_T_RAILROAD.PNG.cpp: $(CONTENTDIR)
	$(FILEWRAP)  -o $@ US_T_RAILROAD.PNG.pvr

############################################################################
# End of file (content.mak)
############################################################################
