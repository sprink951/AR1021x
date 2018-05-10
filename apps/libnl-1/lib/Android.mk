LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)

LOCAL_SRC_FILES:= \
	cache.c \
	addr.c \
	attr.c \
	nl.c \
	data.c \
	doc.c \
	family.c \
	handlers.c \
	msg.c \
	object.c \
	socket.c \
	utils.c \
	cache_mngr.c \
	cache_mngt.c

# NETLINK_ROUTE
LOCAL_SRC_FILES += route/addr.c
LOCAL_SRC_FILES += route/class.c
LOCAL_SRC_FILES += route/class_api.c
LOCAL_SRC_FILES += route/class_obj.c
LOCAL_SRC_FILES += route/classifier.c
LOCAL_SRC_FILES += route/cls_api.c
LOCAL_SRC_FILES += route/cls_obj.c
LOCAL_SRC_FILES += route/link.c
LOCAL_SRC_FILES += route/neigh.c
LOCAL_SRC_FILES += route/neightbl.c
LOCAL_SRC_FILES += route/nexthop.c
LOCAL_SRC_FILES += route/qdisc.c
LOCAL_SRC_FILES += route/qdisc_api.c
LOCAL_SRC_FILES += route/qdisc_obj.c
LOCAL_SRC_FILES += route/route.c
LOCAL_SRC_FILES += route/route_obj.c
LOCAL_SRC_FILES += route/route_utils.c
LOCAL_SRC_FILES += route/rtnl.c
LOCAL_SRC_FILES += route/rule.c
LOCAL_SRC_FILES += route/tc.c

# NETLINK_ROUTE Schedulers
LOCAL_SRC_FILES += route/sch/blackhole.c
LOCAL_SRC_FILES += route/sch/cbq.c
LOCAL_SRC_FILES += route/sch/dsmark.c
LOCAL_SRC_FILES += route/sch/fifo.c
LOCAL_SRC_FILES += route/sch/htb.c
LOCAL_SRC_FILES += route/sch/netem.c
LOCAL_SRC_FILES += route/sch/prio.c
LOCAL_SRC_FILES += route/sch/red.c
LOCAL_SRC_FILES += route/sch/sfq.c
LOCAL_SRC_FILES += route/sch/tbf.c

# NETLINK_ROUTE Classifiers
LOCAL_SRC_FILES += route/cls/fw.c
LOCAL_SRC_FILES += route/cls/police.c
LOCAL_SRC_FILES += route/cls/u32.c

# NETLINK_ROUTE Link Info Modules
LOCAL_SRC_FILES += route/link/api.c
LOCAL_SRC_FILES += route/link/vlan.c

# NETLINK_GENERIC
LOCAL_SRC_FILES += genl/ctrl.c
LOCAL_SRC_FILES += genl/family.c
LOCAL_SRC_FILES += genl/genl.c
LOCAL_SRC_FILES += genl/mngt.c

# fib lookup
LOCAL_SRC_FILES += fib_lookup/lookup.c
LOCAL_SRC_FILES += fib_lookup/request.c

# Netfilter
LOCAL_SRC_FILES += netfilter/ct.c
LOCAL_SRC_FILES += netfilter/ct_obj.c
LOCAL_SRC_FILES += netfilter/log.c
LOCAL_SRC_FILES += netfilter/log_obj.c
LOCAL_SRC_FILES += netfilter/nfnl.c

LOCAL_C_INCLUDES:= \
        $(LOCAL_PATH)/../include \
        $(LOCAL_PATH)/src

LOCAL_LDLIBS += -lc -lm
LOCAL_PRELINK_MODULE:=false

LOCAL_MODULE:=libnl

include $(BUILD_SHARED_LIBRARY)
