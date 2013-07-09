#!/usr/bin/perl

use strict;

#my $what = 'fred';
my $what = "fred|barney";

while(<>) {
	if( /(?:$what){3}/x ) {
		print "Matched : [$&]\n";
	} else {
		print "Not Matched\n";
	}
}