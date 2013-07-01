#!/usr/bin/perl

$pi = 3.141925;

chomp( $radius = <STDIN> );

$circumference = 2 * $pi * $radius;


print "Circumference of circle with radius : $radius is : $circumference \n";