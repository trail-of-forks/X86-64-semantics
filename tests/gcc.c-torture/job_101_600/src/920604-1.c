#include "mini_string.h"
#include "mini_stdlib.h"
long long
mod (a, b)
     long long a, b;
{
  return a % b;
}

int
main ()
{
  mod (1LL, 2LL);
  exit (0);
}
