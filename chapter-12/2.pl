#!/usr/bin/perl

use strict;

die "No arguments recieved!!!" unless @ARGV;

my $max_days = 0;
my $filename = "";

foreach (@ARGV) {
	if ( (my $days =-M $_) > $max_days){
		#$max_days = $days;
		#$filename = $_;
		($max_days ,$filename) = ($days , $_);
	}
}

print "Oldest file is $filename. $max_days old.\n";