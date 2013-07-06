#!/usr/bin/perl

use strict;

while(<>) {
	if(/fred/) { # use /(f|F)red/ if you want match both fred and Fred
		print "$_\n";
	}
}