use strict;
use warnings;
use Test::More;
use Builder::HTMLBuilder;

subtest 'isa' => sub {
    my $builder = Builder::HTMLBuilder->new();
    isa_ok $builder, 'Builder::HTMLBuilder';
};

subtest 'make_title' => sub {
    my $builder = Builder::HTMLBuilder->new();
    $builder->make_title('Hello');
    is $builder->get_result, "<h1>Hello</h1>\n";
};

subtest 'make_body' => sub {
    my $builder = Builder::HTMLBuilder->new();
    $builder->make_body('Hello');
    is $builder->get_result, "<b>Hello</b>\n";
};

done_testing;
