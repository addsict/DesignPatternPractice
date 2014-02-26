package FactoryMethod::IDCard;

sub new {
    my ($class, $owner, $num) = @_;
    bless {
        owner => $owner,
        num => $num,
    }, $class;
}

sub get_owner {
    my $self = shift;
    $self->{owner};
}

sub get_num {
    my $self = shift;
    $self->{num};
}

1;
