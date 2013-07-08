#!/usr/bin/perl

use strict;


while(<>) {
	if(/\s\z/) {
		chomp;
		print "$_ <SCHAR>\n";
	}
}