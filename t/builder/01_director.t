use strict;
use warnings;
use Test::More;
use Builder::Director;

subtest 'isa' => sub {
    my $builder = {};
    my $director = Builder::Director->new($builder);
    isa_ok $director, 'Builder::Director';
};

subtest 'construct' => sub {
    {
        package DummyBuilder;
        sub make_title {
            'foo';
        };
        sub make_body {
            'bar';
        };
        sub get_result {
            'baz';
        };
    }
    my $builder = bless {}, 'DummyBuilder';
    my $director = Builder::Director->new($builder);
    is $director->construct('aaa', 'bbb'), 'baz';
};

done_testing;
