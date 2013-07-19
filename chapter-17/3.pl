#!/usr/bin/perl

use strict;

# Uncomment the following line if you want this done for any arbitary folder
#my $dir = $ARGV[0] // "\/home\/kaysush";

my @files = glob "*.*";

foreach (@files) {
	my($atime,$mtime) = map { 
		my($year , $month , $day) = (localtime($_))[5,4,3];
		$year += 1900;
		$month += 1;
		sprintf '%4d-%02d-%02d', $year, $month, $day
	} (stat)[8,9];
	print("$_	$atime	$mtime\n");
}