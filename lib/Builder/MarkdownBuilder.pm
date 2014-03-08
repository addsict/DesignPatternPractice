package Builder::MarkdownBuilder;

use strict;
use warnings;
use utf8;

use parent 'Builder';

sub make_title {
    my ($self, $title) = @_;
    $self->buffer($self->buffer . "$title\n====\n");
};

sub make_body {
    my ($self, $body) = @_;
    $self->buffer($self->buffer . "*$body*\n");
};

1;
