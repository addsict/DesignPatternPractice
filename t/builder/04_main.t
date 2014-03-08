use strict;
use warnings;
use Test::More;
use Builder::Director;
use Builder::MarkdownBuilder;
use Builder::HTMLBuilder;

subtest 'construct by MarkdownBuilder' => sub {
    my $builder = Builder::MarkdownBuilder->new();
    my $director = Builder::Director->new($builder);

    is $director->construct('Hello', 'World'), <<EOF;
Hello
====
*World*
EOF
};

subtest 'construct by HTMLBuilder' => sub {
    my $builder = Builder::HTMLBuilder->new();
    my $director = Builder::Director->new($builder);

    is $director->construct('Hello', 'World'), <<EOF;
<h1>Hello</h1>
<b>World</b>
EOF
};

done_testing;
