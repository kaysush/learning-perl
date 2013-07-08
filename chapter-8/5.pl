#!/usr/bin/perl

use strict;


while (<>) {
	chomp;
	if (/\b(?<WORD>\w*a)\b(?<AFTERWORD>.{0,5})/) { # little peek in solution
	print "Matched: $+{WORD} Afterword: $+{AFTERWORD}\n";
	} else {
		print "No match: |$_|\n";
	}
}