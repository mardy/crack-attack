#!/bin/sh

aclocal $ACLOCAL_FLAGS || exit;
autoheader || exit;
autoconf || exit;
automake --add-missing --copy || exit;
./configure $@

