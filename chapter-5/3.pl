#!/usr/bin/perl

#This question is done only after reading solution from book

use strict;

chomp(my $size = <STDIN>);

my @lines = <STDIN>;

print "\n";
print "1234567890" x ( ($size+9) /10 );  #exactly copied from the solution
print "\n";

foreach (@lines) {
	chomp;
	printf "%${size}s\n" , $_;  # had to review chapter three again just to read interpolation again
}