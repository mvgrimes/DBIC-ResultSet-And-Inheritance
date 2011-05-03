package Schema::Test::ResultSet::ProductParent;

use Moose;
# use namespace::autoclean;
extends 'DBIx::Class::ResultSet';

sub active_products {
    my ($self) = @_;

    return $self->search( {} );
}

1;
