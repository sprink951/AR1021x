 /*channel_signal_link_list.c*/                    
#include <netlink/genl/genl.h>
#include <netlink/genl/family.h>
#include <netlink/genl/ctrl.h>  
#include <netlink/msg.h>
#include <netlink/attr.h>
#include <math.h>
#include <stdio.h>
#include <stdlib.h>


#include "nl80211.h"
#include "iw.h"

int insert_signal_node(SIGNAL_LIST **head,  int freq, double signal)
{
	SIGNAL_LIST *new_node = malloc(sizeof (SIGNAL_LIST));
	
	if (new_node!= NULL)
	{
		new_node->freq = freq;
		new_node->signal = signal;
		new_node->next = *head;
		*head = new_node;
		
		return 1;
	}
	
	else return 0;
}

int delete_signal_node(SIGNAL_LIST **head, double *average)
{
	SIGNAL_LIST *next, *current;
	double av_strength = 0;

	current = *head;
	int num = 0;
	while (current != NULL)
	{
		av_strength +=  current->signal;
		next = current->next;
		free(current);
		current = next;
		num++;
	}
	
	if (num > 0)
		av_strength /=num;
	
	*average = av_strength;
	
	*head = NULL;
	
	return num;
}
