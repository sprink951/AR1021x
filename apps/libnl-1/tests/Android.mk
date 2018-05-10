LOCAL_PATH:= $(call my-dir)

#
# test-cache-mngr
#

include $(CLEAR_VARS)

LOCAL_CFLAGS:= \
        -g -O2 -c -D_GNU_SOURCE -Wall -ggdb

LOCAL_LDLIBS += -L../lib -lnl ../src/utils.o

LOCAL_SRC_FILES:= \
        test-cache-mngr.c \
	../src/utils.c

LOCAL_C_INCLUDES:= \
        $(LOCAL_PATH)/../include \
        $(LOCAL_PATH)/../src

LOCAL_SHARED_LIBRARIES := \
        libnl

LOCAL_MODULE_PATH := $(TARGET_OUT_OPTIONAL_EXECUTABLES)
LOCAL_MODULE:=test-cache-mngr

include $(BUILD_EXECUTABLE)

#
# test-genl
#

include $(CLEAR_VARS)

LOCAL_CFLAGS:= \
        -g -O2 -c -D_GNU_SOURCE -Wall -ggdb

LOCAL_LDLIBS += -L../lib -lnl ../src/utils.o

LOCAL_SRC_FILES:= \
        test-genl.c \
	../src/utils.c

LOCAL_C_INCLUDES:= \
        $(LOCAL_PATH)/../include \
        $(LOCAL_PATH)/../src

LOCAL_SHARED_LIBRARIES := \
        libnl

LOCAL_MODULE_PATH := $(TARGET_OUT_OPTIONAL_EXECUTABLES)
LOCAL_MODULE:=test-genl

include $(BUILD_EXECUTABLE)

#
# test-nf-cache-mngr
#

include $(CLEAR_VARS)

LOCAL_CFLAGS:= \
        -g -O2 -c -D_GNU_SOURCE -Wall -ggdb

LOCAL_LDLIBS += -L../lib -lnl ../src/utils.o

LOCAL_SRC_FILES:= \
        test-nf-cache-mngr.c \
	../src/utils.c

LOCAL_C_INCLUDES:= \
        $(LOCAL_PATH)/../include \
        $(LOCAL_PATH)/../src

LOCAL_SHARED_LIBRARIES := \
        libnl

LOCAL_MODULE_PATH := $(TARGET_OUT_OPTIONAL_EXECUTABLES)
LOCAL_MODULE:=test-nf-cache-mngr

include $(BUILD_EXECUTABLE)

#
# test-socket-creation
#

include $(CLEAR_VARS)

LOCAL_CFLAGS:= \
        -g -O2 -c -D_GNU_SOURCE -Wall -ggdb

LOCAL_LDLIBS += -L../lib -lnl ../src/utils.o

LOCAL_SRC_FILES:= \
        test-socket-creation.c \
	../src/utils.c

LOCAL_C_INCLUDES:= \
        $(LOCAL_PATH)/../include \
        $(LOCAL_PATH)/../src

LOCAL_SHARED_LIBRARIES := \
        libnl

LOCAL_MODULE_PATH := $(TARGET_OUT_OPTIONAL_EXECUTABLES)
LOCAL_MODULE:=test-socket-creation

include $(BUILD_EXECUTABLE)
