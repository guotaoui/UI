#!/usr/bin/env perl
use utf8;
use Encode qw(decode encode);
use File::Basename;

my @arr = `find . | grep '\*'`;

foreach my $org (@arr) {
    chomp $org;
    my $des = $org;
    $des =~ s/\*/x/g;
    print $des, "\n";
    
    `mv $org $des`;
}