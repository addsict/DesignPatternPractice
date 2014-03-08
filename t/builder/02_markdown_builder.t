use strict;
use warnings;
use Test::More;
use Builder::MarkdownBuilder;

subtest 'isa' => sub {
    my $builder = Builder::MarkdownBuilder->new();
    isa_ok $builder, 'Builder::MarkdownBuilder';
};

subtest 'make_title' => sub {
    my $builder = Builder::MarkdownBuilder->new();
    $builder->make_title('Hello');
    is $builder->get_result, "Hello\n====\n";
};

subtest 'make_body' => sub {
    my $builder = Builder::MarkdownBuilder->new();
    $builder->make_body('Hello');
    is $builder->get_result, "*Hello*\n";
};

done_testing;
