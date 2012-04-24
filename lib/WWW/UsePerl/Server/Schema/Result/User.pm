package WWW::UsePerl::Server::Schema::Result::User;

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

WWW::UsePerl::Server::Schema::Result::User

=cut

__PACKAGE__->table("users");

=head1 ACCESSORS

=head2 uid

  data_type: 'mediumint'
  extra: {unsigned => 1}
  is_auto_increment: 1
  is_nullable: 0

=head2 nickname

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 20

=head2 realemail

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 50

=head2 fakeemail

  data_type: 'varchar'
  is_nullable: 1
  size: 75

=head2 homepage

  data_type: 'varchar'
  is_nullable: 1
  size: 100

=head2 passwd

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 0
  size: 32

=head2 sig

  data_type: 'varchar'
  is_nullable: 1
  size: 200

=head2 seclev

  data_type: 'mediumint'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 0

=head2 matchname

  data_type: 'varchar'
  is_nullable: 1
  size: 20

=head2 newpasswd

  data_type: 'varchar'
  default_value: (empty string)
  is_nullable: 1
  size: 32

=head2 newpasswd_ts

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  is_nullable: 1

=head2 journal_last_entry_date

  data_type: 'datetime'
  datetime_undef_if_invalid: 1
  is_nullable: 1

=head2 author

  data_type: 'tinyint'
  default_value: 0
  is_nullable: 0

=head2 shill_id

  data_type: 'tinyint'
  default_value: 0
  extra: {unsigned => 1}
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "uid",
  {
    data_type => "mediumint",
    extra => { unsigned => 1 },
    is_auto_increment => 1,
    is_nullable => 0,
  },
  "nickname",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 20 },
  "realemail",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 50 },
  "fakeemail",
  { data_type => "varchar", is_nullable => 1, size => 75 },
  "homepage",
  { data_type => "varchar", is_nullable => 1, size => 100 },
  "passwd",
  { data_type => "varchar", default_value => "", is_nullable => 0, size => 32 },
  "sig",
  { data_type => "varchar", is_nullable => 1, size => 200 },
  "seclev",
  {
    data_type => "mediumint",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 0,
  },
  "matchname",
  { data_type => "varchar", is_nullable => 1, size => 20 },
  "newpasswd",
  { data_type => "varchar", default_value => "", is_nullable => 1, size => 32 },
  "newpasswd_ts",
  {
    data_type => "datetime",
    datetime_undef_if_invalid => 1,
    is_nullable => 1,
  },
  "journal_last_entry_date",
  {
    data_type => "datetime",
    datetime_undef_if_invalid => 1,
    is_nullable => 1,
  },
  "author",
  { data_type => "tinyint", default_value => 0, is_nullable => 0 },
  "shill_id",
  {
    data_type => "tinyint",
    default_value => 0,
    extra => { unsigned => 1 },
    is_nullable => 0,
  },
);
__PACKAGE__->set_primary_key("uid");


# Created by DBIx::Class::Schema::Loader v0.07010 @ 2012-04-22 14:04:14
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:/VBAc76YKCEHo79Sg9n0YQ

__PACKAGE__->has_many('journals',
    'WWW::UsePerl::Server::Schema::Result::Journal', 'uid');

# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
