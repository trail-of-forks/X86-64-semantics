#include "mini_string.h"
#include "mini_stdlib.h"
f (cp, end)
     char *cp;
     char *end;
{
  return (cp < end);
}

main ()
{
  if (! f ((char *) 0, (char *) 1))
    abort();
  exit (0);
}
