
use strict;
use warnings;



use ExtUtils::MakeMaker 6.31;



my %WriteMakefileArgs = (
  'ABSTRACT' => 'Roles which support overloading',
  'AUTHOR' => 'Florian Ragwitz <rafl@debian.org>, Tomas Doran <bobtfish@bobtfish.net>',
  'BUILD_REQUIRES' => {
    'FindBin' => '0',
    'Test::More' => '0.88'
  },
  'CONFIGURE_REQUIRES' => {
    'ExtUtils::MakeMaker' => '6.31'
  },
  'DISTNAME' => 'MooseX-Role-WithOverloading',
  'EXE_FILES' => [],
  'LICENSE' => 'perl',
  'NAME' => 'MooseX::Role::WithOverloading',
  'PREREQ_PM' => {
    'Moose' => '0.94',
    'Moose::Exporter' => '0',
    'Moose::Role' => '0',
    'Moose::Util::MetaRole' => '0',
    'MooseX::Types::Moose' => '0',
    'XSLoader' => '0',
    'aliased' => '0',
    'namespace::autoclean' => '0',
    'namespace::clean' => '0',
    'overload' => '0'
  },
  'VERSION' => '0.06',
  'test' => {
    'TESTS' => 't/*.t'
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



