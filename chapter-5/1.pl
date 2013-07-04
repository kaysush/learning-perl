#!/usr/bin/perl

use strict;

@ARGV = reverse @ARGV;

while( <> ) {
	print "$_ \n";
}