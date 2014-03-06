use strict;
use warnings;
use Test::More;

use Prototype::Manager;
use Prototype::MessageBox;
use Prototype::UnderlinePen;

my $manager = Prototype::Manager->new();
$manager->register('box', Prototype::MessageBox->new('#'));
$manager->register('pen', Prototype::UnderlinePen->new('='));

my $box = $manager->create('box');
my $pen = $manager->create('pen');

is $box->use('Prototype!'), <<EOF;
##############
# Prototype! #
##############
EOF

is $pen->use('Prototype!'), <<EOF;
Prototype!
==========
EOF

done_testing;
