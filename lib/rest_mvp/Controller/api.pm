package rest_mvp::Controller::api;
use Moose;
use namespace::autoclean;

BEGIN { extends 'Catalyst::Controller' }

sub cap : Local : POST {
        my ( $self, $c ) = @_;
        $c->stash->{rest} = $c->req->body_data;
}

sub server_time : Local : GET {
        my ( $self, $c ) = @_;
        $c->stash->{rest} = { now => '' . localtime };
}

sub end : ActionClass('RenderView') { }

__PACKAGE__->meta->make_immutable;

1;
