package Bridge::CountDisplay;

use strict;
use warnings;
use utf8;

use parent 'Bridge::Display';

sub multi_display {
    my ($self, $count) = @_;
    $self->open;
    for (my $i = 0; $i < $count; $i++) {
        $self->print;
    }
    $self->close;
}

sub get_rand_value {
    int(rand 10)
}

sub random_display {
    my $self = shift;
    $self->open;
    my $count = $self->get_rand_value;
    for (my $i = 0; $i < $count; $i++) {
        $self->print;
    }
    $self->close;
}

1;
