use utf8;
package Ext::Schema::Result::ListingScore;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Ext::Schema::Result::ListingScore

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

=head1 TABLE: C<listing_score>

=cut

__PACKAGE__->table("listing_score");

=head1 ACCESSORS

=head2 listing_score_id

  data_type: 'integer'
  extra: {unsigned => 1}
  is_auto_increment: 1
  is_nullable: 0

=head2 pattern

  data_type: 'text'
  is_nullable: 1

=head2 multiplier

  data_type: 'integer'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "listing_score_id",
  {
    data_type => "integer",
    extra => { unsigned => 1 },
    is_auto_increment => 1,
    is_nullable => 0,
  },
  "pattern",
  { data_type => "text", is_nullable => 1 },
  "multiplier",
  { data_type => "integer", is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</listing_score_id>

=back

=cut

__PACKAGE__->set_primary_key("listing_score_id");


# Created by DBIx::Class::Schema::Loader v0.07045 @ 2017-05-01 10:19:39
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:B5mn1TqT0k4hIQhQauradg


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
