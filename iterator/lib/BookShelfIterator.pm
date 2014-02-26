package BookShelfIterator;

sub new {
    my ($class, $book_shelf) = @_;
    bless {
        book_shelf => $book_shelf,
        index => 0,
    }, $class;
}

sub has_next {
    my $self = shift;
    if ($self->{book_shelf}->get_length > $self->{index}) {
        return 1;
    } else {
        return undef;
    }
}

sub next {
    my $self = shift;
    my $book = $self->{book_shelf}->get_book_at($self->{index});
    $self->{index}++;

    return $book;
}

sub has_prev {
    my $self = shift;
    if ($self->{index} > 0) {
        return 1;
    } else {
        return undef;
    }
}

sub prev {
    my $self = shift;
    my $book = $self->{book_shelf}->get_book_at($self->{index} - 1);
    $self->{index}--;

    return $book;
}

1;
