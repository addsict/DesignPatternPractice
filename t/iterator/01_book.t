use strict;
use warnings;
use Test::More;

use Iterator::Book;

my $book_name = 'Alice in wonderland';
my $book = Iterator::Book->new($book_name);

isa_ok $book, 'Iterator::Book' ;
is $book->get_name, $book_name ;

done_testing;
