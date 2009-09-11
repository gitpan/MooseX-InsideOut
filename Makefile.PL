
use strict;
use warnings;

use ExtUtils::MakeMaker;

WriteMakefile(
  DISTNAME  => 'MooseX-InsideOut',
  NAME      => 'MooseX::InsideOut',
  AUTHOR    => 'Hans\ Dieter\ Pearcey\ \<hdp\@cpan\.org\>',
  ABSTRACT  => 'inside\-out\ objects\ with\ Moose',
  VERSION   => '0.104',
  EXE_FILES => [ qw() ],
  (eval { ExtUtils::MakeMaker->VERSION(6.31) } ? (LICENSE => 'perl') : ()),
  PREREQ_PM    => {
    "namespace::clean" => '0.11',
    "Class::MOP" => '0.80',
    "Hash::Util::FieldHash::Compat" => '0',
    "Moose" => '0.73',
  },
);
