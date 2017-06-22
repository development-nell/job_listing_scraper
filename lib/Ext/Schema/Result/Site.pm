use utf8;
package Ext::Schema::Result::Site;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Ext::Schema::Result::Site

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

=head1 TABLE: C<sites>

=cut

__PACKAGE__->table("sites");

=head1 ACCESSORS

=head2 site_id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_auto_increment: 1
  is_nullable: 0

=head2 name

  data_type: 'text'
  is_nullable: 1

=head2 url

  data_type: 'text'
  is_nullable: 1

=head2 active

  data_type: 'tinyint'
  is_nullable: 1

=head2 search_url

  data_type: 'text'
  is_nullable: 1

=head2 username

  data_type: 'varchar'
  is_nullable: 1
  size: 128

=head2 password

  data_type: 'varchar'
  is_nullable: 1
  size: 255

=head2 requires_login

  data_type: 'tinyint'
  is_nullable: 1

=head2 class_name

  data_type: 'varchar'
  is_nullable: 1
  size: 32

=cut

__PACKAGE__->add_columns(
  "site_id",
  {
    data_type => "integer",
    extra => { unsigned => 1 },
    is_auto_increment => 1,
    is_nullable => 0,
  },
  "name",
  { data_type => "text", is_nullable => 1 },
  "url",
  { data_type => "text", is_nullable => 1 },
  "active",
  { data_type => "tinyint", is_nullable => 1 },
  "search_url",
  { data_type => "text", is_nullable => 1 },
  "username",
  { data_type => "varchar", is_nullable => 1, size => 128 },
  "password",
  { data_type => "varchar", is_nullable => 1, size => 255 },
  "requires_login",
  { data_type => "tinyint", is_nullable => 1 },
  "class_name",
  { data_type => "varchar", is_nullable => 1, size => 32 },
);

=head1 PRIMARY KEY

=over 4

=item * L</site_id>

=back

=cut

__PACKAGE__->set_primary_key("site_id");

=head1 RELATIONS

=head2 listings

Type: has_many

Related object: L<Ext::Schema::Result::Listing>

=cut

__PACKAGE__->has_many(
  "listings",
  "Ext::Schema::Result::Listing",
  { "foreign.site_id" => "self.site_id" },
  { cascade_copy => 0, cascade_delete => 0 },
);

=head2 subsites

Type: has_many

Related object: L<Ext::Schema::Result::Subsite>

=cut

__PACKAGE__->has_many(
  "subsites",
  "Ext::Schema::Result::Subsite",
  { "foreign.site_id" => "self.site_id" },
  { cascade_copy => 0, cascade_delete => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2017-04-30 21:24:34
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:a3bAJU8TLx2jYsRHu8iMlw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
