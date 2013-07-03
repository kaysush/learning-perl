#!/usr/bin/perl

use strict;

sub mean {
	my $sum = 0;
	foreach (@_) {
		$sum += $_;
	}

	$sum/@_;
}

sub above_average {
	my $mean = &mean( @_ );
	my @new_array;
	foreach (@_) {
		if ( $_ > $mean ) {
			push(@new_array , $_);
		}
	}

	@new_array;
}

#Below in the comments are the test cases given in the question.

#my @array = qw(1 2 3 4 5);
#my @array = (1..10);
my @array = (100,1..10);
my @above_average_nos = &above_average( @array );

print "Above average nos. are ( @above_average_nos ) \n";