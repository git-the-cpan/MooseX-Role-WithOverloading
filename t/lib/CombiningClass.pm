package CombiningClass;
our $VERSION = '0.02';



use Moose;
use namespace::autoclean;

with 'Role', 'UnrelatedRole';

1;
