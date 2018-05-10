#include <errno.h>

#include <netlink/genl/genl.h>
#include <netlink/genl/family.h>
#include <netlink/genl/ctrl.h>
#include <netlink/msg.h>
#include <netlink/attr.h>

#include "nl80211.h"
#include "iw.h"

static int set_ocb(struct nl80211_state *state,
                        struct nl_cb *cb,
                        struct nl_msg *msg,
                        int argc, char **argv)
{
	enum nl80211_ocb ocb;

	if (argc != 1) {
                printf("Invalid parameters!\n");
                return 2;
        }

        if (strcmp(argv[0], "on") == 0) {
		printf("Enable OCB Flag\n");
                ocb = NL80211_OCB_ENABLED;
        } else if (strcmp(argv[0], "off") == 0) {
		printf("Disable OCB Flag\n");
                ocb = NL80211_OCB_DISABLED;
        } else {
                printf("Invalid parameter: %s\n", argv[0]);
                return 2;
        }

        NLA_PUT_U32(msg, NL80211_ATTR_OCB_FLAG, ocb);

        return 0;
 nla_put_failure:
        return -ENOBUFS;
}
COMMAND(set, ocb, "<on|off>",
        NL80211_CMD_SET_OCB, 0, CIB_NETDEV, set_ocb,
        "Set the OCB Flag");

static int print_ocb_handler(struct nl_msg *msg, void *arg)
{
        struct nlattr *attrs[NL80211_ATTR_MAX + 1];
        struct genlmsghdr *gnlh = nlmsg_data(nlmsg_hdr(msg));
        const char *s;

        nla_parse(attrs, NL80211_ATTR_MAX, genlmsg_attrdata(gnlh, 0),
                  genlmsg_attrlen(gnlh, 0), NULL);

        if (!attrs[NL80211_ATTR_OCB_FLAG])
                return NL_SKIP;

        switch (nla_get_u32(attrs[NL80211_ATTR_OCB_FLAG])) {
        case NL80211_OCB_ENABLED:
                s = "on";
                break;
        case NL80211_OCB_DISABLED:
        default:
                s = "off";
                break;
        }

        printf("OCB: %s\n", s);

        return NL_SKIP;
}

static int get_ocb(struct nl80211_state *state,
                        struct nl_cb *cb,
                        struct nl_msg *msg,
                        int argc, char **argv)
{
        nl_cb_set(cb, NL_CB_VALID, NL_CB_CUSTOM,
                  print_ocb_handler, NULL);
	return 0;
}
COMMAND(get, ocb, NULL,
        NL80211_CMD_GET_OCB, 0, CIB_NETDEV, get_ocb,
        "Get the OCB Flag");

static int set_ocb_channel(struct nl80211_state *state,
                        struct nl_cb *cb,
                        struct nl_msg *msg,
                        int argc, char **argv)
{
        uint16_t channel;

        if (argc != 1) {
                printf("Invalid parameters!\n");
                return 2;
        }

        channel = (uint16_t)atoi(argv[0]);

        NLA_PUT_U16(msg, NL80211_ATTR_OCB_CHANNEL, channel);

        return 0;
 nla_put_failure:
        return -ENOBUFS;
}
COMMAND(set, ocb_channel, "<channel #>",
        NL80211_CMD_SET_OCB_CHANNEL, 0, CIB_NETDEV, set_ocb_channel,
        "Set the OCB Channel");

static int print_ocb_channel_handler(struct nl_msg *msg, void *arg)
{
        struct nlattr *attrs[NL80211_ATTR_MAX + 1];
        struct genlmsghdr *gnlh = nlmsg_data(nlmsg_hdr(msg));
        uint16_t channel;

        nla_parse(attrs, NL80211_ATTR_MAX, genlmsg_attrdata(gnlh, 0),
                  genlmsg_attrlen(gnlh, 0), NULL);

        if (!attrs[NL80211_ATTR_OCB_CHANNEL])
                return NL_SKIP;

        channel = nla_get_u16(attrs[NL80211_ATTR_OCB_CHANNEL]);

        printf("OCB Channel: %u\n", channel);

        return NL_SKIP;
}

static int get_ocb_channel(struct nl80211_state *state,
                        struct nl_cb *cb,
                        struct nl_msg *msg,
                        int argc, char **argv)
{
        nl_cb_set(cb, NL_CB_VALID, NL_CB_CUSTOM,
                  print_ocb_channel_handler, NULL);
        return 0;
}
COMMAND(get, ocb_channel, NULL,
        NL80211_CMD_GET_OCB_CHANNEL, 0, CIB_NETDEV, get_ocb_channel,
        "Get the OCB Channel");
