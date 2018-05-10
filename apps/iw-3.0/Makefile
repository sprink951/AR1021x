-include .config

MAKEFLAGS += --no-print-directory

PREFIX ?= /usr
SBINDIR ?= $(PREFIX)/sbin
MANDIR ?= $(PREFIX)/share/man
PKG_CONFIG ?= pkg-config

MKDIR ?= mkdir -p
INSTALL ?= install
CC ?= "gcc"

CFLAGS ?= -O2 -g
CFLAGS += -Wall -Wundef -Wstrict-prototypes -Wno-trigraphs -fno-strict-aliasing -fno-common -Werror-implicit-function-declaration

ifdef IW_CFLAGS
CFLAGS = ${IW_CFLAGS}
endif
ifdef IW_LDFLAGS
LDFLAGS = ${IW_LDFLAGS}
endif

OBJS = iw.o genl.o event.o info.o phy.o \
	interface.o ibss.o station.o survey.o util.o \
	mesh.o mpath.o scan.o reg.o version.o \
	reason.o status.o connect.o link.o offch.o ps.o cqm.o \
	bitrate.o wowlan.o channel_signal_link_list.o 80211p.o channel_sort.o
OBJS += sections.o
ALL = iw

ifdef BUILD_LIBNL
LIBS += ${INCLUDE_LIBNL11_LIB}
CFLAGS += -I${INCLUDE_LIBNL11_HEADER}
else
NL1FOUND := $(shell $(PKG_CONFIG) --atleast-version=1 libnl-1 && echo Y)
NL2FOUND := $(shell $(PKG_CONFIG) --atleast-version=2 libnl-2.0 && echo Y)

ifeq ($(NL1FOUND),Y)
NLLIBNAME = libnl-1
endif

ifeq ($(NL2FOUND),Y)
CFLAGS += -DCONFIG_LIBNL20
LIBS += -lnl-genl
NLLIBNAME = libnl-2.0
endif

ifeq ($(NLLIBNAME),)
$(error Cannot find development files for any supported version of libnl)
endif

LIBS += $(shell $(PKG_CONFIG) --libs $(NLLIBNAME))
CFLAGS += $(shell $(PKG_CONFIG) --cflags $(NLLIBNAME))
endif

ifeq ($(V),1)
Q=
NQ=true
else
Q=@
NQ=echo
endif

all: $(ALL)

VERSION_OBJS := $(filter-out version.o, $(OBJS))

version.c: version.sh $(patsubst %.o,%.c,$(VERSION_OBJS)) nl80211.h iw.h Makefile \
		$(wildcard .git/index .git/refs/tags)
	@$(NQ) ' GEN ' $@
#	$(Q)./version.sh $@

%.o: %.c iw.h nl80211.h
	@$(NQ) ' CC  ' $@
	$(Q)$(CC) $(CFLAGS) -c -o $@ $< -lm

iw:	$(OBJS)
	@$(NQ) ' CC  ' iw
	$(Q)$(CC) $(LDFLAGS) $(OBJS) $(LIBS) -lm -o iw

check:
	$(Q)$(MAKE) all CC="REAL_CC=$(CC) CHECK=\"sparse -Wall\" cgcc"

%.gz: %
	@$(NQ) ' GZIP' $<
	$(Q)gzip < $< > $@

install: iw iw.8.gz
	@$(NQ) ' INST iw'
	$(Q)$(MKDIR) $(DESTDIR)$(SBINDIR)
	$(Q)$(INSTALL) -m 755 iw $(DESTDIR)$(SBINDIR)
#	@$(NQ) ' INST iw.8'
#	$(Q)$(MKDIR) $(DESTDIR)$(MANDIR)/man8/
#	$(Q)$(INSTALL) -m 644 iw.8.gz $(DESTDIR)$(MANDIR)/man8/

clean:
	$(Q)rm -f iw *.o *~ *.gz *-stamp
#	$(Q)rm -f iw *.o *~ *.gz version.c *-stamp
