use utf8;
package Ext::Schema::Result::CompanyCat;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Ext::Schema::Result::CompanyCat

=cut

use strict;
use warnings;

use Moose;
use MooseX::NonMoose;
use MooseX::MarkAsMethods autoclean => 1;
extends 'DBIx::Class::Core';

=head1 COMPONENTS LOADED

=over 4

=item * L<DBIx::Class::InflateColumn::DateTime>

=back

=cut

__PACKAGE__->load_components("InflateColumn::DateTime");

=head1 TABLE: C<company_cat>

=cut

__PACKAGE__->table("company_cat");

=head1 ACCESSORS

=head2 cat_id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_auto_increment: 1
  is_nullable: 0

=head2 label

  data_type: 'varchar'
  is_nullable: 1
  size: 128

=cut

__PACKAGE__->add_columns(
  "cat_id",
  {
    data_type => "integer",
    extra => { unsigned => 1 },
    is_auto_increment => 1,
    is_nullable => 0,
  },
  "label",
  { data_type => "varchar", is_nullable => 1, size => 128 },
);

=head1 PRIMARY KEY

=over 4

=item * L</cat_id>

=back

=cut

__PACKAGE__->set_primary_key("cat_id");

=head1 RELATIONS

=head2 potential_employers_categories

Type: has_many

Related object: L<Ext::Schema::Result::PotentialEmployer>

=cut

__PACKAGE__->has_many(
  "potential_employers_categories",
  "Ext::Schema::Result::PotentialEmployer",
  { "foreign.category" => "self.cat_id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 potential_employers_categories_2s

Type: has_many

Related object: L<Ext::Schema::Result::PotentialEmployer>

=cut

__PACKAGE__->has_many(
  "potential_employers_categories_2s",
  "Ext::Schema::Result::PotentialEmployer",
  { "foreign.category" => "self.cat_id" },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2017-04-30 14:11:56
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:LxnpUE0jM0lXkekp4rlPlg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
