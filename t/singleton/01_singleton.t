use strict;
use warnings;
use Test::More;
use Singleton;

my $s = Singleton->get_shared_instance;
isa_ok $s, 'Singleton';

my $s2 = Singleton->get_shared_instance;
ok $s == $s2;

done_testing;
