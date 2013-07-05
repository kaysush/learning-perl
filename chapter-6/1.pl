#!/usr/bin/perl

use strict;

my %family_name = (
	"fred" => "flinstones",
	"barney" => "rubble",
	"wilma" => "flinstones",
	);

print "Enter the name : ";
chomp(my $name = <STDIN>);

print "Family name for $name is : $family_name{$name} \n";