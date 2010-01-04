package CombiningClass;
our $VERSION = '0.04';

use Moose;
use namespace::autoclean;

with 'Role', 'UnrelatedRole';

1;
