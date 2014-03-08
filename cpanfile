requires 'Class::Accessor::Lite';

on 'test' => sub {
    requires 'Test::More';
    requires 'Devel::Cover';
    requires 'Test::Output';
};
