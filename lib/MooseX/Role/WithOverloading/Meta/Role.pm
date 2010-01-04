package MooseX::Role::WithOverloading::Meta::Role;
our $VERSION = '0.04';
# ABSTRACT: Roles which support overloading

use Moose::Role;
use aliased 'MooseX::Role::WithOverloading::Meta::Role::Composite', 'CompositionRole';
use namespace::autoclean;

has '+composition_class_roles' => (
    default => [ CompositionRole ],
);

1;

__END__
=pod

=head1 NAME

MooseX::Role::WithOverloading::Meta::Role - Roles which support overloading

=head1 VERSION

version 0.04

=head1 AUTHORS

Florian Ragwitz <rafl@debian.org>
Tomas Doran <bobtfish@bobtfish.net>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2010 by Florian Ragwitz.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut

