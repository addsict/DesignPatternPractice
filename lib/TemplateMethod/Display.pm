package TemplateMethod::Display;

use strict;
use warnings;
use Carp qw/croak/;

sub new {
    my ($class, $str) = @_;
    bless {
        str => $str,
    }, $class;
}

sub open {
    croak 'should override';
}

sub close {
    croak 'should override';
}

sub print {
    croak 'should override';
}

sub display {
    my $self = shift;
    $self->open;
    for (my $i = 0; $i < 5; $i++) {
        $self->print;
    }
    $self->close;
}

1;
