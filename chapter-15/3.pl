#!/usr/bin/perl

use strict;
use 5.010001;

foreach (@ARGV) {
	say("Checking : $_");
	when ( -r $_ ) 	{ print("Readable ");continue }
	when ( -w $_ ) 	{ print("Writable ");continue }
	when ( -x $_ ) 	{ print("Executable ");continue }
	default 		{say("");}

}