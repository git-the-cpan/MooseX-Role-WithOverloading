
use strict;
use warnings;

use 5.006;

use ExtUtils::MakeMaker 6.30;



my %WriteMakefileArgs = (
  "ABSTRACT" => "Roles which support overloading",
  "AUTHOR" => "Florian Ragwitz <rafl\@debian.org>, Tomas Doran <bobtfish\@bobtfish.net>",
  "BUILD_REQUIRES" => {
    "Test::CheckDeps" => "0.002",
    "Test::More" => "0.88",
    "Test::NoWarnings" => "1.04"
  },
  "CONFIGURE_REQUIRES" => {
    "ExtUtils::MakeMaker" => "6.30"
  },
  "DISTNAME" => "MooseX-Role-WithOverloading",
  "EXE_FILES" => [],
  "LICENSE" => "perl",
  "NAME" => "MooseX::Role::WithOverloading",
  "PREREQ_PM" => {
    "Moose" => "0.94",
    "Moose::Role" => "1.15",
    "aliased" => 0,
    "namespace::autoclean" => "0.12",
    "namespace::clean" => 0
  },
  "VERSION" => "0.12",
  "test" => {
    "TESTS" => "t/*.t"
  }
);


unless ( eval { ExtUtils::MakeMaker->VERSION(6.56) } ) {
  my $br = delete $WriteMakefileArgs{BUILD_REQUIRES};
  my $pp = $WriteMakefileArgs{PREREQ_PM};
  for my $mod ( keys %$br ) {
    if ( exists $pp->{$mod} ) {
      $pp->{$mod} = $br->{$mod} if $br->{$mod} > $pp->{$mod};
    }
    else {
      $pp->{$mod} = $br->{$mod};
    }
  }
}

delete $WriteMakefileArgs{CONFIGURE_REQUIRES}
  unless eval { ExtUtils::MakeMaker->VERSION(6.52) };

WriteMakefile(%WriteMakefileArgs);



