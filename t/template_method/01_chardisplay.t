use strict;
use warnings;
use Test::More;
use Test::Output;

use TemplateMethod::CharDisplay;

my $cd = TemplateMethod::CharDisplay->new('W');

stdout_is sub {
    $cd->display;
}, '<<WWWWW>>', 'display by CharDisplay';

done_testing;
