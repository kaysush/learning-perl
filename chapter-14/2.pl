#!/usr/bin/perl

use strict;

my %last_name = qw(fred flintstone Wilma Flintstone Barney Rubble
betty rubble Bamm-Bamm Rubble PEBBLES FLINTSTONE);

my @list = sort { 
	"\L$last_name{$a}" cmp "\L$last_name{$b}" 
	or
	"\L$a" cmp "\L$b" 
 } keys %last_name;

 foreach (@list) {
 	print "$_ $last_name{$_}\n";
 }