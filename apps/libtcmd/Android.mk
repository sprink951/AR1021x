ifeq ($(BOARD_HAS_ATH_WLAN_AR6004_DEV), true)
BUILD_EXTERNAL = true
endif

ifeq ($(BOARD_HAS_ATH_WLAN_AR6004), true)
BUILD_EXTERNAL = true
endif

ifeq ($(BUILD_EXTERNAL),true)

LOCAL_PATH:=$(call my-dir)

# Build libtcmd =========================
include $(CLEAR_VARS)

LOCAL_MODULE := libtcmd
LOCAL_SRC_FILES:= \
    nl80211.c \
    libtcmd.c \
    os.c

LOCAL_C_INCLUDES += external/libnl-headers

LOCAL_COPY_HEADERS_TO := libtcmd
LOCAL_COPY_HEADERS := libtcmd.h

LOCAL_CFLAGS += \
	-DWLAN_API_NL80211 \
	-DANDROID \
	-DLIBNL_2 \

# ICS ships with libnl 2.0
LOCAL_WHOLE_STATIC_LIBRARIES := libnl_2
include $(BUILD_STATIC_LIBRARY)

endif
