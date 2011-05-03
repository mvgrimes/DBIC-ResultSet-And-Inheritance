package Schema::Test::Result::ProductParent;

use Moose;
use MooseX::NonMoose;
# use namespace::autoclean;
extends 'DBIx::Class::Core';

__PACKAGE__->load_components("InflateColumn::DateTime");
__PACKAGE__->table("Product");

__PACKAGE__->add_columns(
  "id", { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "name", { data_type => "varchar", is_nullable => 0, size => 255 },
  "type", { data_type => "integer", is_nullable => 0 },
);
__PACKAGE__->set_primary_key("id");


__PACKAGE__->meta->make_immutable;
1;
