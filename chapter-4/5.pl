#!/usr/bin/perl

use strict;
use 5.010;

sub greet {
	my($name) = @_;
	state @names;
	my $len = @names;
	if ( $len == 0 ) {
		print "Hi $name ! You are the first one here! \n";
		push(@names , $name);
	} else {
		print "Hi $name ! I have seen : @names \n";
		push(@names , $name);
	}
}

greet("Fred");
greet("Barney");
greet("Wilma");
greet("Betty");