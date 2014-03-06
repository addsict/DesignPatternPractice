package Prototype::MessageBox;
use strict;
use warnings;

use Storable qw/dclone/;

sub new {
    my ($class, $decochar) = @_;
    bless {
        decochar => $decochar,
    }, $class;
}

sub clone {
    my $self = shift;
    dclone $self;
}

sub use {
    my ($self, $message) = @_;
    my $deco = $self->{decochar};
    my $decorated = ($deco x (length($message) + 4)) . "\n";
    $decorated .= "$deco $message $deco\n";
    $decorated .= ($deco x (length($message) + 4)) . "\n";
}

1; 
