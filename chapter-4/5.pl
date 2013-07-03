#!/usr/bin/perl

use strict;
use 5.010;

sub greet {
	my($name) = @_;
	state @names;
	print "Hi $name ! ";
	if ( @names ) {
		print "I have seen : @names \n";
		
		push(@names , $name);
	} else {
		print "You are the first one here! \n";
		push(@names , $name);
	}
}

greet("Fred");
greet("Barney");
greet("Wilma");
greet("Betty");