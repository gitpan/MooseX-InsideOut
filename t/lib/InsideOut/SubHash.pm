use strict;
use warnings;

package InsideOut::SubHash;
our $VERSION = '0.101';


use MooseX::InsideOut;
extends 'InsideOut::BaseHash';

has sub_foo => ( is => 'rw' );

1;