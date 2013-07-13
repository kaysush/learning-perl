#!/usr/bin/perl

use strict;

sub test_file {
	my ($filename)=@_;
	print "$filename :";
	if( -e $filename ){
	print " Readable," if -r $filename;
	print " Writable," if -w $filename;
	print " Executable" if -x $filename;
	print "\n";
	} else {
		print " doesn't exists\n";
	}
}


foreach (@ARGV) {
	test_file($_);
}