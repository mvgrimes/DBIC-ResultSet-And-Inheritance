package Schema::Test::ResultSet::ProductChild2;

use Moose;
# use namespace::autoclean;
extends 'DBIx::Class::ResultSet';

sub active_products {
    my ($self) = @_;

    return $self->search( { type => 2 } );
}

1;
