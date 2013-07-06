#!/usr/bin/perl

use strict;

while(<>) {
	if(/[A-Z][a-z]+/) {
		print "$_\n";
	}
}