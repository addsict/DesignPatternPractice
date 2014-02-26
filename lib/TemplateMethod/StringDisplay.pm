package TemplateMethod::StringDisplay;

use strict;
use warnings;
use base qw/TemplateMethod::Display/;

sub open {
    my $self = shift;
    my $strlen = length $self->{str};
    print '+' . '-' x $strlen . "+\n";
}

sub close {
    my $self = shift;
    my $strlen = length $self->{str};
    print '+' . '-' x $strlen . "+\n";
}

sub print {
    my $self = shift;
    print '|' . $self->{str} . "|\n";
}

1;
