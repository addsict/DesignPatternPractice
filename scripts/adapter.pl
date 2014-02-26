#!/usr/bin/env perl

use strict;
use warnings;

use Adapter::PrintBanner;

my $pb = Adapter::PrintBanner->new('begopa');
$pb->printWeak;
$pb->printStrong;
