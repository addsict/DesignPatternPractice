package FactoryMethod::IDCardFactory;

use strict;
use warnings;
use parent qw/FactoryMethod::Factory/;
use FactoryMethod::IDCard;

sub new {
    my $class = shift;
    bless {
        owners => [],
    }, $class;
}

sub create_product {
    my ($self, $owner) = @_;
    my $num = $self->get_last_card_num;
    FactoryMethod::IDCard->new($owner, $num);
}

sub register_product {
    my ($self, $product) = @_;
    push @{$self->{owners}}, {
        owner => $product->get_owner,
        num => $product->get_num,
    };
}

sub get_last_card_num {
    my $self = shift;
    @{$self->{owners}};
}

sub get_owners {
    my $self = shift;
    @{$self->{owners}};
}

1;
