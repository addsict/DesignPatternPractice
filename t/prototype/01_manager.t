use strict;
use warnings;
use Test::More;

use Prototype::Manager;

my $manager = Prototype::Manager->new();
isa_ok($manager, 'Prototype::Manager');

subtest 'can register object' => sub {
    my $product = {};
    $manager->register('myproduct', $product);
    is $product, $manager->get_product('myproduct');
};

subtest 'can create from prototype' => sub {
    {
        package DummyProduct;
        sub clone {
            'hoge';
        };
    }
    my $dummy = bless {}, 'DummyProduct';
    $manager->register('dummy', $dummy);
    is $manager->create('dummy'), 'hoge';
};

done_testing();
