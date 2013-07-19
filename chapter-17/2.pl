#!/usr/bin/perl

use strict;

# Uncomment the following line if you want this done for any arbitary folder
#my $dir = $ARGV[0] // "\/home\/kaysush";

my @files = glob "*.*";

foreach (@files) {
	my($atime,$mtime) = (stat)[8,9];
	print("$_	$atime	$mtime\n");
}