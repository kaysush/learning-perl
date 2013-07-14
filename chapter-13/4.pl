#!/usr/bin/perl

use strict;

my $dir = shift @ARGV;
die "Error!!! Usage : {folder_name} {file_names}" if (!defined $dir);
chdir $dir or die "Unable to change to $dir : $!" ;
#unlink @ARGV;  we can do that in one go 

foreach (@ARGV) { # Thsi method prints warning for each file individually
	unlink $_ or warn "Can't unlink $_ : $!\n";
}