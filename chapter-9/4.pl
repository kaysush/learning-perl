#!/use/bin/perl

# Usage perl 5.pl copyrightdemo.pl
# Try it with our without copyright header

use strict;

$^I = ".bak";
my $message = "## Copyright(C) 2013 Sushil Kumar";

while(<>) {

	s/(^#!(?:.*))/$1\n$message/;
	#print "Matched is $1\n"
	print;

}