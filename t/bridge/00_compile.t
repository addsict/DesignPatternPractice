use strict;
use warnings;

use Test::More;
use Bridge::Display;

use_ok $_ for qw(
    Bridge::Display
    Bridge::CountDisplay
    Bridge::StringDisplayImpl
);

done_testing;
