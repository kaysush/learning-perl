#!/usr/bin/perl

use strict;

my @keys = sort keys %ENV;


foreach (@keys) {
	my $key_length = length $_;
	my $key_width = 5 + $key_length;
	#print "$_ => $ENV{$_} \n";
	printf "%${key_width}s => %s\n" , $_ , $ENV{$_};
}