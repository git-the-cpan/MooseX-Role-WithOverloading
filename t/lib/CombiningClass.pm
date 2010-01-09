package CombiningClass;
our $VERSION = '0.05';

use Moose;
use namespace::autoclean;

with 'Role', 'UnrelatedRole';

1;
