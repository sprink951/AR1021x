LOCAL_PATH:= $(call my-dir)

#
# utils
#

#include $(CLEAR_VARS)

#LOCAL_CFLAGS:= \
	-g -O2 -c -D_GNU_SOURCE -Wall -ggdb

#LOCAL_LDLIBS += -L../lib -lnl utils.o

#LOCAL_SRC_FILES:= \
        utils.c

#LOCAL_C_INCLUDES:= \
	$(LOCAL_PATH)/../include \
	$(LOCAL_PATH)/src

#LOCAL_SHARED_LIBRARIES := \
        libnl

#LOCAL_MODULE_PATH := $(TARGET_OUT_OPTIONAL_EXECUTABLES)
#LOCAL_MODULE:= utils

#include $(BUILD_EXECUTABLE)

#
# nl-addr-add
#

include $(CLEAR_VARS)

LOCAL_CFLAGS:= \
	-g -O2 -c -D_GNU_SOURCE -Wall -ggdb

LOCAL_LDLIBS += -L../lib -lnl utils.o

LOCAL_SRC_FILES:= \
	nl-addr-add.c \
	utils.c

LOCAL_C_INCLUDES:= \
	$(LOCAL_PATH)/../include \
	$(LOCAL_PATH)/src

LOCAL_SHARED_LIBRARIES := \
	libnl

LOCAL_MODULE_PATH := $(TARGET_OUT_OPTIONAL_EXECUTABLES)
LOCAL_MODULE:=nl-addr-add

include $(BUILD_EXECUTABLE)


#
# nl-addr-delete
#

include $(CLEAR_VARS)

LOCAL_CFLAGS:= \
        -g -O2 -c -D_GNU_SOURCE -Wall -ggdb

LOCAL_LDLIBS += -L../lib -lnl utils.o

LOCAL_SRC_FILES:= \
	nl-addr-delete.c \
        utils.c

LOCAL_C_INCLUDES:= \
        $(LOCAL_PATH)/../include \
        $(LOCAL_PATH)/src

LOCAL_SHARED_LIBRARIES := \
        libnl

LOCAL_MODULE_PATH := $(TARGET_OUT_OPTIONAL_EXECUTABLES)
LOCAL_MODULE:=nl-addr-delete

include $(BUILD_EXECUTABLE)



#
# nl-addr-dump
#

include $(CLEAR_VARS)

LOCAL_CFLAGS:= \
        -g -O2 -c -D_GNU_SOURCE -Wall -ggdb

LOCAL_LDLIBS += -L../lib -lnl utils.o

LOCAL_SRC_FILES:= \
	nl-addr-dump.c \
	utils.c

LOCAL_C_INCLUDES:= \
        $(LOCAL_PATH)/../include \
        $(LOCAL_PATH)/src

LOCAL_SHARED_LIBRARIES := \
        libnl

LOCAL_MODULE_PATH := $(TARGET_OUT_OPTIONAL_EXECUTABLES)
LOCAL_MODULE:=nl-addr-dump

include $(BUILD_EXECUTABLE)

#
# nl-fib-lookup
#

include $(CLEAR_VARS)

LOCAL_CFLAGS:= \
        -g -O2 -c -D_GNU_SOURCE -Wall -ggdb

LOCAL_LDLIBS += -L../lib -lnl utils.o

LOCAL_SRC_FILES:= \
	nl-fib-lookup.c \
	utils.c

LOCAL_C_INCLUDES:= \
        $(LOCAL_PATH)/../include \
        $(LOCAL_PATH)/src

LOCAL_SHARED_LIBRARIES := \
        libnl

LOCAL_MODULE_PATH := $(TARGET_OUT_OPTIONAL_EXECUTABLES)
LOCAL_MODULE:=nl-fib-lookup

include $(BUILD_EXECUTABLE)
	
#
# nl-link-dump
#

include $(CLEAR_VARS)

LOCAL_CFLAGS:= \
        -g -O2 -c -D_GNU_SOURCE -Wall -ggdb

