#!/usr/bin/perl

chomp( @numbers = <STDIN> );

@names = qw(fred betty barney dino wilma pebbles bamm-bamm);

# I have to do this -1 because thw questions wanted to start the list fron index 1.
for (@numbers) {
	print "@names[$_ - 1 ] ";
}

print "\n";