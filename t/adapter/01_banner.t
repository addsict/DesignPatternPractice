use strict;
use warnings;
use Test::More;

use Adapter::Banner;

my $banner = Adapter::Banner->new('Hello');

isa_ok $banner, 'Adapter::Banner';
is $banner->get_message_with_paren, '(Hello)';
is $banner->get_message_with_aster, '*Hello*';

done_testing;
