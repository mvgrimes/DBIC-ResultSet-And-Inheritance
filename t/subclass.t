use strict;
use warnings;
use Test::More;

BEGIN { use_ok 'Schema::Test' }
my $schema = Schema::Test->connect('dbi:SQLite:dbname=test.sqlite');

is( $schema->resultset('ProductParent')->active_products()->count,
    3, 'found all products' );

is( $schema->resultset('ProductChild')->active_products()->count,
    2, 'found just the type 1 products' );
is( $schema->resultset('ProductChild2')->active_products()->count,
    1, 'found just the type 2 products' );

done_testing();
