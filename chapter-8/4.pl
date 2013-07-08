#!/usr/bin/perl

use strict;


while (<>) {
	chomp;
	if (/\b(?<WORD>\w*a)\b/) {
	print "Matched: The `WORD` contains `$+{WORD}`\n";
	} else {
		print "No match: |$_|\n";
	}
}