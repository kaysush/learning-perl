#!/usr/bin/perl

use strict;

my $dir = $ARGV[0];

sub show_files{
	opendir DIR,".";
	foreach (sort readdir DIR) {
		print "$_ \n";
	}
}

if( defined($dir)) {
	if(chdir $dir){
		print "----Directory chagned to $dir----\n";
		&show_files;
	} else {
		print "Unable to change directory due to $!\n";
	}
} else {
	chdir;
	print "----Directory changed to home----\n";
	&show_files;
}
