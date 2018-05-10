 /*channel_sort.c*/
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
int wtable_2g[2][11][11] =
{
	/*Weight table for RSSI less than -70*/
	{
		{3, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0},
		{2, 3, 2, 1, 0, 0, 0, 0, 0, 0, 0},
		{1, 2, 3, 2, 1, 0, 0, 0, 0, 0, 0},
		{0, 1, 2, 3, 2, 1, 0, 0, 0, 0, 0},
		{0, 0, 1, 2, 3, 2, 1, 0, 0, 0, 0},
		{0, 0, 0, 1, 2, 3, 2, 1, 0, 0, 0},
		{0, 0, 0, 0, 1, 2, 3, 2, 1, 0, 0},
		{0, 0, 0, 0, 0, 1, 2, 3, 2, 1, 0},
		{0, 0, 0, 0, 0, 0, 1, 2, 3, 2, 1},
		{0, 0, 0, 0, 0, 0, 0, 1, 2, 3, 2},
		{0, 0, 0, 0, 0, 0, 0, 0, 1, 2,3}
	},
	/*Weight table for RSSI greater than  or equal to -70*/
	{
		{5, 4, 3, 2, 1, 0, 0, 0, 0, 0, 0},
		{4, 5, 4, 3, 2, 1, 0, 0, 0, 0, 0},
		{3, 4, 5, 4, 3, 2, 1, 0, 0, 0, 0},
		{2, 3, 4, 5, 4, 3, 2, 1, 0, 0, 0},
		{1, 2, 3, 4, 5, 4, 3, 2, 1, 0, 0},
		{0, 1, 2, 3, 4, 5, 4, 3, 2, 1, 0},
		{0, 0, 1, 2, 3, 4, 5, 4, 3, 2, 0},
		{0, 0, 0, 1, 2, 3, 4, 5, 4, 3, 2},
		{0, 0, 0, 0, 1, 2, 3, 4, 5, 4, 3},
		{0, 0, 0, 0, 0, 1, 2, 3, 4, 5, 4},
		{0, 0, 0, 0, 0, 0, 1, 2, 3, 4, 5}
	}
};


extern int totalweight_2g[11];

void sum_totalweight_2g(int index, int freq)
{
	int i;

	for (i = 0; i < 11; i++)
			totalweight_2g[i] += wtable_2g[index][freq-1][i];
}

int count_total_weight(SIGNAL_LIST *head)
{
	SIGNAL_LIST *ptr = head;
	int signal;

	if (head == NULL) return 0;

	while (ptr != NULL)
	{
		if (ptr->freq < 12) {

			signal = (int)(ptr->signal);

			if (signal < -70)
				sum_totalweight_2g(0, ptr->freq);
			else
				sum_totalweight_2g(1, ptr->freq);
		}
		else {
			/*to do*/
		}
		ptr = ptr->next;
	}

	return 1;
}

int find_candidate(int *total_weight, int num)
{
	int i, min = 1000000, candidate = 0;

	for (i = 0; i < num; i++) {

		if (total_weight[i] < min) {
			min = total_weight[i] ;
			candidate = i;
		}
	}

	return (candidate + 1);
}


void delete_signal_node_candidate(SIGNAL_LIST **head)
{
	SIGNAL_LIST *next, *current;
	current = *head;

	while (current != NULL) {
		next = current->next;
		free(current);
		current = next;
	}

	*head = NULL;
}
