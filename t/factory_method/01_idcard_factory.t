use strict;
use warnings;
use Test::More;

use FactoryMethod::IDCardFactory;

my $factory = FactoryMethod::IDCardFactory->new;
is @{$factory->{owners}}, 0;

subtest 'create a card' => sub {
    my $idcard = $factory->create('yuuki');
    isa_ok $idcard, 'FactoryMethod::IDCard';
    is $idcard->get_owner, 'yuuki';
    is $idcard->get_num, 0;
    is @{$factory->{owners}}, 1;
    is $factory->{owners}->[0]->{owner}, 'yuuki';
    is $factory->{owners}->[0]->{num}, 0;
};

done_testing;
