#!/usr/bin/perl

use strict;

my @keys = sort keys %ENV;


foreach (@keys) {
	my $key_length = length $_;
	my $key_width = 5 + $key_length;
	my $value_length = length $ENV{$_};
	my $value_width = 5 + $value_length + $key_length;
	#print "$_ => $ENV{$_} \n";
	printf "%${key_width}s %${value_length}s \n" , $_ , $ENV{$_};
}