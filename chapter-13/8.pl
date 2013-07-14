#!/usr/bin/perl

use strict;

foreach (<.* *>) {
	my $dest = readlink $_;
	print "$_ --> $dest\n" if defined $dest; # print only if its a symlink
}