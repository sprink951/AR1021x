ifeq ($(BOARD_HAS_ATH_WLAN_AR6004_DEV), true)
BUILD_EXTERNAL = true
endif

ifeq ($(BOARD_HAS_ATH_WLAN_AR6004), true)
BUILD_EXTERNAL = true
endif

ifeq ($(BUILD_EXTERNAL),true)

LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)

LOCAL_CFLAGS += -DCONFIG_LIBNL20
LOCAL_C_INCLUDES += external/libnl-headers
LOCAL_MODULE_TAGS := eng
LOCAL_MODULE := iw

LOCAL_SHARED_LIBRARIES  := libc libcutils 
LOCAL_STATIC_LIBRARIES  := libnl_2

LOCAL_SRC_FILES:= iw.c \
	genl.c \
	event.c \
	info.c \
	phy.c \
	interface.c \
	ibss.c \
	station.c \
	survey.c \
	util.c \
	mesh.c \
	mpath.c \
	scan.c \
	reg.c \
	version.c \
	reason.c \
	status.c \
	connect.c \
	link.c \
	offch.c \
	ps.c \
	cqm.c \
	bitrate.c \
	wowlan.c \
        channel_signal_link_list.c \
	sections.c \
	channel_sort.c

include $(BUILD_EXECUTABLE)

endif
