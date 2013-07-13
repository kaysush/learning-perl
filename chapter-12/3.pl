#!/usr/bin/perl

use strict;

foreach (@ARGV) {

	print "$_ is readable , writable and owned by you\n" if (-r -w -o);
}