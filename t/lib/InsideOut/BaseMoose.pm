use strict;
use warnings;

package InsideOut::BaseMoose;
our $VERSION = '0.104';


use Moose;

has base_foo => ( is => 'rw' );

1;
