#!/usr/bin/perl

use strict;
use 5.010;

my $rand = int(1 + rand 100);

say("The secret no. is $rand") if $ARGV[0]; # if any value is passed from command line then it shows the number

while(1){
	chomp(my $value = <STDIN>);
	given($value){
		when ($_ < $rand) 	{ say ("Too small."); }
		when ($_ > $rand) 	{ say ("Too Big."); }
		default 			{ say("Perfect");last; }
	}
}