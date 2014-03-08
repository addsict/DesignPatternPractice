use strict;
use warnings;

use Test::More;
use Test::Output;
use Bridge::TextfileDisplayImpl;

subtest 'isa' => sub {
    my $impl = Bridge::TextfileDisplayImpl->new(
        filepath => './cpanfile',
    );
    isa_ok $impl, 'Bridge::TextfileDisplayImpl';
};

subtest 'raw open' => sub {
    my $dummyfile = 'hello world';
    my $impl = Bridge::TextfileDisplayImpl->new(
        filepath => \$dummyfile,
    );
    $impl->raw_open;
    isnt $impl->fh, undef;
};

subtest 'raw close' => sub {
    my $dummyfile = 'hello world';
    my $impl = Bridge::TextfileDisplayImpl->new(
        filepath => \$dummyfile,
    );
    $impl->raw_open;
    $impl->raw_close;
    is tell($impl->fh), -1;
};

subtest 'raw print' => sub {
    my $dummyfile = 'hello world';
    my $impl = Bridge::TextfileDisplayImpl->new(
        filepath => \$dummyfile,
    );
    $impl->raw_open;
    stdout_is sub {
        $impl->raw_print;
    }, 'hello world';
    $impl->raw_close;
};

done_testing;
