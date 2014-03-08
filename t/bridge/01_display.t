use strict;
use warnings;

use Test::More;
use Bridge::Display;

{
    package DummyDisplayImpl;
    sub raw_open {
        'open';
    };
    sub raw_print {
        'print';
    };
    sub raw_close {
        'close';
    };
}

subtest 'isa' => sub {
    my $dummy_impl = bless {}, 'DummyDisplayImpl';
    my $display = Bridge::Display->new(
        impl => $dummy_impl,
    );
    isa_ok $display, 'Bridge::Display';
};

done_testing;
