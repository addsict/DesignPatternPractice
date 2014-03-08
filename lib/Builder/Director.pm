package Builder::Director;

use strict;
use warnings;
use utf8;

use Class::Accessor::Lite (
    'rw' => ['builder'],
);

sub new {
    my ($class, $builder) = @_;
    bless {
        builder => $builder,
    }, $class;
}

sub construct {
    my ($self, $title, $body) = @_;
    $self->builder->make_title($title);
    $self->builder->make_body($body);
    $self->builder->get_result();
}

1;

