package Prototype::Manager;
use strict;
use warnings;

sub new {
    my $class = shift;
    bless {
        products => {},
    }, $class;
}

sub register {
    my ($self, $product_name, $product) = @_;
    $self->{products}->{$product_name} = $product;
}

sub get_product {
    my ($self, $product_name) = @_;
    $self->{products}->{$product_name};
}

sub create {
    my ($self, $product_name) = @_;
    my $product = $self->{products}->{$product_name};
    return $product->clone();
}

1; 
