package rest_mvp;
use Moose;
use namespace::autoclean;
use Catalyst::Runtime 5.90;

extends 'Catalyst';

our $VERSION = '0.01';

__PACKAGE__->setup;
__PACKAGE__->meta->make_immutable;

1;
