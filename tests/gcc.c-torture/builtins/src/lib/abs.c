extern int inside_main;
extern void abort (void);
#include "mini_stdlib.h"
#include "mini_string.h"
#ifdef __OPTIMIZE__
#define ABORT_INSIDE_MAIN do { if (inside_main) abort (); } while (0)
#else
#define ABORT_INSIDE_MAIN do { } while (0)
#endif

typedef __INTMAX_TYPE__ intmax_t;

__attribute__ ((__noinline__))
int
abs (int x)
{
  ABORT_INSIDE_MAIN;
  return x < 0 ? -x : x;
}

__attribute__ ((__noinline__))
long
labs (long x)
{
  ABORT_INSIDE_MAIN;
  return x < 0 ? -x : x;
}

__attribute__ ((__noinline__))
long long
llabs (long long x)
{
  ABORT_INSIDE_MAIN;
  return x < 0 ? -x : x;
}

__attribute__ ((__noinline__))
intmax_t
imaxabs (intmax_t x)
{
  ABORT_INSIDE_MAIN;
  return x < 0 ? -x : x;
}
