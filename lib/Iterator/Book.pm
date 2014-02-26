package Iterator::Book;

use strict;
use warnings;

sub new {
    my $class = shift;
    my $name = shift;

    bless {
        name => $name,
    }, $class;
}

sub get_name {
    my $self = shift;
    $self->{name};
}

1;
