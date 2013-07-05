#!/usr/bin/perl

use strict;

chomp(my @words = <STDIN>);

my %word_count;



foreach (@words) {
	#since if key doesn't exists the value (undef) would be converted to zero (0) in numerical context
	$word_count{$_} += 1;
}

my @keys = sort keys %word_count;

print "The code pont order is \n";

foreach (@keys) {
	print "$_ => $word_count{$_} \n";
}


