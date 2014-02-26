use strict;
use warnings;

use Test::More;

use_ok $_ for qw(
    TemplateMethod
    TemplateMethod::Display
    TemplateMethod::CharDisplay
    TemplateMethod::StringDisplay
);

done_testing;
