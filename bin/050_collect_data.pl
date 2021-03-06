#!/usr/bin/env perl
use warnings;
use strict;

open ( my $datafile, '>>', '050_datafile.txt' ) or die "Unable to open 030_datafile for appending";

&uname;
&lspci;

sub uname {
    my $kernel_release = `uname -r`;
    print $datafile "Output from uname -r ................................\n";
    print $datafile $kernel_release, "\n";
}

sub lspci {
    # chomp( my $lspci_bin = `which lspci` );
    # print "------- $lspci_bin ----\n";
    my $lspci = `lspci`;
    print $datafile "\nOutput from lspci ................................\n";
    print $datafile $lspci;
}
