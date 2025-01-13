#!/usr/bin/env perl
use strict; use warnings; use feature qw/say signatures/;
#**
#  @file 
#  @brief A perl script that extracts an ID
#*

#** @function getid (in)
# @brief extract lunaid from input string
# @param in input string
# @return extracted id or empty string
#*
sub getid($in) {
   $in =~ m/\d{5}_\d{8}/;
   return ($& or "");
}

# main
unless (caller) {
  say getid($_) while($_=<>);
}



=cut
# use Perl::RunEND's C<perl-run-end>
require 'dcmtab_bids';
# in iperl, reply, or pdl2: Module::Refresh->refresh
use Data::Dumper;
use Test2::V0;
use Test::Exception;
is(getid("abc/12345_20120131/xyz"), "12345_20120131")

