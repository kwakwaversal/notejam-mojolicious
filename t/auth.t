use Mojo::Base -strict;

use Test::More;
use Test::Mojo;

my $t = Test::Mojo->new('NoteJam');

# Sign Up:
# user can successfully sign up
# user can't sign up if required fields are missing
# user can't sign up if email is invalid
# user can't sign up if email already exists
# user can't sign up if passwords do not match
#
# Sign In:
# user can successfully sign in
# user can't sign in if required fields are missing
# user can't sign in if credentials are wrong

done_testing();
