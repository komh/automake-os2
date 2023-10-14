#! /bin/sh
# Copyright (C) 2005-2021 Free Software Foundation, Inc.
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 2, or (at your option)
# any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <https://www.gnu.org/licenses/>.

# Make sure comments following trailing backslashes are diagnosed.
# Report from Harald Dunkel.

. test-init.sh

cat > Makefile.am << 'END'
SUBDIRS = foo \
# bar

END

mkdir foo

$ACLOCAL
AUTOMAKE_fails
grep backslash stderr
