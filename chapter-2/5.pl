#!/usr/bin/perl

print "Enter the iterations : ";

chomp( $iterations = <STDIN> );

print "Enter the string : ";

chomp( $string = <STDIN> );

print $string x $iterations . "\n";