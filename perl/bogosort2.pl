use strict;
use List::Util qw(shuffle);

sub is_sorted
{
  for my $i (1 .. $#_) {
    if ($_[$i-1] >= $_[$i]) {
      return 0;
    }
  }
  return 1;
}

my @array = (0, 3, 2, 4, 10, 1, 7, 9);
until (is_sorted @array) {
  @array = shuffle @array;
}
print join(", ", @array);
