#!/usr/bin/env perl
#
# You are given two strings, $s and $t. The string $t is generated using the
# shuffled characters of the string $s with an additional character.
# 
# Write a script to find the additional character in the string $t..
# Example 1
# 
# Input: $s = "Perl" $t = "Preel"
# Output: "r"
# 
# Example 2
# 
# Input: $s = "Weekly" $t = "Weeakly"
# Output: "a"
# 
# Example 3
# 
# Input: $s = "Box" $t = "Boxy"
# Output: "y"
# 

use strict;
use warnings;
use Test2::V0 -no_srand => 1;
use Data::Dumper;

my $cases = [
    ['Perl',   'Preel'],
    ['Weekly', 'Weeakly'],
    ['Box',    'Boxy'],
];

sub odd_character
{
    my ($s, $t) = @_;

    ($s ^ $t) =~ /[^\000]/;

    return substr($t, $+[0]-1, 1);
}

is(odd_character($cases->[0]->@*), 'r', 'Example 1');
is(odd_character($cases->[1]->@*), 'a', 'Example 2');
is(odd_character($cases->[2]->@*), 'y', 'Example 3');
done_testing();

exit 0;
