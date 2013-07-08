#!/usr/bin/perl

use strict;


while (<>) {
	chomp;
	if (/\b(\w+a)\b/) {
	print "Matched: '$1' \n";
	} else {
		print "No match: |$_|\n";
	}
}