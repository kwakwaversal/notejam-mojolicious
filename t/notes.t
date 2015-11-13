use Mojo::Base -strict;

use Test::More;
use Test::Mojo;

my $t = Test::Mojo->new('NoteJam');

# Notes:
# note can be successfully created
# note can't be created by anonymous user
# note can't be created if required fields are missing
# note can be edited by its owner
# note can't be edited if required fields are missing
# note can't be edited by not an owner
# note can't be added into another's user pad
# note can be viewed by its owner
# note can't be viewed by not an owner
# note can be deleted by its owner
# note can't be deleted by not an owner

done_testing();
