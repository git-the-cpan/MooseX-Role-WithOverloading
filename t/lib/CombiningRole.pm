package CombiningRole;
our $VERSION = '0.04';

use Moose::Role;
use namespace::autoclean;

with 'Role', 'UnrelatedRole';

1;