LOCAL_LDLIBS += -L../lib -lnl utils.o

LOCAL_SRC_FILES:= \
        nl-link-dump.c \
	utils.c
LOCAL_C_INCLUDES:= \
        $(LOCAL_PATH)/../include \
        $(LOCAL_PATH)/src

LOCAL_SHARED_LIBRARIES := \
        libnl

LOCAL_MODULE_PATH := $(TARGET_OUT_OPTIONAL_EXECUTABLES)
LOCAL_MODULE:=nl-link-dump

include $(BUILD_EXECUTABLE)

#
# nl-link-ifindex2name
#

include $(CLEAR_VARS)

LOCAL_CFLAGS:= \
        -g -O2 -c -D_GNU_SOURCE -Wall -ggdb

LOCAL_LDLIBS += -L../lib -lnl utils.o

LOCAL_SRC_FILES:= \
        nl-link-ifindex2name.c \
	utils.c

LOCAL_C_INCLUDES:= \
        $(LOCAL_PATH)/../include \
        $(LOCAL_PATH)/src

LOCAL_SHARED_LIBRARIES := \
        libnl

LOCAL_MODULE_PATH := $(TARGET_OUT_OPTIONAL_EXECUTABLES)
LOCAL_MODULE:=nl-link-ifindex2name

include $(BUILD_EXECUTABLE)

#
# nl-link-name2ifindex
#

include $(CLEAR_VARS)

LOCAL_CFLAGS:= \
        -g -O2 -c -D_GNU_SOURCE -Wall -ggdb

LOCAL_LDLIBS += -L../lib -lnl utils.o

LOCAL_SRC_FILES:= \
        nl-link-name2ifindex.c \
	utils.c
LOCAL_C_INCLUDES:= \
        $(LOCAL_PATH)/../include \
        $(LOCAL_PATH)/src

LOCAL_SHARED_LIBRARIES := \
        libnl

LOCAL_MODULE_PATH := $(TARGET_OUT_OPTIONAL_EXECUTABLES)
LOCAL_MODULE:=nl-link-name2ifindex

include $(BUILD_EXECUTABLE)

#
# nl-link-set
#

include $(CLEAR_VARS)

LOCAL_CFLAGS:= \
        -g -O2 -c -D_GNU_SOURCE -Wall -ggdb

LOCAL_LDLIBS += -L../lib -lnl utils.o

LOCAL_SRC_FILES:= \
        nl-link-set.c \
	utils.c

LOCAL_C_INCLUDES:= \
        $(LOCAL_PATH)/../include \
        $(LOCAL_PATH)/src

LOCAL_SHARED_LIBRARIES := \
        libnl

LOCAL_MODULE_PATH := $(TARGET_OUT_OPTIONAL_EXECUTABLES)
LOCAL_MODULE:=nl-link-set

include $(BUILD_EXECUTABLE)

#
# nl-link-stats
#

include $(CLEAR_VARS)

LOCAL_CFLAGS:= \
        -g -O2 -c -D_GNU_SOURCE -Wall -ggdb

LOCAL_LDLIBS += -L../lib -lnl utils.o

LOCAL_SRC_FILES:= \
        nl-link-stats.c \
	utils.c

LOCAL_C_INCLUDES:= \
        $(LOCAL_PATH)/../include \
        $(LOCAL_PATH)/src

LOCAL_SHARED_LIBRARIES := \
        libnl

LOCAL_MODULE_PATH := $(TARGET_OUT_OPTIONAL_EXECUTABLES)
LOCAL_MODULE:=nl-link-stats

include $(BUILD_EXECUTABLE)

#
# nl-list-caches
#

include $(CLEAR_VARS)

LOCAL_CFLAGS:= \
        -g -O2 -c -D_GNU_SOURCE -Wall -ggdb

LOCAL_LDLIBS += -L../lib -lnl utils.o

LOCAL_SRC_FILES:= \
        nl-list-caches.c \
	utils.c

LOCAL_C_INCLUDES:= \
        $(LOCAL_PATH)/../include \
        $(LOCAL_PATH)/src

