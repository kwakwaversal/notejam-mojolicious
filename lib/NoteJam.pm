package NoteJam;
use Mojo::Base 'Mojolicious';

#use Blog::Model::Posts;
use DBI;

# This method will run once at server start
sub startup {
  my $self = shift;

  # Configuration
  $self->plugin('Config');
  $self->secrets($self->config('secrets'));

  # Model
  $self->helper(db => sub { state $db = DBI->new(shift->config('db')) });
  $self->helper(
    notes => sub { state $notes = NoteJam::Model::Notes->new(db => shift->db) });

  # Controller
  my $r = $self->routes;
  $r->get('/' => sub { shift->redirect_to('signin') });

  # User pages
  $r->get('/signup')->to('auth#signup')->name('show_signup');
  $r->post('/signup')->to('auth#signup')->name('create_signup');
  $r->get('/signin')->to('auth#signin')->name('show_signin');
  $r->post('/signin')->to('auth#signin')->name('create_signin');
  $r->get('/signout')->to('auth#signout')->name('show_signout');
  $r->get('/forgot-password')->to('auth#forgot_password')
    ->name('show_forgot_password');
  $r->post('/forgot-password')->to('auth#forgot_password')
    ->name('create_forgot_password');
  $r->get('/settings')->to('settings#show')->name('show_settings');
  $r->post('/settings')->to('settings#update')->name('update_settings');

  # Note pages
  $r->get('/notes/create')->to('notes#create')->name('show_create_note');
  $r->post('/notes/create')->to('notes#create')->name('create_note');
  $r->get('/notes/:id')->to('notes#show')->name('show_note');
  $r->get('/notes/:id/edit')->to('notes#edit')->name('show_edit_note');
  $r->post('/notes/:id/edit')->to('notes#edit')->name('edit_note');
  $r->get('/notes/:id/delete')->to('notes#delete')->name('show_delete_note');
  $r->post('/notes/:id/delete')->to('notes#delete')->name('delete_note');

  # Pad pages
  $r->get('/pads/create')->to('pads#create')->name('show_create_pad');
  $r->post('/pads/create')->to('pads#create')->name('create_pad');
  $r->get('/pads/:id')->to('pads#show')->name('show_pad');
  $r->get('/pads/:id/edit')->to('pads#edit')->name('show_edit_pad');
  $r->post('/pads/:id/edit')->to('pads#edit')->name('edit_pad');
  $r->get('/pads/:id/delete')->to('pads#delete')->name('show_delete_pad');
  $r->post('/pads/:id/delete')->to('pads#delete')->name('delete_pad');
}

1;
