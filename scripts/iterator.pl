#!/usr/bin/env perl

use strict;
use warnings;

use Iterator::Book;
use Iterator::BookShelf;

my $bs = Iterator::BookShelf->new;
$bs->append_book(Iterator::Book->new('Alice in wonderland'));
$bs->append_book(Iterator::Book->new('Bob and Alice'));
$bs->append_book(Iterator::Book->new('California Dream'));
$bs->append_book(Iterator::Book->new('December night'));

my $iter = $bs->iterator();
while ($iter->has_next) {
    print $iter->next->get_name . "\n";
}
