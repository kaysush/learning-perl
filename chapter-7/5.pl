#!/usr/bin/perl

use strict;

while(<>) {
	if(/(.)\1/) {
		print "$_\n";
	}
}