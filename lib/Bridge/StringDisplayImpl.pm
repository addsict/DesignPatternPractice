package Bridge::StringDisplayImpl;

use strict;
use warnings;
use utf8;

use Class::Accessor::Lite (
    new => 1,
    rw => [qw/message/],
);

sub raw_open {
    my $self = shift;
    print "=" x length($self->message) . "\n";
};

sub raw_print {
    my $self = shift;
    print $self->message . "\n";
};

sub raw_close {
    my $self = shift;
    print "=" x length($self->message) . "\n";
};

1;
