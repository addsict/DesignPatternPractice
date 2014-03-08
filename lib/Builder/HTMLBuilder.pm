package Builder::HTMLBuilder;

use strict;
use warnings;
use utf8;

use parent 'Builder';

sub make_title {
    my ($self, $title) = @_;
    $self->buffer($self->buffer . "<h1>$title</h1>\n");
};

sub make_body {
    my ($self, $body) = @_;
    $self->buffer($self->buffer . "<b>$body</b>\n");
};

1;
