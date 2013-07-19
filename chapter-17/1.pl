#!/usr/bin/perl

use strict;
use 5.010;

open IN , "<" , "strings";

chomp(my @strings = <IN>);

while(1){
	say("Enter the pattern");
	chomp(my $pattern = <STDIN>);
	last if ($pattern =~ /\A\s*\Z/);
	my @matched = eval {grep {/$pattern/} @strings;};
	if($@){
		say("Error Encountered : $@")
	} else {
		my $count = @matched;
		say("Total Matched : $count");
		say ("Matched Strings : \n", map {"$_\n"} @matched);
	}
}