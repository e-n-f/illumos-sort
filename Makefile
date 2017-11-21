#
# CDDL HEADER START
#
# The contents of this file are subject to the terms of the
# Common Development and Distribution License, Version 1.0 only
# (the "License").  You may not use this file except in compliance
# with the License.
#
# You can obtain a copy of the license at usr/src/OPENSOLARIS.LICENSE
# or http://www.opensolaris.org/os/licensing.
# See the License for the specific language governing permissions
# and limitations under the License.
#
# When distributing Covered Code, include this CDDL HEADER in each
# file and include the License file at usr/src/OPENSOLARIS.LICENSE.
# If applicable, add the following below this CDDL HEADER, with the
# fields enclosed by brackets "[]" replaced with your own identifying
# information: Portions Copyright [yyyy] [name of copyright owner]
#
# CDDL HEADER END
#
#
# Copyright 1998-2002 Sun Microsystems, Inc.  All rights reserved.
# Use is subject to license terms.
#
# ident	"%Z%%M%	%I%	%E% SMI"
#
# cmd/sort/Makefile
#

all: sort

OBJS =	common/check.o common/fields.o common/initialize.o common/internal.o \
	common/main.o common/merge.o common/options.o common/streams.o \
	common/streams_array.o common/streams_mmap.o common/streams_stdio.o \
	common/streams_wide.o common/utility.o

sort: $(OBJS)
	$(CC) -g -Wall -O3 -o sort $(OBJS)

%.o: %.c
	$(CC) -MMD -g -Wall -O3 -c -o $@ $<

clean:
	rm -f sort *.o $(OBJS)
