use Mojo::Base -strict;

use Test::More;
use Test::Mojo;

my $t = Test::Mojo->new('NoteJam');

# Pads:
# pad can be successfully created
# pad can't be created if required fields are missing
# pad can be edited by its owner
# pad can't be edited if required fields are missing
# pad can't be edited by not an owner
# pad can be viewed by its owner
# pad can't be viewed by not an owner
# pad can be deleted by its owner
# pad can't be deleted by not an owner

done_testing();
