package CombiningRole;
our $VERSION = '0.02';



use Moose::Role;
use namespace::autoclean;

with 'Role', 'UnrelatedRole';

1;
