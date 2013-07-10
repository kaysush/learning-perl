#!/use/bin/perl

# Usage perl 5.pl copyrightdemo.pl
# Try it with our without copyright header

use strict;
use 5.010;

$^I = ".bak";
my $message = "## Copyright(C) 2013 Sushil Kumar";

while(<>) {

	unless(/\A## Copyright/) {  # if copyright header is not found or not present add it.
	s/(^\A#!(?:.*))/$1\n$message/; # replace the shebang with shebang line followed by copyright.
			print;
		}

}