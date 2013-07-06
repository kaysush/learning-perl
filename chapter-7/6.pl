#!/usr/bin/perl

use strict;

while(<>) {
	if(/wilma(.)*fred|fred(.)*wilma/) {
		print "$_\n";
	}
}