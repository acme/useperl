package WWW::UsePerl::Server::Schema::Result::Story;

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

WWW::UsePerl::Server::Schema::Result::Story

=cut

__PACKAGE__->table("stories");

=head1 ACCESSORS

=head2 stoid

  data_type: 'mediumint'
  extra: {unsigned => 1}
  is_auto_increment: 1
  is_nullable: 0

=head2 sid

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 16

=head2 uid

  data_type: 'mediumint'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 0

=head2 dept

  data_type: 'varchar'
  is_nullable: 1
  size: 100

=head2 time

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  default_value: '0000-00-00 00:00:00'
  is_nullable: 0

=head2 hits

  data_type: 'mediumint'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 0

=head2 discussion

  data_type: 'mediumint'
  extra: {unsigned => 1}
  is_nullable: 1

=head2 primaryskid

  data_type: 'smallint'
  extra: {unsigned => 1}
  is_nullable: 1

=head2 tid

  data_type: 'smallint'
  extra: {unsigned => 1}
  is_nullable: 1

=head2 submitter

  data_type: 'mediumint'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 0

=head2 commentcount

  data_type: 'smallint'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 0

=head2 hitparade

  data_type: 'varchar'
  default_value: '0,0,0,0,0,0,0'
  is_nullable: 0
  size: 64

=head2 writestatus

  data_type: 'enum'
  default_value: 'ok'
  extra: {list => ["ok","delete","dirty","archived"]}
  is_nullable: 0

=head2 is_archived

  data_type: 'enum'
  default_value: 'no'
  extra: {list => ["no","yes"]}
  is_nullable: 0

=head2 in_trash

  data_type: 'enum'
  default_value: 'no'
  extra: {list => ["no","yes"]}
  is_nullable: 0

=head2 day_published

  data_type: 'date'
  datetime_undef_if_invalid: 1
  default_value: '0000-00-00'
  is_nullable: 0

=head2 qid

  data_type: 'mediumint'
  extra: {unsigned => 1}
  is_nullable: 1

=head2 last_update

  data_type: 'timestamp'
  datetime_undef_if_invalid: 1
  default_value: current_timestamp
  is_nullable: 0

=head2 body_length

  data_type: 'mediumint'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 0

=head2 word_count

  data_type: 'mediumint'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 0

=head2 archive_last_update

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  default_value: '1970-01-01 00:00:00'
  is_nullable: 0

=head2 title

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 100

=head2 introtext

  data_type: 'text'
  is_nullable: 1

=head2 bodytext

  data_type: 'text'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "stoid",
  {
    data_type => "mediumint",
    extra => { unsigned => 1 },
    is_auto_increment => 1,
    is_nullable => 0,
  },
  "sid",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 16 },
  "uid",
  {
    data_type => "mediumint",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 0,
  },
  "dept",
  { data_type => "varchar", is_nullable => 1, size => 100 },
  "time",
  {
    data_type => "datetime",
    datetime_undef_if_invalid => 1,
    default_value => "0000-00-00 00:00:00",
    is_nullable => 0,
  },
  "hits",
  {
    data_type => "mediumint",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 0,
  },
  "discussion",
  { data_type => "mediumint", extra => { unsigned => 1 }, is_nullable => 1 },
  "primaryskid",
  { data_type => "smallint", extra => { unsigned => 1 }, is_nullable => 1 },
  "tid",
  { data_type => "smallint", extra => { unsigned => 1 }, is_nullable => 1 },
  "submitter",
  {
    data_type => "mediumint",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 0,
  },
  "commentcount",
  {
    data_type => "smallint",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 0,
  },
  "hitparade",
  {
    data_type => "varchar",
    default_value => "0,0,0,0,0,0,0",
    is_nullable => 0,
    size => 64,
  },
  "writestatus",
  {
    data_type => "enum",
    default_value => "ok",
    extra => { list => ["ok", "delete", "dirty", "archived"] },
    is_nullable => 0,
  },
  "is_archived",
  {
    data_type => "enum",
    default_value => "no",
    extra => { list => ["no", "yes"] },
    is_nullable => 0,
  },
  "in_trash",
  {
    data_type => "enum",
    default_value => "no",
    extra => { list => ["no", "yes"] },
    is_nullable => 0,
  },
  "day_published",
  {
    data_type => "date",
    datetime_undef_if_invalid => 1,
    default_value => "0000-00-00",
    is_nullable => 0,
  },
  "qid",
  { data_type => "mediumint", extra => { unsigned => 1 }, is_nullable => 1 },
  "last_update",
  {
    data_type => "timestamp",
    datetime_undef_if_invalid => 1,
    default_value => \"current_timestamp",
    is_nullable => 0,
  },
  "body_length",
  {
    data_type => "mediumint",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 0,
  },
  "word_count",
  {
    data_type => "mediumint",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 0,
  },
  "archive_last_update",
  {
    data_type => "datetime",
    datetime_undef_if_invalid => 1,
    default_value => "1970-01-01 00:00:00",
    is_nullable => 0,
  },
  "title",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 100 },
  "introtext",
  { data_type => "text", is_nullable => 1 },
  "bodytext",
  { data_type => "text", is_nullable => 1 },
);
__PACKAGE__->set_primary_key("stoid");
__PACKAGE__->add_unique_constraint("sid", ["sid"]);


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2012-04-22 11:20:27
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:UnOOZ8KMGhW/Dyf1b9yvhw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
