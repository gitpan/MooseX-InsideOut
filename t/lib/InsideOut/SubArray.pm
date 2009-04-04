use strict;
use warnings;

package InsideOut::SubArray;
our $VERSION = '0.102';


use MooseX::InsideOut;
extends 'InsideOut::BaseArray';

has sub_foo => ( is => 'rw' );

1;

