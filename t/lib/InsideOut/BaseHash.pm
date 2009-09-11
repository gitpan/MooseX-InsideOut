use strict;
use warnings;

package InsideOut::BaseHash;
our $VERSION = '0.104';


sub new {
  my $class = shift;
  bless {@_} => $class;
}

sub base_foo {
  my $self = shift;
  $self->{base_foo} = shift if @_;
  return $self->{base_foo};
}

1;
