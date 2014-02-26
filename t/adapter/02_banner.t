use strict;
use warnings;
use Test::More;

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

subtest 'can print strong' => sub {
    my $pb = Adapter::PrintBanner->new('Hello');
    my $output;
    open my $fh, '>', \$output;
    $pb->printStrong($fh);
    close $fh;
    is $output, '*Hello*';
};

done_testing;
