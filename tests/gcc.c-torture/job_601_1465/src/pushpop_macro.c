#include "mini_string.h"
#include "mini_stdlib.h"
extern void abort ();

#define _ 2
#pragma push_macro("_")
#undef _
#define _ 1
#pragma pop_macro("_")

int main ()
{
  if (_ != 2)
    abort ();
  return 0;
}

