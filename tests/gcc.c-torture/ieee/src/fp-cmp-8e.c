#include "mini_string.h"
#include "mini_stdlib.h"
#if defined (__ia64__) && defined (__hpux__)
#define FLOAT __float80
#include "fp-cmp-8.c"
#else
int
main ()
{
  return 0;
}
#endif
