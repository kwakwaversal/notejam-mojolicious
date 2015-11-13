package NoteJam::Controller::Settings;
use Mojo::Base 'Mojolicious::Controller';

sub show {
  my $self = shift;
  $self->render(text => '');
}

sub update {
  my $self = shift;
  $self->render(text => '');
}

1;
