#!/usr/bin/perl

# This is list context ,in case of scalar context as soon as you press enter that line will be passed to the program
# as we have already seen in the programs of chapter 2 when we read user input in scalar context ( $value = <STDIN> ).s
chomp( @lines = <STDIN> ); 

@lines = reverse @lines; 

print "Input in reverse order @lines \n";

# Just another way to print the entire list using foreach loop.
foreach (@lines) {
	print "$_ ";
}
# A new line just to keep it clean
print "\n";