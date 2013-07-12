#!/usr/bin/perl

use strict;
use DateTime;

my $dt1 = DateTime -> from_epoch(epoch => time);
my $dt2 = DateTime -> new (
	year => $ARGV[0],
	month => $ARGV[1],
	day => $ARGV[2],
	);

my $duration = $dt1 - $dt2;

my @units = $duration -> in_units(qw(years months days));

printf "%d years %d months %d days\n" , @units;