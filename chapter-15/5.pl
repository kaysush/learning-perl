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
	when (/^\d+$/) 	{ 

						if($_ %(2) == 0) { say("$_ is even") }
						else { say("$_ is odd"); }

						my @divisors = &divisors($_);
						if(@divisors){
								print("@divisors\n");
						} else {
								say("Prime Number");
						}
						if($_ % $ARGV[1]) { say("$_ is divisible by $ARGV[1]"); }
				 }
	default 		{die("$ARGV[0] is not a number.");}
}