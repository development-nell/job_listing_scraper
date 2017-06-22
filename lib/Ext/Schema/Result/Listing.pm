use utf8;
package Ext::Schema::Result::Listing;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Ext::Schema::Result::Listing

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

=head1 TABLE: C<listing>

=cut

__PACKAGE__->table("listing");

=head1 ACCESSORS

=head2 listing_id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_auto_increment: 1
  is_nullable: 0

=head2 site_listing_id

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 title

  data_type: 'text'
  is_nullable: 1

=head2 url

  data_type: 'text'
  is_nullable: 1

=head2 description

  data_type: 'text'
  is_nullable: 1

=head2 posted

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  is_nullable: 1

=head2 site_id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_foreign_key: 1
  is_nullable: 1

=head2 applied

  data_type: 'tinyint'
  default_value: 0
  is_nullable: 1

=head2 active

  data_type: 'tinyint'
  default_value: 1
  is_nullable: 1

=head2 company_id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_nullable: 0

=head2 score

  data_type: 'integer'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "listing_id",
  {
    data_type => "integer",
    extra => { unsigned => 1 },
    is_auto_increment => 1,
    is_nullable => 0,
  },
  "site_listing_id",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "title",
  { data_type => "text", is_nullable => 1 },
  "url",
  { data_type => "text", is_nullable => 1 },
  "description",
  { data_type => "text", is_nullable => 1 },
  "posted",
  {
    data_type => "datetime",
    datetime_undef_if_invalid => 1,
    is_nullable => 1,
  },
  "site_id",
  {
    data_type => "integer",
    extra => { unsigned => 1 },
    is_foreign_key => 1,
    is_nullable => 1,
  },
  "applied",
  { data_type => "tinyint", default_value => 0, is_nullable => 1 },
  "active",
  { data_type => "tinyint", default_value => 1, is_nullable => 1 },
  "company_id",
  { data_type => "integer", extra => { unsigned => 1 }, is_nullable => 0 },
  "score",
  { data_type => "integer", is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</listing_id>

=back

=cut

__PACKAGE__->set_primary_key("listing_id");

=head1 RELATIONS

=head2 listing_bookmarks

Type: has_many

Related object: L<Ext::Schema::Result::ListingBookmark>

=cut

__PACKAGE__->has_many(
  "listing_bookmarks",
  "Ext::Schema::Result::ListingBookmark",
  { "foreign.listing_id" => "self.listing_id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 site

Type: belongs_to

Related object: L<Ext::Schema::Result::Site>

=cut

__PACKAGE__->belongs_to(
  "site",
  "Ext::Schema::Result::Site",
  { site_id => "site_id" },
  {
    is_deferrable => 1,
    join_type     => "LEFT",
    on_delete     => "RESTRICT",
    on_update     => "RESTRICT",
  },
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2017-05-01 11:26:34
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:5Ta0dB+DDEpLCWc/UZbNig

__PACKAGE__->has_one(
  "company",
  "Ext::Schema::Result::ListingCompany",
  { "foreign.listing_company_id" => "self.company_id" },
  { cascade_copy => 0, cascade_delete => 0 },
);



# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
