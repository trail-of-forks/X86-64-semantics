#include "mini_string.h"
#include "mini_stdlib.h"
void abort ();

void
f (long long a)
{
  if ((a & 0xffffffffLL) != 0)
    abort ();
}

long long a = 0x1234567800000000LL;

int
main ()
{
  f (a);
  return 0;
}
