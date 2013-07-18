#!/usr/bin/perl

use strict;

my $dir = $ARGV[0] // "\/home\/kaysush";

chdir $dir or die "Cannot switch to $dir : $!";

system 'ls -l 1>ls.out 2>ls.err';

