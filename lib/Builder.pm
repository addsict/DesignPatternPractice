package Builder;

use strict;
use warnings;
use utf8;

use Class::Accessor::Lite (
    'rw' => [qw/buffer/],
);

sub new {
    my ($class) = @_;
    bless {
        buffer => '',
    }, $class;
}

sub get_result {
    my $self = shift;
    $self->buffer;
};

1;