LOCAL_SHARED_LIBRARIES := \
        libnl

LOCAL_MODULE_PATH := $(TARGET_OUT_OPTIONAL_EXECUTABLES)
LOCAL_MODULE:=nl-list-caches

include $(BUILD_EXECUTABLE)

#
# nl-list-sockets
#

include $(CLEAR_VARS)

LOCAL_CFLAGS:= \
        -g -O2 -c -D_GNU_SOURCE -Wall -ggdb

LOCAL_LDLIBS += -L../lib -lnl utils.o

LOCAL_SRC_FILES:= \
        nl-list-sockets.c \
	utils.c

LOCAL_C_INCLUDES:= \
        $(LOCAL_PATH)/../include \
        $(LOCAL_PATH)/src

LOCAL_SHARED_LIBRARIES := \
        libnl

LOCAL_MODULE_PATH := $(TARGET_OUT_OPTIONAL_EXECUTABLES)
LOCAL_MODULE:=nl-list-sockets

include $(BUILD_EXECUTABLE)

#
# nl-monitor
#

include $(CLEAR_VARS)

LOCAL_CFLAGS:= \
        -g -O2 -c -D_GNU_SOURCE -Wall -ggdb

LOCAL_LDLIBS += -L../lib -lnl utils.o

LOCAL_SRC_FILES:= \
        nl-monitor.c \
	utils.c

LOCAL_C_INCLUDES:= \
        $(LOCAL_PATH)/../include \
        $(LOCAL_PATH)/src

LOCAL_SHARED_LIBRARIES := \
        libnl

LOCAL_MODULE_PATH := $(TARGET_OUT_OPTIONAL_EXECUTABLES)
LOCAL_MODULE:=nl-monitor

include $(BUILD_EXECUTABLE)

#
# nl-neigh-add
#

include $(CLEAR_VARS)

LOCAL_CFLAGS:= \
        -g -O2 -c -D_GNU_SOURCE -Wall -ggdb

LOCAL_LDLIBS += -L../lib -lnl utils.o

LOCAL_SRC_FILES:= \
        nl-neigh-add.c \
	utils.c

LOCAL_C_INCLUDES:= \
        $(LOCAL_PATH)/../include \
        $(LOCAL_PATH)/src

LOCAL_SHARED_LIBRARIES := \
        libnl

LOCAL_MODULE_PATH := $(TARGET_OUT_OPTIONAL_EXECUTABLES)
LOCAL_MODULE:=nl-neigh-add

include $(BUILD_EXECUTABLE)

#
# nl-neigh-delete
#

include $(CLEAR_VARS)

LOCAL_CFLAGS:= \
        -g -O2 -c -D_GNU_SOURCE -Wall -ggdb

LOCAL_LDLIBS += -L../lib -lnl utils.o

LOCAL_SRC_FILES:= \
        nl-neigh-delete.c \
	utils.c

LOCAL_C_INCLUDES:= \
        $(LOCAL_PATH)/../include \
        $(LOCAL_PATH)/src

LOCAL_SHARED_LIBRARIES := \
        libnl

LOCAL_MODULE_PATH := $(TARGET_OUT_OPTIONAL_EXECUTABLES)
LOCAL_MODULE:=nl-neigh-delete

include $(BUILD_EXECUTABLE)

#
# nl-neigh-dump
#

include $(CLEAR_VARS)

LOCAL_CFLAGS:= \
        -g -O2 -c -D_GNU_SOURCE -Wall -ggdb

LOCAL_LDLIBS += -L../lib -lnl utils.o

LOCAL_SRC_FILES:= \
        nl-neigh-dump.c \
	utils.c

LOCAL_C_INCLUDES:= \
        $(LOCAL_PATH)/../include \
        $(LOCAL_PATH)/src

LOCAL_SHARED_LIBRARIES := \
        libnl

LOCAL_MODULE_PATH := $(TARGET_OUT_OPTIONAL_EXECUTABLES)
LOCAL_MODULE:=nl-neigh-dump

