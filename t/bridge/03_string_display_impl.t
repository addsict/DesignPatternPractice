use strict;
use warnings;

use Test::More;
use Test::Output;
use Bridge::StringDisplayImpl;

subtest 'isa' => sub {
    my $impl = Bridge::StringDisplayImpl->new(
        message => 'hello',
    );
    isa_ok $impl, 'Bridge::StringDisplayImpl';
};

subtest 'can open' => sub {
    my $impl = Bridge::StringDisplayImpl->new(
        message => 'hello',
    );
    stdout_is sub {
        $impl->raw_open;
    }, "=====\n";
};

subtest 'can print' => sub {
    my $impl = Bridge::StringDisplayImpl->new(
        message => 'hello',
    );
    stdout_is sub {
        $impl->raw_print;
    }, "hello\n";
};

subtest 'can close' => sub {
    my $impl = Bridge::StringDisplayImpl->new(
        message => 'hello',
    );
    stdout_is sub {
        $impl->raw_close;
    }, "=====\n";
};

done_testing;
