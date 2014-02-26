use strict;
use warnings;
use Test::More;
use Singleton::Triple;

my $t0 = Singleton::Triple->get_instance(0);
my $t1 = Singleton::Triple->get_instance(1);
my $t2 = Singleton::Triple->get_instance(2);

my $t0_2 = Singleton::Triple->get_instance(0);
my $t1_2 = Singleton::Triple->get_instance(1);
my $t2_2 = Singleton::Triple->get_instance(2);

ok $t0 == $t0_2;
ok $t1 == $t1_2;
ok $t2 == $t2_2;

done_testing;
