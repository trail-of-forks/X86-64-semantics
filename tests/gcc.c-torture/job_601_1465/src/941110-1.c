#include "mini_string.h"
#include "mini_stdlib.h"
f (const int x)
{
  int y = 0;
  y = x ? y : -y;
  {
    const int *p = &x;
  }
  return y;
}

main ()
{
  if (f (0))
    abort ();
  exit (0);
}
