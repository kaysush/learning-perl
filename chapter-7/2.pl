#!/usr/bin/perl

use strict;

while(<>) {
	if(/[fF]red/) { # use /(f|F)red/ if you want match both fred and Fred
		print "$_\n";
	}
}