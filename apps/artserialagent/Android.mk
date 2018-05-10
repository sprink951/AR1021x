#------------------------------------------------------------------------------
# <copyright file="makefile" company="Atheros">
#    Copyright (c) 2005-2010 Atheros Corporation.  All rights reserved.
# $ATH_LICENSE_HOSTSDK0_C$
#------------------------------------------------------------------------------
#==============================================================================
# Author(s): ="Atheros"
#==============================================================================
ifeq ($(BOARD_HAS_ATH_WLAN_AR6004_DEV),true)

LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := artserialagent

LOCAL_C_INCLUDES += $(TARGET_OUT_HEADERS)/libtcmd \

LOCAL_CFLAGS+= 

LOCAL_SRC_FILES:= \ artserialagent.c

LOCAL_LDLIBS += -lpthread -lrt

LOCAL_MODULE_TAGS := optional eng

LOCAL_SHARED_LIBRARIES += libcutils
LOCAL_STATIC_LIBRARIES += libtcmd

include $(BUILD_EXECUTABLE)

endif
