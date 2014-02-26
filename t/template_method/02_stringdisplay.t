use strict;
use warnings;
use Test::More;
use Test::Output;

use TemplateMethod::StringDisplay;

my $sd = TemplateMethod::StringDisplay->new('Hello World');

stdout_is sub {
    $sd->display;
}, <<EOF, 'display by StringDisplay';
+-----------+
|Hello World|
|Hello World|
|Hello World|
|Hello World|
|Hello World|
+-----------+
EOF

done_testing;
