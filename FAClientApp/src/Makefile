TOP=../..

include $(TOP)/configure/CONFIG
#----------------------------------------
#  ADD MACRO DEFINITIONS AFTER THIS LINE
#=============================

#=============================
# Build the IOC application

PROD_IOC = FAClient
# FAClient.dbd will be created and installed
DBD += FAClient.dbd

# FAClient.dbd will be made up from these files:
FAClient_DBD += base.dbd

# Include dbd files from all support applications:
FAClient_DBD += calc.dbd

# Add all the support libraries needed by this IOC
FAClient_LIBS += calc

# FAClient_registerRecordDeviceDriver.cpp derives from FAClient.dbd
FAClient_SRCS += FAClient_registerRecordDeviceDriver.cpp

# Build the main IOC entry point on workstation OSs.
FAClient_SRCS_DEFAULT += FAClientMain.cpp
FAClient_SRCS_vxWorks += -nil-

# Add support from base/src/vxWorks if needed
#FAClient_OBJS_vxWorks += $(EPICS_BASE_BIN)/vxComLibrary

# Finally link to the EPICS Base libraries
FAClient_LIBS += $(EPICS_BASE_IOC_LIBS)

#===========================

include $(TOP)/configure/RULES
#----------------------------------------
#  ADD RULES AFTER THIS LINE

