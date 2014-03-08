package Bridge::Display;

use strict;
use warnings;
use utf8;

use Class::Accessor::Lite (
    new => 1,
    rw => ['impl'],
);

sub open {
    my $self = shift;
    $self->impl->raw_open;
}

sub print {
    my $self = shift;
    $self->impl->raw_print;
}

sub close {
    my $self = shift;
    $self->impl->raw_close;
}

sub display {
    my $self = shift;
    $self->open;
    $self->print;
    $self->close;
}

1;
