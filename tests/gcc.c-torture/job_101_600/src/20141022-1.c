#include "mini_string.h"
#include "mini_stdlib.h"
//#define ABORT() do { __builtin_printf("assert.\n");  __builtin_abort (); }while(0)
int f(int a) __attribute__((noinline));
int f(int a)
{
  int fem_key_src;
  int D2930 = a & 4294967291;
  fem_key_src = a == 6 ? 0 : 15;
  fem_key_src = D2930 != 1 ? fem_key_src : 0;
  return fem_key_src;
}

int main(void)
{
  if (f(0) != 15)
    abort ();
  if (f(1) != 0)
    abort ();
  if (f(6) != 0)
    abort ();
  if (f(5) != 0)
    abort ();
  if (f(15) != 15)
    abort ();
  return 0;
}
