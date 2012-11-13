
use strict;
use warnings;



use ExtUtils::MakeMaker 6.30;



my %WriteMakefileArgs = (
  "ABSTRACT" => "Roles which support overloading",
  "AUTHOR" => "Florian Ragwitz <rafl\@debian.org>, Tomas Doran <bobtfish\@bobtfish.net>",
  "BUILD_REQUIRES" => {
    "FindBin" => 0,
    "MyRole" => 0,
    "OverloadingRole" => 0,
    "Test::More" => "0.88",
    "strict" => 0,
    "warnings" => 0
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
    "Moose::Exporter" => 0,
    "Moose::Role" => "1.15",
    "Moose::Util::MetaRole" => 0,
    "XSLoader" => 0,
    "aliased" => 0,
    "namespace::autoclean" => 0,
    "namespace::clean" => 0,
    "overload" => 0
  },
  "VERSION" => "0.10",
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



