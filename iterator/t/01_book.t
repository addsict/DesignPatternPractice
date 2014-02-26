use strict;
use warnings;
use Test::More;

use Book;

my $book_name = 'Alice in wonderland';
my $book = Book->new($book_name);

isa_ok $book, 'Book' ;
is $book->get_name, $book_name ;

done_testing;
