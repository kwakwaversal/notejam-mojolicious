use Mojo::Base -strict;

use Test::More;
use Test::Mojo;

my $t = Test::Mojo->new('NoteJam');

# https://github.com/komarserjio/notejam/blob/master/contribute.rst#pages
#
# user pages
$t->get_ok('/signup')->status_is(200);
$t->post_ok('/signup')->status_is(200);
$t->get_ok('/signin')->status_is(200);
$t->post_ok('/signin')->status_is(200);
$t->get_ok('/signout')->status_is(200);
$t->get_ok('/forgot-password')->status_is(200);
$t->post_ok('/forgot-password')->status_is(200);
$t->get_ok('/settings')->status_is(200);
$t->post_ok('/settings')->status_is(200);

# note pages
$t->get_ok('/notes/create')->status_is(200);
$t->post_ok('/notes/create')->status_is(200);
$t->get_ok('/notes/1')->status_is(200);
$t->get_ok('/notes/1/edit')->status_is(200);
$t->post_ok('/notes/1/edit')->status_is(200);
$t->get_ok('/notes/1/delete')->status_is(200);
$t->post_ok('/notes/1/delete')->status_is(200);

# pad pages
$t->get_ok('/pads/create')->status_is(200);
$t->post_ok('/pads/create')->status_is(200);
$t->get_ok('/pads/1')->status_is(200);
$t->get_ok('/pads/1/edit')->status_is(200);
$t->post_ok('/pads/1/edit')->status_is(200);
$t->get_ok('/pads/1/delete')->status_is(200);
$t->post_ok('/pads/1/delete')->status_is(200);

done_testing();