include $(BUILD_EXECUTABLE)

#
# nl-neightbl-dump
#

include $(CLEAR_VARS)

LOCAL_CFLAGS:= \
        -g -O2 -c -D_GNU_SOURCE -Wall -ggdb

LOCAL_LDLIBS += -L../lib -lnl utils.o

LOCAL_SRC_FILES:= \
        nl-neightbl-dump.c \
	utils.c

LOCAL_C_INCLUDES:= \
        $(LOCAL_PATH)/../include \
        $(LOCAL_PATH)/src

LOCAL_SHARED_LIBRARIES := \
        libnl

LOCAL_MODULE_PATH := $(TARGET_OUT_OPTIONAL_EXECUTABLES)
LOCAL_MODULE:=nl-neightbl-dump

include $(BUILD_EXECUTABLE)

#
# nl-qdisc-add
#

include $(CLEAR_VARS)

LOCAL_CFLAGS:= \
        -g -O2 -c -D_GNU_SOURCE -Wall -ggdb

LOCAL_LDLIBS += -L../lib -lnl utils.o

LOCAL_SRC_FILES:= \
        nl-qdisc-add.c \
	utils.c

LOCAL_C_INCLUDES:= \
        $(LOCAL_PATH)/../include \
        $(LOCAL_PATH)/src

LOCAL_SHARED_LIBRARIES := \
        libnl

LOCAL_MODULE_PATH := $(TARGET_OUT_OPTIONAL_EXECUTABLES)
LOCAL_MODULE:=nl-qdisc-add

include $(BUILD_EXECUTABLE)

#
# nl-qdisc-delete
#

include $(CLEAR_VARS)

LOCAL_CFLAGS:= \
        -g -O2 -c -D_GNU_SOURCE -Wall -ggdb

LOCAL_LDLIBS += -L../lib -lnl utils.o

LOCAL_SRC_FILES:= \
        nl-qdisc-delete.c \
	utils.c

LOCAL_C_INCLUDES:= \
        $(LOCAL_PATH)/../include \
        $(LOCAL_PATH)/src

LOCAL_SHARED_LIBRARIES := \
        libnl

LOCAL_MODULE_PATH := $(TARGET_OUT_OPTIONAL_EXECUTABLES)
LOCAL_MODULE:=nl-qdisc-delete

include $(BUILD_EXECUTABLE)

#
# nl-qdisc-dump
#

include $(CLEAR_VARS)

LOCAL_CFLAGS:= \
        -g -O2 -c -D_GNU_SOURCE -Wall -ggdb

LOCAL_LDLIBS += -L../lib -lnl utils.o

LOCAL_SRC_FILES:= \
        nl-qdisc-dump.c \
	utils.c

LOCAL_C_INCLUDES:= \
        $(LOCAL_PATH)/../include \
        $(LOCAL_PATH)/src

LOCAL_SHARED_LIBRARIES := \
        libnl

LOCAL_MODULE_PATH := $(TARGET_OUT_OPTIONAL_EXECUTABLES)
LOCAL_MODULE:=nl-qdisc-dump

include $(BUILD_EXECUTABLE)

#
# nl-route-add
#

include $(CLEAR_VARS)

LOCAL_CFLAGS:= \
        -g -O2 -c -D_GNU_SOURCE -Wall -ggdb

LOCAL_LDLIBS += -L../lib -lnl utils.o

LOCAL_SRC_FILES:= \
        nl-route-add.c \
	utils.c

LOCAL_C_INCLUDES:= \
        $(LOCAL_PATH)/../include \
        $(LOCAL_PATH)/src

LOCAL_SHARED_LIBRARIES := \
        libnl

LOCAL_MODULE_PATH := $(TARGET_OUT_OPTIONAL_EXECUTABLES)
LOCAL_MODULE:=nl-route-add

include $(BUILD_EXECUTABLE)

#
# nl-route-del
#

include $(CLEAR_VARS)

LOCAL_CFLAGS:= \
        -g -O2 -c -D_GNU_SOURCE -Wall -ggdb

