use strict;
use warnings;

use Test::More;
use Test::Output;
use Bridge::CountDisplay;

{
    package DummyDisplayImpl;
    sub raw_open {
        print "open\n";
    };
    sub raw_print {
        print "print\n";
    };
    sub raw_close {
        print "close\n";
    };
}

subtest 'isa' => sub {
    my $dummy_impl = bless {}, 'DummyDisplayImpl';
    my $display = Bridge::CountDisplay->new({
        impl => $dummy_impl,
    });
    isa_ok $display, 'Bridge::CountDisplay';
};

subtest 'random display' => sub {
    my $dummy_impl = bless {}, 'DummyDisplayImpl';
    my $display = Bridge::CountDisplay->new(
        impl => $dummy_impl,
    );
    my $old_method = \&Bridge::CountDisplay::get_rand_value;
    *Bridge::CountDisplay::get_rand_value = sub {
        return 2;
    };
    stdout_is sub {
        $display->random_display;
    }, <<EOF;
open
print
print
close
EOF
    *Bridge::CoutnDisplay::get_rand_value = $old_method;
};

done_testing;
