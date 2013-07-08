#!/usr/bin/perl

use strict;


while (<>) {
	chomp;
	if (/a\b/x) {
	print "Found a word ending with 'a'\n"
	} else {
		print "NO word found\n";
	}
}