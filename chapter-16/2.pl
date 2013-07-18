#!/usr/bin/perl

use strict;

open STDOUT, ">" , "ls.out" or die "Can't open STDOUT";
open STDERR, ">" , "ls.err" or die "Can't open STDERR";

my $dir = $ARGV[0] // "\/home\/kaysush";

chdir $dir or die "Cannot switch to $dir : $!";

system 'ls -l';

