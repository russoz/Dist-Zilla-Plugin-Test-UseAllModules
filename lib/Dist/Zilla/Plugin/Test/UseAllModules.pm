package Dist::Zilla::Plugin::Test::UseAllModules;

use strict;
use warnings;

# ABSTRACT: Release tests making sure all MANIFEST'ed modules pass use_oK()

# VERSION

use Moose;
use namespace::autoclean;

extends 'Dist::Zilla::Plugin::InlineFiles';

__PACKAGE__->meta->make_immutable;

1;

=pod

=for :list
* t/00-load.t
A standard Test::UseAllModules test

=cut

__DATA__
___[ t/00-load.t ]___
use strict;
use Test::UseAllModules;

BEGIN { all_uses_ok(); }

