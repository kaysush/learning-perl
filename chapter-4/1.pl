#!/usr/bin/perl

use strict;

sub total {
	my $sum = 0;
	foreach ( @_ ) {
		$sum += $_;
	}

	$sum;
}

my @fred = qw (1 3 5 7 9);
my $total = &total ( @fred );
print "Total of ( @fred ) is $total \n";


print "Now taking input fron STDIN \n";

chomp(@fred = <STDIN>);

$total  = &total( @fred );

print "Now the total of ( @fred ) is $total \n";