package CombiningClass;
our $VERSION = '0.01';



use Moose;
use namespace::autoclean;

with 'Role', 'UnrelatedRole';

1;
