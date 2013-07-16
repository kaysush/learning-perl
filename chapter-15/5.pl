#!/usr/bin/perl

use strict;
use 5.010001;

sub divisors { # subroutine to return the list of divisors. Already given in the book.
	my $number = shift;
	my @divisors = ();
	foreach my $divisor ( 2 .. ( $number/2 ) ) {
		push @divisors, $divisor unless $number % $divisor;
	}
	return @divisors;
}

given($ARGV[0]) {
	when (! /^\d+$/) 	{ die("$ARGV[0] is not a number."); }

	my @divisors = &divisors($_);
	my @empty;

	
	when (@divisors ~~ 2) 			{say("$_ is Even number");continue;}
	when (!(@divisors ~~ 2))		{say("$_ is Odd number");continue;}
	when (@divisors ~~ $ARGV[1]) 	{say("$_ is divisible by $ARGV[1]");continue;}
	when (@divisors ~~ @empty) 		{say("$ARGV[0] is prime.");}
	default 						{say("@divisors");}
				
}