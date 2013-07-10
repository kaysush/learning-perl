#!/usr/bin/perl

use strict;

#my $DEBUG = $ARGV[0] // 0;
my $DEBUG =defined $ARGV[0] ? $ARGV[0] : 0;

print "Using debug : $DEBUG\n";


my $rand = int(1 + rand 100);

print "The secret no. is $rand \n" if $DEBUG;

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