LOCAL_LDLIBS += -L../lib -lnl utils.o

LOCAL_SRC_FILES:= \
        nl-route-del.c \
	utils.c

LOCAL_C_INCLUDES:= \
        $(LOCAL_PATH)/../include \
        $(LOCAL_PATH)/src

LOCAL_SHARED_LIBRARIES := \
        libnl

LOCAL_MODULE_PATH := $(TARGET_OUT_OPTIONAL_EXECUTABLES)
LOCAL_MODULE:=nl-route-del

include $(BUILD_EXECUTABLE)

#
# nl-route-dump
#

include $(CLEAR_VARS)

LOCAL_CFLAGS:= \
        -g -O2 -c -D_GNU_SOURCE -Wall -ggdb

LOCAL_LDLIBS += -L../lib -lnl utils.o

LOCAL_SRC_FILES:= \
        nl-route-dump.c \
	utils.c

LOCAL_C_INCLUDES:= \
        $(LOCAL_PATH)/../include \
        $(LOCAL_PATH)/src

LOCAL_SHARED_LIBRARIES := \
        libnl

LOCAL_MODULE_PATH := $(TARGET_OUT_OPTIONAL_EXECUTABLES)
LOCAL_MODULE:=nl-route-dump

include $(BUILD_EXECUTABLE)

#
# nl-route-get
#

include $(CLEAR_VARS)

LOCAL_CFLAGS:= \
        -g -O2 -c -D_GNU_SOURCE -Wall -ggdb

LOCAL_LDLIBS += -L../lib -lnl utils.o

LOCAL_SRC_FILES:= \
        nl-route-get.c \
	utils.c

LOCAL_C_INCLUDES:= \
        $(LOCAL_PATH)/../include \
        $(LOCAL_PATH)/src

LOCAL_SHARED_LIBRARIES := \
        libnl

LOCAL_MODULE_PATH := $(TARGET_OUT_OPTIONAL_EXECUTABLES)
LOCAL_MODULE:=nl-route-get

include $(BUILD_EXECUTABLE)

#
# nl-rule-dump
#

include $(CLEAR_VARS)

LOCAL_CFLAGS:= \
        -g -O2 -c -D_GNU_SOURCE -Wall -ggdb

LOCAL_LDLIBS += -L../lib -lnl utils.o

LOCAL_SRC_FILES:= \
        nl-rule-dump.c \
	utils.c

LOCAL_C_INCLUDES:= \
        $(LOCAL_PATH)/../include \
        $(LOCAL_PATH)/src

LOCAL_SHARED_LIBRARIES := \
        libnl

LOCAL_MODULE_PATH := $(TARGET_OUT_OPTIONAL_EXECUTABLES)
LOCAL_MODULE:=nl-rule-dump

include $(BUILD_EXECUTABLE)

#
# nl-tctree-dump
#

include $(CLEAR_VARS)

LOCAL_CFLAGS:= \
        -g -O2 -c -D_GNU_SOURCE -Wall -ggdb

LOCAL_LDLIBS += -L../lib -lnl utils.o

LOCAL_SRC_FILES:= \
        nl-tctree-dump.c \
	utils.c

LOCAL_C_INCLUDES:= \
        $(LOCAL_PATH)/../include \
        $(LOCAL_PATH)/src

LOCAL_SHARED_LIBRARIES := \
        libnl

LOCAL_MODULE_PATH := $(TARGET_OUT_OPTIONAL_EXECUTABLES)
LOCAL_MODULE:=nl-tctree-dump

include $(BUILD_EXECUTABLE)

#
# nl-util-addr
#

include $(CLEAR_VARS)

LOCAL_CFLAGS:= \
        -g -O2 -c -D_GNU_SOURCE -Wall -ggdb

LOCAL_LDLIBS += -L../lib -lnl utils.o

LOCAL_SRC_FILES:= \
        nl-util-addr.c \
	utils.c

LOCAL_C_INCLUDES:= \
        $(LOCAL_PATH)/../include \
        $(LOCAL_PATH)/src

