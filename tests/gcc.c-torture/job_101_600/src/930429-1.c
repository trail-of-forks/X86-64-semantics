#include "mini_string.h"
#include "mini_stdlib.h"
char *
f (char *p)
{
  short x = *p++ << 16;
  return p;
}

main ()
{
  char *p = "";
  if (f (p) != p + 1)
    abort ();
  exit (0);
}
