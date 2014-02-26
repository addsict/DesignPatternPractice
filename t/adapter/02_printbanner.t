use strict;
use warnings;
use Test::More;
use Test::Output;

use Adapter::PrintBanner;

subtest 'initialize' => sub {
    my $pb = Adapter::PrintBanner->new('Hello');
    isa_ok $pb, 'Adapter::PrintBanner';
};

subtest 'can print weak' => sub {
    my $pb = Adapter::PrintBanner->new('Hello');
    my $output;
    open my $fh, '>', \$output;
    $pb->printWeak($fh);
    close $fh;
    is $output, '(Hello)';
};

stdout_is sub {
    my $pb = Adapter::PrintBanner->new('Hello');
    $pb->printWeak;
}, '(Hello)', 'can print weak w/o fh';

subtest 'can print strong' => sub {
    my $pb = Adapter::PrintBanner->new('Hello');
    my $output;
    open my $fh, '>', \$output;
    $pb->printStrong($fh);
    close $fh;
    is $output, '*Hello*';
};

stdout_is sub {
    my $pb = Adapter::PrintBanner->new('Hello');
    $pb->printStrong;
}, '*Hello*', 'can print strong w/o fh';

done_testing;
