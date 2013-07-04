#!/usr/bin/perl

use strict;
my @lines = <STDIN>;
print "\n";
print "1234567890" x 3; #copied from solutions given in the book
print "\n";
foreach ( @lines ) {
	chomp;
	printf "%20s\n" , $_;
}