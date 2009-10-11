
use strict;
use warnings;

use ExtUtils::MakeMaker;

WriteMakefile(
  DISTNAME  => 'MooseX-Role-WithOverloading',
  NAME      => 'MooseX::Role::WithOverloading',
  AUTHOR    => 'Florian\ Ragwitz\ \<rafl\@debian\.org\>\,\ Tomas\ Doran\ \<bobtfish\@bobtfish\.net\>',
  ABSTRACT  => 'Roles\ which\ support\ overloading',
  VERSION   => '0.02',
  EXE_FILES => [ qw() ],
  (eval { ExtUtils::MakeMaker->VERSION(6.31) } ? (LICENSE => 'perl') : ()),
  PREREQ_PM    => {
    "namespace::clean" => '0',
    "namespace::autoclean" => '0.09',
    "MooseX::Types" => '0',
    "aliased" => '0',
    "Moose" => '0.90',
  },
  test => {TESTS => 't/*.t'}
);

