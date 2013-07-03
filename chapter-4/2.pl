#!/usr/bin/perl

use strict;

sub total {
	my $sum = 0;
	foreach ( @_ ) {
		$sum += $_;
	}

	$sum;
}

my @array = (1..1000);
my ($first) = @array;
my $last = @array; #Since the numbers are increasing by 1.
my $total = &total( @array );
print "Total of nos. from $first to $last is $total \n";