#include "mini_string.h"
#include "mini_stdlib.h"
#include <stdio.h>
char buf[2];

f (fp)
     int (*fp)(char *, const char *, ...);
{
  (*fp)(buf, "%.0f", 5.0);
}

main ()
{
  f (&sprintf);
  if (buf[0] != '5' || buf[1] != 0)
    abort ();
  exit (0);
}
