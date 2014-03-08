use strict;
use warnings;
use Test::More;
use Test::Output;

use Bridge::Display;
use Bridge::CountDisplay;
use Bridge::StringDisplayImpl;
use Bridge::TextfileDisplayImpl;

subtest 'can display' => sub {
    my $impl = Bridge::StringDisplayImpl->new(
        message => 'hello',
    );
    my $display = Bridge::Display->new(
        impl => $impl,
    );
    stdout_is sub {
        $display->display;
    }, <<EOF;
=====
hello
=====
EOF
};

subtest 'can multi display' => sub {
    my $impl = Bridge::StringDisplayImpl->new(
        message => 'hello',
    );
    my $display = Bridge::CountDisplay->new(
        impl => $impl,
    );
    stdout_is sub {
        $display->multi_display(3);
    }, <<EOF;
=====
hello
hello
hello
=====
EOF
};

subtest 'can display text file' => sub {
    my $file = 'Hello World!';
    my $impl = Bridge::TextfileDisplayImpl->new(
        filepath => \$file,
    );
    my $display = Bridge::CountDisplay->new(
        impl => $impl,
    );
    chomp(my $expected = <<EOF);
Hello World!Hello World!Hello World!
EOF
    stdout_is sub {
        $display->multi_display(3);
    }, $expected;
};

done_testing;
