package Iterator::BookShelf;

use Iterator::BookShelfIterator;

sub new {
    my $class = shift;
    bless {
        books => [],
    }, $class
}

sub get_book_at {
    my ($self, $index) = @_;
    @{$self->{books}}[$index];
}

sub append_book {
    my ($self, $book) = @_;
    push @{$self->{books}}, $book;
}

sub get_length {
    my $self = shift;
    @{$self->{books}};
}

sub iterator {
    my $self = shift;
    Iterator::BookShelfIterator->new($self);
}

1;
