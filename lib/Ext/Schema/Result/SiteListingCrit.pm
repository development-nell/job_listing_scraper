use utf8;
package Ext::Schema::Result::SiteListingCrit;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Ext::Schema::Result::SiteListingCrit

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

=head1 TABLE: C<site_listing_crit>

=cut

__PACKAGE__->table("site_listing_crit");

=head1 ACCESSORS

=head2 site_listing_crit_id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_auto_increment: 1
  is_nullable: 0

=head2 pattern

  data_type: 'text'
  is_nullable: 1

=head2 aor

  data_type: 'enum'
  extra: {list => ["ACCEPT","REJECT"]}
  is_nullable: 1

=head2 type

  data_type: 'enum'
  extra: {list => ["TITLE","BODY"]}
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "site_listing_crit_id",
  {
    data_type => "integer",
    extra => { unsigned => 1 },
    is_auto_increment => 1,
    is_nullable => 0,
  },
  "pattern",
  { data_type => "text", is_nullable => 1 },
  "aor",
  {
    data_type => "enum",
    extra => { list => ["ACCEPT", "REJECT"] },
    is_nullable => 1,
  },
  "type",
  {
    data_type => "enum",
    extra => { list => ["TITLE", "BODY"] },
    is_nullable => 1,
  },
);

=head1 PRIMARY KEY

=over 4

=item * L</site_listing_crit_id>

=back

=cut

__PACKAGE__->set_primary_key("site_listing_crit_id");


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2017-04-30 14:11:56
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:DK+4kERKrcSQ+iH5yacW2w


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
