#!/usr/bin/perl

use strict;

chomp(my $value = <STDIN>);
my @values = split " " , $value; #spilt the value at space you can even use /\s/

@values = sort { $a <=> $b} @values;

foreach (@values) {
	printf "%10g\n" , $_;
}

