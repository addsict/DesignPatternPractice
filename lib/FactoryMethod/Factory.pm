package FactoryMethod::Factory;

use strict;
use warnings;
use Carp qw/croak/;

# This is a 'Factory Method'
sub create {
    my ($self, $owner) = @_;
    my $product = $self->create_product($owner);
    $self->register_product($product);
    return $product;
}

sub create_product {
    croak 'should override';
}

sub register_product {
    croak 'should override';
}

1;
