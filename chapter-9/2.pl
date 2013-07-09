#!/usr/bin/perl

use strict;

my $in_filename = $ARGV[0];
my $out_filename  =$in_filename.".out";

if( ! defined $in_filename ) {
	die("Very less parameters passed");
}

open IN , "<" , $in_filename or die ("Unable to open file for reading : $!");
open OUT , ">" , $out_filename or die ("Unable to open file : $!");

while(<>) {
	s/fred/Larry/gi;
	print OUT $_;
}