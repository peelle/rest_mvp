package rest_mvp::View::json;
use Moose;
use namespace::autoclean;
use Cpanel::JSON::XS;

BEGIN { extends 'Catalyst::View' }

sub process {
        my ( $self, $c ) = @_;
        $c->res->output( encode_json( $c->stash->{rest} ) );
}

__PACKAGE__->meta->make_immutable;

1;