LOCAL_SHARED_LIBRARIES := \
        libnl

LOCAL_MODULE_PATH := $(TARGET_OUT_OPTIONAL_EXECUTABLES)
LOCAL_MODULE:=nl-util-addr

include $(BUILD_EXECUTABLE)

#
# genl-ctrl-dump
#

include $(CLEAR_VARS)

LOCAL_CFLAGS:= \
        -g -O2 -c -D_GNU_SOURCE -Wall -ggdb

LOCAL_LDLIBS += -L../lib -lnl utils.o

LOCAL_SRC_FILES:= \
        genl-ctrl-dump.c \
	utils.c

LOCAL_C_INCLUDES:= \
        $(LOCAL_PATH)/../include \
        $(LOCAL_PATH)/src

LOCAL_SHARED_LIBRARIES := \
        libnl

LOCAL_MODULE_PATH := $(TARGET_OUT_OPTIONAL_EXECUTABLES)
LOCAL_MODULE:=genl-ctrl-dump

include $(BUILD_EXECUTABLE)

#
# genl-ctrl-get
#

include $(CLEAR_VARS)

LOCAL_CFLAGS:= \
        -g -O2 -c -D_GNU_SOURCE -Wall -ggdb

LOCAL_LDLIBS += -L../lib -lnl utils.o

LOCAL_SRC_FILES:= \
        genl-ctrl-get.c \
	utils.c

LOCAL_C_INCLUDES:= \
        $(LOCAL_PATH)/../include \
        $(LOCAL_PATH)/src

LOCAL_SHARED_LIBRARIES := \
        libnl

LOCAL_MODULE_PATH := $(TARGET_OUT_OPTIONAL_EXECUTABLES)
LOCAL_MODULE:=genl-ctrl-get

include $(BUILD_EXECUTABLE)

#
# nf-ct-dump
#

include $(CLEAR_VARS)

LOCAL_CFLAGS:= \
        -g -O2 -c -D_GNU_SOURCE -Wall -ggdb

LOCAL_LDLIBS += -L../lib -lnl utils.o

LOCAL_SRC_FILES:= \
        nf-ct-dump.c \
	utils.c

LOCAL_C_INCLUDES:= \
        $(LOCAL_PATH)/../include \
        $(LOCAL_PATH)/src

LOCAL_SHARED_LIBRARIES := \
        libnl

LOCAL_MODULE_PATH := $(TARGET_OUT_OPTIONAL_EXECUTABLES)
LOCAL_MODULE:=nf-ct-dump

include $(BUILD_EXECUTABLE)

#
# nf-log
#

include $(CLEAR_VARS)

LOCAL_CFLAGS:= \
        -g -O2 -c -D_GNU_SOURCE -Wall -ggdb

LOCAL_LDLIBS += -L../lib -lnl utils.o

LOCAL_SRC_FILES:= \
        nf-log.c \
	utils.c

LOCAL_C_INCLUDES:= \
        $(LOCAL_PATH)/../include \
        $(LOCAL_PATH)/src

LOCAL_SHARED_LIBRARIES := \
        libnl

LOCAL_MODULE_PATH := $(TARGET_OUT_OPTIONAL_EXECUTABLES)
LOCAL_MODULE:=nf-log

include $(BUILD_EXECUTABLE)

#
# nf-monitor
#

include $(CLEAR_VARS)

LOCAL_CFLAGS:= \
        -g -O2 -c -D_GNU_SOURCE -Wall -ggdb

LOCAL_LDLIBS += -L../lib -lnl utils.o

LOCAL_SRC_FILES:= \
        nf-monitor.c \
	utils.c

LOCAL_C_INCLUDES:= \
        $(LOCAL_PATH)/../include \
        $(LOCAL_PATH)/src

LOCAL_SHARED_LIBRARIES := \
        libnl

LOCAL_MODULE_PATH := $(TARGET_OUT_OPTIONAL_EXECUTABLES)
LOCAL_MODULE:=nf-monitor

include $(BUILD_EXECUTABLE)

