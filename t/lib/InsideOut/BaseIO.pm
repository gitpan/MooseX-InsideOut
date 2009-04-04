use strict;
use warnings;

package InsideOut::BaseIO;
our $VERSION = '0.102';


use MooseX::InsideOut;

has base_foo => (
  is => 'rw',
);

1;
