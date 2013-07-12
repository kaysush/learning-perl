#1/usr/bin/perl

use strict;
use Module::CoreList;

my %modules_hash = %{ $Module::CoreList::version{5.014} };

my @keys = keys %modules_hash;

foreach (@keys) {
	print "$_\n";
}