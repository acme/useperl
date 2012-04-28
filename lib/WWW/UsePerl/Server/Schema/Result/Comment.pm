package WWW::UsePerl::Server::Schema::Result::Comment;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use strict;
use warnings;

use Moose;
use MooseX::NonMoose;
use namespace::autoclean;
extends 'DBIx::Class::Core';

__PACKAGE__->load_components("InflateColumn::DateTime");

=head1 NAME

WWW::UsePerl::Server::Schema::Result::Comment

=cut

__PACKAGE__->table("comments");

=head1 ACCESSORS

=head2 sid

  data_type: 'mediumint'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 0

=head2 cid

  data_type: 'integer'
  extra: {unsigned => 1}
  is_auto_increment: 1
  is_nullable: 0

=head2 pid

  data_type: 'integer'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 0

=head2 date

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  default_value: '0000-00-00 00:00:00'
  is_nullable: 0

=head2 last_update

  data_type: 'timestamp'
  datetime_undef_if_invalid: 1
  default_value: current_timestamp
  is_nullable: 0

=head2 ipid

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 32

=head2 subnetid

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 32

=head2 subject

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 50

=head2 subject_orig

  data_type: 'enum'
  default_value: 'yes'
  extra: {list => ["no","yes"]}
  is_nullable: 0

=head2 uid

  data_type: 'mediumint'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 0

=head2 points

  data_type: 'tinyint'
  default_value: 0
  is_nullable: 0

=head2 pointsorig

  data_type: 'tinyint'
  default_value: 0
  is_nullable: 0

=head2 pointsmax

  data_type: 'tinyint'
  default_value: 0
  is_nullable: 0

=head2 lastmod

  data_type: 'mediumint'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 0

=head2 reason

  data_type: 'tinyint'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 0

=head2 signature

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 32

=head2 karma_bonus

  data_type: 'enum'
  default_value: 'no'
  extra: {list => ["yes","no"]}
  is_nullable: 0

=head2 subscriber_bonus

  data_type: 'enum'
  default_value: 'no'
  extra: {list => ["no","yes"]}
  is_nullable: 0

=head2 len

  data_type: 'smallint'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 0

=head2 karma

  data_type: 'smallint'
  default_value: 0
  is_nullable: 0

=head2 karma_abs

  data_type: 'smallint'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 0

=head2 tweak_orig

  data_type: 'tinyint'
  default_value: 0
  is_nullable: 0

=head2 tweak

  data_type: 'tinyint'
  default_value: 0
  is_nullable: 0

=head2 badge_id

  data_type: 'tinyint'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 0

=head2 comment

  data_type: 'text'
  is_nullable: 0

=head2 journal_id

  data_type: 'mediumint'
  extra: {unsigned => 1}
  is_nullable: 1

=head2 stoid

  data_type: 'mediumint'
  extra: {unsigned => 1}
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "sid",
  {
    data_type => "mediumint",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 0,
  },
  "cid",
  {
    data_type => "integer",
    extra => { unsigned => 1 },
    is_auto_increment => 1,
    is_nullable => 0,
  },
  "pid",
  {
    data_type => "integer",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 0,
  },
  "date",
  {
    data_type => "datetime",
    datetime_undef_if_invalid => 1,
    default_value => "0000-00-00 00:00:00",
    is_nullable => 0,
  },
  "last_update",
  {
    data_type => "timestamp",
    datetime_undef_if_invalid => 1,
    default_value => \"current_timestamp",
    is_nullable => 0,
  },
  "ipid",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 32 },
  "subnetid",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 32 },
  "subject",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 50 },
  "subject_orig",
  {
    data_type => "enum",
    default_value => "yes",
    extra => { list => ["no", "yes"] },
    is_nullable => 0,
  },
  "uid",
  {
    data_type => "mediumint",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 0,
  },
  "points",
  { data_type => "tinyint", default_value => 0, is_nullable => 0 },
  "pointsorig",
  { data_type => "tinyint", default_value => 0, is_nullable => 0 },
  "pointsmax",
  { data_type => "tinyint", default_value => 0, is_nullable => 0 },
  "lastmod",
  {
    data_type => "mediumint",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 0,
  },
  "reason",
  {
    data_type => "tinyint",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 0,
  },
  "signature",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 32 },
  "karma_bonus",
  {
    data_type => "enum",
    default_value => "no",
    extra => { list => ["yes", "no"] },
    is_nullable => 0,
  },
  "subscriber_bonus",
  {
    data_type => "enum",
    default_value => "no",
    extra => { list => ["no", "yes"] },
    is_nullable => 0,
  },
  "len",
  {
    data_type => "smallint",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 0,
  },
  "karma",
  { data_type => "smallint", default_value => 0, is_nullable => 0 },
  "karma_abs",
  {
    data_type => "smallint",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 0,
  },
  "tweak_orig",
  { data_type => "tinyint", default_value => 0, is_nullable => 0 },
  "tweak",
  { data_type => "tinyint", default_value => 0, is_nullable => 0 },
  "badge_id",
  {
    data_type => "tinyint",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 0,
  },
  "comment",
  { data_type => "text", is_nullable => 0 },
  "journal_id",
  { data_type => "mediumint", extra => { unsigned => 1 }, is_nullable => 1 },
  "stoid",
  { data_type => "mediumint", extra => { unsigned => 1 }, is_nullable => 1 },
);
__PACKAGE__->set_primary_key("cid");


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2012-04-28 20:04:50
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:njvFom39mRG+XSmyox6TRw

__PACKAGE__->belongs_to('user', 'WWW::UsePerl::Server::Schema::Result::User', 'uid');

# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
