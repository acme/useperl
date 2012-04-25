package WWW::UsePerl::Server::Schema::Result::Journal;

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

WWW::UsePerl::Server::Schema::Result::Journal

=cut

__PACKAGE__->table("journals");

=head1 ACCESSORS

=head2 id

  data_type: 'mediumint'
  extra: {unsigned => 1}
  is_auto_increment: 1
  is_nullable: 0

=head2 uid

  data_type: 'mediumint'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 0

=head2 date

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  default_value: '0000-00-00 00:00:00'
  is_nullable: 0

=head2 description

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 80

=head2 posttype

  data_type: 'tinyint'
  default_value: 2
  is_nullable: 0

=head2 discussion

  data_type: 'mediumint'
  extra: {unsigned => 1}
  is_nullable: 1

=head2 tid

  data_type: 'smallint'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 0

=head2 last_update

  data_type: 'timestamp'
  datetime_undef_if_invalid: 1
  default_value: current_timestamp
  is_nullable: 0

=head2 promotetype

  data_type: 'enum'
  default_value: 'publish'
  extra: {list => ["publicize","publish","post"]}
  is_nullable: 0

=head2 srcid_32

  data_type: 'bigint'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 0

=head2 srcid_24

  data_type: 'bigint'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 0

=head2 article

  data_type: 'text'
  is_nullable: 0

=head2 introtext

  data_type: 'text'
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "id",
  {
    data_type => "mediumint",
    extra => { unsigned => 1 },
    is_auto_increment => 1,
    is_nullable => 0,
  },
  "uid",
  {
    data_type => "mediumint",
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
  "description",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 80 },
  "posttype",
  { data_type => "tinyint", default_value => 2, is_nullable => 0 },
  "discussion",
  { data_type => "mediumint", extra => { unsigned => 1 }, is_nullable => 1 },
  "tid",
  {
    data_type => "smallint",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 0,
  },
  "last_update",
  {
    data_type => "timestamp",
    datetime_undef_if_invalid => 1,
    default_value => \"current_timestamp",
    is_nullable => 0,
  },
  "promotetype",
  {
    data_type => "enum",
    default_value => "publish",
    extra => { list => ["publicize", "publish", "post"] },
    is_nullable => 0,
  },
  "srcid_32",
  {
    data_type => "bigint",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 0,
  },
  "srcid_24",
  {
    data_type => "bigint",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 0,
  },
  "article",
  { data_type => "text", is_nullable => 0 },
  "introtext",
  { data_type => "text", is_nullable => 0 },
);
__PACKAGE__->set_primary_key("id");


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2012-04-25 20:55:29
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:69IdsQzoRgVuahqZ0Zs7xA

__PACKAGE__->belongs_to('user', 'WWW::UsePerl::Server::Schema::Result::User', 'uid');

# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
