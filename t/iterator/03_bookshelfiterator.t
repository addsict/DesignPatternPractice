use strict;
use warnings;
use Test::More;

use Iterator::BookShelf;

subtest 'can not iterate with 0 book' => sub {
    my $bs = Iterator::BookShelf->new;
    my $iter = $bs->iterator;

    is $iter->has_next, undef;
};

subtest 'can iterate with 1 book' => sub {
    my $bs = Iterator::BookShelf->new;
    $bs->append_book({});

    my $iter = $bs->iterator;
    # 1st iterate
    is $iter->has_next, 1;
    isnt $iter->next, undef;
    # 2nd iterate
    is $iter->has_next, undef;
    is $iter->next, undef;
};

subtest 'can prev iterate with 1 book' => sub {
    my $bs = Iterator::BookShelf->new;
    $bs->append_book({});

    my $iter = $bs->iterator;
    is $iter->has_prev, undef;
    $iter->next;
    isnt $iter->has_prev, undef;
    isnt $iter->prev, undef;
};

done_testing;
