#!/usr/bin/perl

$pi = 3.141925;

chomp( $radius = <STDIN> );

if ( $radius < 0 ) {
	$circumference = 0;
} else {
	$circumference = 2 * $pi * $radius;
}

print "Circumference of circle with radius : $radius is : $circumference \n";