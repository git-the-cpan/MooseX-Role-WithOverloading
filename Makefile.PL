# This file was automatically generated by Dist::Zilla::Plugin::MakeMaker v5.039.
use strict;
use warnings;

use 5.006;

use ExtUtils::MakeMaker;

my %WriteMakefileArgs = (
  "ABSTRACT" => "(DEPRECATED) Roles which support overloading",
  "AUTHOR" => "Florian Ragwitz <rafl\@debian.org>, Tomas Doran <bobtfish\@bobtfish.net>",
  "CONFIGURE_REQUIRES" => {
    "ExtUtils::MakeMaker" => 0
  },
  "DISTNAME" => "MooseX-Role-WithOverloading",
  "LICENSE" => "perl",
  "MIN_PERL_VERSION" => "5.006",
  "NAME" => "MooseX::Role::WithOverloading",
  "PREREQ_PM" => {
    "Moose" => "0.94",
    "Moose::Exporter" => 0,
    "Moose::Role" => "1.15",
    "aliased" => 0,
    "namespace::autoclean" => "0.16",
    "namespace::clean" => "0.19"
  },
  "TEST_REQUIRES" => {
    "ExtUtils::MakeMaker" => 0,
    "File::Spec" => 0,
    "Test::More" => "0.96",
    "if" => 0,
    "lib" => 0,
    "namespace::autoclean" => "0.16",
    "strict" => 0,
    "warnings" => 0
  },
  "VERSION" => "0.17",
  "test" => {
    "TESTS" => "t/*.t"
  }
);


my %FallbackPrereqs = (
  "ExtUtils::MakeMaker" => 0,
  "File::Spec" => 0,
  "Moose" => "0.94",
  "Moose::Exporter" => 0,
  "Moose::Role" => "1.15",
  "Test::More" => "0.96",
  "aliased" => 0,
  "if" => 0,
  "lib" => 0,
  "namespace::autoclean" => "0.16",
  "namespace::clean" => "0.19",
  "strict" => 0,
  "warnings" => 0
);


unless ( eval { ExtUtils::MakeMaker->VERSION(6.63_03) } ) {
  delete $WriteMakefileArgs{TEST_REQUIRES};
  delete $WriteMakefileArgs{BUILD_REQUIRES};
  $WriteMakefileArgs{PREREQ_PM} = \%FallbackPrereqs;
}

delete $WriteMakefileArgs{CONFIGURE_REQUIRES}
  unless eval { ExtUtils::MakeMaker->VERSION(6.52) };

WriteMakefile(%WriteMakefileArgs);
