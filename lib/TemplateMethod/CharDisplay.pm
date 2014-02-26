package TemplateMethod::CharDisplay;

use strict;
use warnings;
use parent qw/TemplateMethod::Display/;

sub open {
    print '<<';
}

sub close {
    print '>>';
}

sub print {
    my $self = shift;
    print $self->{str};
}

1;
