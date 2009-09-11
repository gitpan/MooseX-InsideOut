use strict;
use warnings;

package InsideOut::SubMoose;
our $VERSION = '0.104';


use MooseX::InsideOut;
extends 'InsideOut::BaseMoose';

has sub_foo => ( is => 'rw' );

1;

