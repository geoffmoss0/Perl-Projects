#!/usr/bin/perl
use warnings;
use strict;

my $i = 1;
my $j = 2;
my $prime = 1;

while (<STDIN>) {
	chomp;
	last if $_ eq "end";
	while ($i < $_) {
		$i++;
		$j = 2;
		while ($j < ($i^(1/2))) {
			if ($i % $j == 0) {$prime = 0; $j++; last;}
			else {$j++; $prime = 1}
		}
	if ($prime == 1) {print "$i, "}	
	}	
}	