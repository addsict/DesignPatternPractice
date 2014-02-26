#!/usr/bin/env perl

use strict;
use warnings;

use Book;
use BookShelf;

my $bs = BookShelf->new;
$bs->append_book(Book->new('Alice in wonderland'));
$bs->append_book(Book->new('Bob and Alice'));
$bs->append_book(Book->new('California Dream'));
$bs->append_book(Book->new('December night'));

my $iter = $bs->iterator();
while ($iter->has_next) {
    print $iter->next->get_name . "\n";
}
