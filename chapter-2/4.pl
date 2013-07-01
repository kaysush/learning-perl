#!/usr/bin/perl

print "Enter no 1 : ";
chomp( $num1 = <STDIN> );
print "Enter no 2 : ";
chomp( $num2 = <STDIN> );

$multiplication = $num1 * $num2;

print "multiplication of $num1 and $num2 is = $multiplication \n";