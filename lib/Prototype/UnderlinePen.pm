package Prototype::UnderlinePen;
use strict;
use warnings;
use Storable qw/dclone/;

sub new {
    my ($class, $ulchar) = @_;
    bless {
        ulchar => $ulchar,
    }, $class;
}

sub clone {
    my $self = shift;
    dclone $self;
}

sub use {
    my ($self, $message) = @_;
    my $ul = $self->{ulchar};

    my $underlined = "$message\n";
    $underlined .= $ul x length($message) . "\n";
}

1; 
