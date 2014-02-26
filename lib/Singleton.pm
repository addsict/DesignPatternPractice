package Singleton;

my $shared_instance;

sub _new {
    my $class = shift;
    bless {
    }, $class;
}

sub get_shared_instance {
    my $class = shift;
    if (defined $shared_instance) {
        return $shared_instance;
    } else {
        return $shared_instance = $class->_new;
    }
}

1;
