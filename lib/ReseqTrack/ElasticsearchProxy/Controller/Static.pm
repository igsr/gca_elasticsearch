package ReseqTrack::ElasticsearchProxy::Controller::Static;
use Mojo::Base 'Mojolicious::Controller';

sub webapp_index {
    my ($self) = @_;

    my $webapp = $self->param('webapp');

    if($self->req->url->path !~ m{/$}) {
      $self->res->code(301);
      $self->redirect_to("$webapp/");
    }
    else {
      $self->reply->static("$webapp/index.html");
    }
}

1;