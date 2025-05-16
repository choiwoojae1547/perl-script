#!/usr/bin/perl
use strict;
use warnings;

my %login_data;

while (<>) {
    chomp;
    if (/(\w+\d+)\s+(\d{4}-\d{2}-\d{2})\s+(\d{2}:\d{2})/) {
        my $user = $1;
        $login_data{$user} += 1;
    }
}

foreach my $user (sort keys %login_data) {
    my $count = $login_data{$user};
    print "$user : $count회 접속\n";
}
