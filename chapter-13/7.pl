#!/usr/bin/perl

use strict;

use File::Basename;
use File::Spec;

my $softlink = $ARGV[0] eq "-s";
shift @ARGV if $softlink; # remove first element if -s option is given on commandline

my ($source , $dest) = @ARGV;

if(-d $dest) {
	my $basename = basename $source;
	$dest = File::Spec -> catfile($dest , $basename);
}

if($softlink){ # if -s is provided its a soft link
	symlink $source , $dest or die "Cant made soft link $source to $dest";
}
else{ # else a hard link
	link $source , $dest or die "Cant made hard link $source to $dest";
}

