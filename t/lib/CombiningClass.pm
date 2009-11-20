package CombiningClass;
our $VERSION = '0.03';



use Moose;
use namespace::autoclean;

with 'Role', 'UnrelatedRole';

1;
