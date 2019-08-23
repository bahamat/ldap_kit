/*
 * CDDL HEADER START
 *
 * The contents of this file are subject to the terms of the
 * Common Development and Distribution License, Version 1.0 only
 * (the "License").  You may not use this file except in compliance
 * with the License.
 *
 * You can obtain a copy of the license at usr/src/OPENSOLARIS.LICENSE
 * or http://www.opensolaris.org/os/licensing.
 * See the License for the specific language governing permissions
 * and limitations under the License.
 *
 * When distributing Covered Code, include this CDDL HEADER in each
 * file and include the License file at usr/src/OPENSOLARIS.LICENSE.
 * If applicable, add the following below this CDDL HEADER, with the
 * fields enclosed by brackets "[]" replaced with your own identifying
 * information: Portions Copyright [yyyy] [name of copyright owner]
 *
 * CDDL HEADER END
 */
/*
 * Copyright 2018 Brian Bennett <brian.bennett@joyent.com> All rights reserved.
 * Use is subject to license terms.
 */

#include <stdlib.h>
#include "ns_sldap.h"
#include "ns_internal.h"

/*
 * is_plaintext()
 *
 * Check if the string is not prefixed with CRYPTMARK
 */
static int
not_marked(const char *pass)
{
	return (strncmp(pass, CRYPTMARK, strlen(CRYPTMARK)));
}

/*
 * usage();
 *
 * Print help.
 */
void
usage(char *self, int e)
{
	fprintf(stderr, "Usage: %s hash\n", self);
	fprintf(stderr, "Usage: %s password\n", self);
	exit(e);
}

int
main(int argc, char **argv)
{
	if (argc != 2) {
		usage(argv[0], 1);
	}
	if (strncmp(argv[1], "-h", 2) == 0) {
		usage(argv[0], 0);
	}

	if (not_marked(argv[1])) {
		printf("%s\n", evalue(argv[1]));
	} else {
		printf("%s\n", dvalue(argv[1]));
	}
	exit(0);
}
