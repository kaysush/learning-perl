#!/usr/bin/perl

chomp( @lines = <STDIN> );
@lines = sort @lines;

# ALl on one line
print "@lines \n";

# Each one on separate line
foreach (@lines) {
	print "$_ \n";
}

# Another way of printing each one on separate line is remove the chomp() call on line 3.