#!/usr/bin/perl

use strict;

while(<>) {
	s/Fred/some_arbitary_text/g;
	s/Wilma/Fred/g;
	s/some_arbitary_text/Wilma/g;

	print "$_\n";
}