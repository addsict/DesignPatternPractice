use strict;
use warnings;
use Test::More;

use Prototype::MessageBox;

my $box = Prototype::MessageBox->new();
isa_ok($box, 'Prototype::MessageBox');

subtest 'can clone' => sub {
    my $box = Prototype::MessageBox->new('*');
    my $cloned = $box->clone();
    is_deeply $box, $cloned;
};

subtest 'can use original one' => sub {
    my $box = Prototype::MessageBox->new('*');
    is $box->use('Hello'), <<EOF;
*********
* Hello *
*********
EOF
};

subtest 'can use cloned one' => sub {
    my $box = Prototype::MessageBox->new('*');
    my $cloned = $box->clone();
    is $cloned->use('Hello'), <<EOF;
*********
* Hello *
*********
EOF
};

done_testing();
