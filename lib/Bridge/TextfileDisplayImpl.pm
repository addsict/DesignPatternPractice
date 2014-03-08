package Bridge::TextfileDisplayImpl;

use strict;
use warnings;
use utf8;

use Class::Accessor::Lite (
    new => 1,
    rw => [qw/filepath fh/],
);

sub raw_open {
    my $self = shift;
    open(my $fh, '<', $self->filepath);
    $self->fh($fh);
};

sub raw_print {
    my $self = shift;
    my $fh = $self->fh;
    seek $fh, 0, 0;
    foreach (<$fh>) {
        print $_;
    }
};

sub raw_close {
    my $self = shift;
    close($self->fh);
};

1;
