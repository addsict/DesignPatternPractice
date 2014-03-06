use strict;
use warnings;
use Test::More;

use Prototype::UnderlinePen;

my $pen = Prototype::UnderlinePen->new();
isa_ok($pen, 'Prototype::UnderlinePen');

subtest 'can clone' => sub {
    my $pen = Prototype::UnderlinePen->new('~');
    my $cloned = $pen->clone();
    is_deeply $pen, $cloned;
};

subtest 'can use original one' => sub {
    my $pen = Prototype::UnderlinePen->new('~');
    is $pen->use('Hello'), <<EOF;
Hello
~~~~~
EOF
};

subtest 'can use cloned one' => sub {
    my $pen = Prototype::UnderlinePen->new('~');
    my $cloned = $pen->clone();
    is $cloned->use('Hello'), <<EOF;
Hello
~~~~~
EOF
};

done_testing();
