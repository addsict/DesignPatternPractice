use strict;
use warnings;
use Test::More;

use Iterator::BookShelf;

subtest 'initialization' => sub {
    my $bs = Iterator::BookShelf->new;
    is $bs->get_book_at(0), undef;
    is $bs->get_length, 0;
};

subtest 'has 1 book' => sub {
    my $bs = Iterator::BookShelf->new;
    $bs->append_book({});
    isnt $bs->get_book_at(0), undef;
    is $bs->get_length, 1;
};

done_testing;
