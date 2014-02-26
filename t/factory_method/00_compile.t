use strict;
use warnings;
use Test::More;

use_ok $_ for qw(
    FactoryMethod
    FactoryMethod::Factory
    FactoryMethod::IDCardFactory
    FactoryMethod::IDCard
);

done_testing;
