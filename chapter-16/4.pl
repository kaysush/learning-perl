#!/usr/bin/perl

use strict;

print "My PID is $$\n";
my %count;

sub sighup {
	print "SIGHUP : Already found it $count{'HUP'} times\n" if $count{'HUP'}++;
}

sub sigcont {
	print "SIGCONT : Already found it $count{'CONT'} times\n" if $count{'CONT'}++;
}

sub sigint {
	die "Interrupted... Exiting";
}


$SIG{'HUP'} = 'sighup';
$SIG{'CONT'} = 'sigcont';
$SIG{'INT'} = 'sigint';



while(1) {
	# do nothing loop
}
