#!/usr/bin/perl

use strict;
use 5.010001;


chomp(my $value = <STDIN>);

given($value){
	when ($_%(3) == 0) 	{ say("Fizz");continue}
	when ($_%(5) == 0) 	{ say("Bin");continue}
	when ($_%(7) == 0) 	{ say("Sausage");break}
	default 			{ say("Don't know what it is"); }
}
