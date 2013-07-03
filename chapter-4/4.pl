#!/usr/bin/perl

use strict;
use 5.010;

sub greet {
	my($name) = @_;
	state $last;
	print "Hi $name ! ";
	if ( defined $last ) {
		print " $last is also here \n";
		$last = $name;
	} else {
		print "You are the first one here! \n";
		$last = $name;
	}
}

greet("Fred");
greet("Barney");
