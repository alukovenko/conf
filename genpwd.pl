#!/usr/bin/perl

use utf8;
use 5.014;
use warnings;

my @chars = ('0'..'9', 'A'..'Z', 'a'..'z');
for (0..9) {
    my $length = $ARGV[1] || 8;
    while ($length--) { print $chars[int(rand @chars)] }
    say '';
}
