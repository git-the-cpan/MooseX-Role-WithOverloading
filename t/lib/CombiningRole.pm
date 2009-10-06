package CombiningRole;
our $VERSION = '0.01';



use Moose::Role;
use namespace::autoclean;

with 'Role', 'UnrelatedRole';

1;
