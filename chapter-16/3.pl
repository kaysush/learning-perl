#!/usr/bin/perl

use strict;
use 5.010001;

my $date = `date`;

#my @weekdays = ("Mon" , "Tue" , "Wed" , "Thu" , "Fri");
my @weekdays = qw(Mon Tue Wed Thu Fri);

my ($day) = $date =~ /(\S+)(\s+)(.*)/;
chomp($day);
print "Current Day : $day (@weekdays)\n";
if ( @weekdays ~~ $day ) {
	print "GO to work\n";
} else {
	print "Go play\n";
}