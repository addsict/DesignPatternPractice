use strict;
use warnings;
use Test::More;
use Builder::Director;

use_ok $_ for qw (
    Builder::Director
    Builder::HTMLBuilder
    Builder::MarkdownBuilder
);

done_testing;
