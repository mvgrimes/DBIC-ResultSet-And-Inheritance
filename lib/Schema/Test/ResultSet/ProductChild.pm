package Schema::Test::ResultSet::ProductChild;

use Moose;
# use namespace::autoclean;
extends 'DBIx::Class::ResultSet';

sub active_products {
    my ($self) = @_;

    return $self->search( { type => 1 } );
}

1;
