package Adapter::Banner;

sub new {
    my ($class, $message) = @_;
    bless {
        message => $message,
    }, $class;
}

sub get_message_with_paren {
    my $self = shift;
    return '(' . $self->{message} . ')';
}

sub get_message_with_aster {
    my $self = shift;
    return '*' . $self->{message} . '*';
}

1;
