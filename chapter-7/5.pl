#!/usr/bin/perl

use strict;

while(<>) {
	if(/(\S)\1/) { # using class shortcut \S for non-whitespace characters
		print "$_\n";
	}
}