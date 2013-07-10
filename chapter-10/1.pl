#!/usr/bin/perl

use strict;

my $rand = int(1 + rand 100);

while(1) {
	chomp(my $user_value = <STDIN>);
	#last if ( $user_value =~ /exit/i );
	#last if ( $user_value =~ /quit/i );
	#last if ( $user_value =~ /\s*/i );
	if( $user_value =~ /quit | exit |\As*\z/xi ) {
		print "Secret no. was $rand \n";
		last;
	}
	if ( $user_value < $rand){
		print "Too small\n";
	} elsif ($user_value > $rand) {
		print "Too large\n";
	} elsif( $user_value == $rand ) {  #can be replaced with else but for more clarification elsif is used
		print "Bingo.. Correct guess\n";
		last;
	}


}