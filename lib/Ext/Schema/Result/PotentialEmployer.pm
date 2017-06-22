use utf8;
package Ext::Schema::Result::PotentialEmployer;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Ext::Schema::Result::PotentialEmployer

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

=head1 TABLE: C<potential_employers>

=cut

__PACKAGE__->table("potential_employers");

=head1 ACCESSORS

=head2 company_id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_auto_increment: 1
  is_nullable: 0

=head2 url

  data_type: 'text'
  is_nullable: 1

=head2 careers_url

  data_type: 'text'
  is_nullable: 1

=head2 name

  data_type: 'varchar'
  is_nullable: 1
  size: 128

=head2 category

  data_type: 'integer'
  extra: {unsigned => 1}
  is_foreign_key: 1
  is_nullable: 1

=head2 logo

  data_type: 'text'
  is_nullable: 1

=head2 location

  data_type: 'text'
  is_nullable: 1

=head2 description

  data_type: 'text'
  is_nullable: 1

=head2 active

  data_type: 'tinyint'
  is_nullable: 1

=head2 applied

  data_type: 'tinyint'
  is_nullable: 1

=head2 last_viewed

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "company_id",
  {
    data_type => "integer",
    extra => { unsigned => 1 },
    is_auto_increment => 1,
    is_nullable => 0,
  },
  "url",
  { data_type => "text", is_nullable => 1 },
  "careers_url",
  { data_type => "text", is_nullable => 1 },
  "name",
  { data_type => "varchar", is_nullable => 1, size => 128 },
  "category",
  {
    data_type => "integer",
    extra => { unsigned => 1 },
    is_foreign_key => 1,
    is_nullable => 1,
  },
  "logo",
  { data_type => "text", is_nullable => 1 },
  "location",
  { data_type => "text", is_nullable => 1 },
  "description",
  { data_type => "text", is_nullable => 1 },
  "active",
  { data_type => "tinyint", is_nullable => 1 },
  "applied",
  { data_type => "tinyint", is_nullable => 1 },
  "last_viewed",
  {
    data_type => "datetime",
    datetime_undef_if_invalid => 1,
    is_nullable => 1,
  },
);

=head1 PRIMARY KEY

=over 4

=item * L</company_id>

=back

=cut

__PACKAGE__->set_primary_key("company_id");

=head1 RELATIONS

=head2 category

Type: belongs_to

Related object: L<Ext::Schema::Result::CompanyCat>

=cut

__PACKAGE__->belongs_to(
  "category",
  "Ext::Schema::Result::CompanyCat",
  { cat_id => "category" },
  {
    is_deferrable => 1,
    join_type     => "LEFT",
    on_delete     => "RESTRICT",
    on_update     => "RESTRICT",
  },
);

=head2 category_2

Type: belongs_to

Related object: L<Ext::Schema::Result::CompanyCat>

=cut

__PACKAGE__->belongs_to(
  "category_2",
  "Ext::Schema::Result::CompanyCat",
  { cat_id => "category" },
  {
    is_deferrable => 1,
    join_type     => "LEFT",
    on_delete     => "RESTRICT",
    on_update     => "RESTRICT",
  },
);

=head2 company_bookmarks

Type: has_many

Related object: L<Ext::Schema::Result::CompanyBookmark>

=cut

__PACKAGE__->has_many(
  "company_bookmarks",
  "Ext::Schema::Result::CompanyBookmark",
  { "foreign.company_id" => "self.company_id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 company_notes

Type: has_many

Related object: L<Ext::Schema::Result::CompanyNote>

=cut

__PACKAGE__->has_many(
  "company_notes",
  "Ext::Schema::Result::CompanyNote",
  { "foreign.company_id" => "self.company_id" },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2017-04-30 14:11:56
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:9cjNyEq5k1y124OMV6jNhQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
