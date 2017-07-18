use utf8;
package Ext::Schema::Result::Subsite;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Ext::Schema::Result::Subsite

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

=head1 TABLE: C<subsite>

=cut

__PACKAGE__->table("subsite");

=head1 ACCESSORS

=head2 subsite_id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_auto_increment: 1
  is_nullable: 0

=head2 site_id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_foreign_key: 1
  is_nullable: 1

=head2 url

  data_type: 'text'
  is_nullable: 1

=head2 search_url

  data_type: 'text'
  is_nullable: 1

=head2 listing_type

  data_type: 'enum'
  extra: {list => ["JOB","GIG"]}
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "subsite_id",
  {
    data_type => "integer",
    extra => { unsigned => 1 },
    is_auto_increment => 1,
    is_nullable => 0,
  },
  "site_id",
  {
    data_type => "integer",
    extra => { unsigned => 1 },
    is_foreign_key => 1,
    is_nullable => 1,
  },
  "url",
  { data_type => "text", is_nullable => 1 },
  "search_url",
  { data_type => "text", is_nullable => 1 },
  "listing_type",
  {
    data_type => "enum",
    extra => { list => ["JOB", "GIG"] },
    is_nullable => 1,
  },
);

=head1 PRIMARY KEY

=over 4

=item * L</subsite_id>

=back

=cut

__PACKAGE__->set_primary_key("subsite_id");

=head1 RELATIONS

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


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2017-07-11 14:19:28
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:WX6j4BXqi2QXOsOARGZSkQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
