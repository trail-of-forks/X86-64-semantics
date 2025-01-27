#include "mini_string.h"
#include "mini_stdlib.h"
#ifndef SIGNAL_SUPPRESS
#include <signal.h>
#endif

long double dnan = 1.0l/0.0l - 1.0l/0.0l;
long double x = 1.0l;

void xleave ()
{
  exit (0);
}

main ()
{
#if ! defined (__vax__) && ! defined (_CRAY)
  /* Move this line earlier, for architectures (like alpha) that issue 
     SIGFPE on the first comparisons. */
#ifndef SIGNAL_SUPPRESS
  /* Some machines catches a SIGFPE when a NaN is compared.
     Let this test succeed o such machines.  */
 // signal (SIGFPE, xleave);
#endif
  /* NaN is an IEEE unordered operand.  All these test should be false.  */
  if (dnan == dnan)
    abort ();
  if (dnan != x)
    x = 1.0;
  else
    abort ();

  if (dnan < x)
    abort ();
  if (dnan > x)
    abort ();
  if (dnan <= x)
    abort ();
  if (dnan >= x)
    abort ();
  if (dnan == x)
    abort ();
#endif
  exit (0);
}
