package Singleton::Triple;

my @shared_instance = (undef, undef, undef);

sub _new {
    my $class = shift;
    bless {
    }, $class;
}

sub get_instance {
    my ($class, $id) = @_;
    if (defined $shared_instance[$id]) {
        return $shared_instance[$id];
    } else {
        return $shared_instance[$id] = $class->_new;
    }
}

1;
