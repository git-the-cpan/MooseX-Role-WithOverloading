package CombiningRole;
our $VERSION = '0.05';

use Moose::Role;
use namespace::autoclean;

with 'Role', 'UnrelatedRole';

1;
