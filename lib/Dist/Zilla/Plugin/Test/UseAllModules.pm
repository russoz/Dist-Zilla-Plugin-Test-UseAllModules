package Dist::Zilla::Plugin::Test::UseAllModules;

use strict;
use warnings;

# ABSTRACT: Release tests making sure all MANIFEST'ed modules pass use_oK()

# VERSION

use Moose;
use namespace::autoclean;

extends 'Dist::Zilla::Plugin::InlineFiles';
   with 'Dist::Zilla::Role::PrereqSource';

__PACKAGE__->meta->make_immutable;

sub register_prereqs {
    shift->zilla->register_prereqs(
        { phase => 'test' },
        'Test::UseAllModules' => 0
    );
	return;
}

1;

=pod

=head1 DESCRIPTION

This is an extension of L<Dist::Zilla::Plugin::InlineFiles>, providing
the following files:

=for :list
* t/00-load.t
A basic L<Test::UseAllModules> test

If a more sophisticated use of Test::UseAllModules is required, this plugin
may not be for you. Please refer to the L<Test::UseAllModules> documentation
for examples and more information.

=for Pod::Coverage register_prereqs

=cut

__DATA__
___[ t/00-load.t ]___
use strict;
use Test::UseAllModules;

BEGIN { all_uses_ok(); }

