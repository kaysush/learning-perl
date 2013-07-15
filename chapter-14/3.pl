#!/usr/bin/perl

use strict;

my $string = "This is a test";
chomp(my $substr = <STDIN>);
my $length = length $substr;
my $index = 0;

while(1) {
 $index = index($string , $substr , $index);
 last if $index < 0;
 print "Found at $index\n";
 $index += $length;
}