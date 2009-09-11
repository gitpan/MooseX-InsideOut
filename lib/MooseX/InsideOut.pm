use strict;
use warnings;

package MooseX::InsideOut;
our $VERSION = '0.104';

# ABSTRACT: inside-out objects with Moose

use Moose ();
use Moose::Exporter;
use Moose::Util::MetaRole;
use MooseX::InsideOut::Role::Meta::Instance;

Moose::Exporter->setup_import_methods(
  also => [ 'Moose' ],
);

sub init_meta {
  shift;
  my %p = @_;
  Moose->init_meta(%p);
  Moose::Util::MetaRole::apply_metaclass_roles(
    for_class                => $p{for_class},
    instance_metaclass_roles => [ 'MooseX::InsideOut::Role::Meta::Instance' ],
  );
}

1;



=pod

=head1 NAME

MooseX::InsideOut - inside-out objects with Moose

=head1 VERSION

version 0.104

=head1 SYNOPSIS

  package My::Object;

  use MooseX::InsideOut;

  # ... normal Moose functionality
  # or ...

  package My::Subclass;

  use MooseX::InsideOut;
  extends 'Some::Other::Class';

=head1 DESCRIPTION

MooseX::InsideOut provides metaroles for inside-out objects.  That is, it sets
up attribute slot storage somewhere other than inside C<$self>.  This means
that you can extend non-Moose classes, whose internals you either don't want to
care about or aren't hash-based.

=head1 TODO

=over 

=item * dumping (for debugging purposes)

=item * serialization (for e.g. storable)

=item * (your suggestions here)

=back 



=head1 METHODS

=head2 init_meta

Apply the instance metarole necessary for inside-out storage.

=head1 AUTHOR

  Hans Dieter Pearcey <hdp@cpan.org>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2009 by Hans Dieter Pearcey <hdp@cpan.org>.

This is free software; you can redistribute it and/or modify it under
the same terms as perl itself.

=cut 



__END__

