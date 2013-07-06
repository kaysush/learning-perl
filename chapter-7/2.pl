#!/usr/bin/perl

use strict;

while(<>) {
	if(/(f|F)red/) { # use /(f|F)red/ if you want match both fred and Fred
		print "$_\n";
	}
}