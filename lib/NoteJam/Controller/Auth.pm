package NoteJam::Controller::Auth;
use Mojo::Base 'Mojolicious::Controller';

sub forgot_password {
  my $self = shift;
  $self->render(text => '');
}

sub signin {
  my $self = shift;
  $self->render(text => '');
}

sub signout {
  my $self = shift;
  $self->session(expires => 1);
  $self->render(text => '');
}

sub signup {
  my $self = shift;
  $self->render(text => '');
}

1;
