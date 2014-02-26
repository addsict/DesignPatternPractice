use strict;
use warnings;
use Test::More;

use BookShelf;

subtest 'initialization' => sub {
    my $bs = BookShelf->new;
    is $bs->get_book_at(0), undef;
    is $bs->get_length, 0;
};

subtest 'has 1 book' => sub {
    my $bs = BookShelf->new;
    $bs->append_book({});
    isnt $bs->get_book_at(0), undef;
    is $bs->get_length, 1;
};

done_testing;
