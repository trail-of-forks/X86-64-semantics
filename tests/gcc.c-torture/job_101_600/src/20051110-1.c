#include "mini_string.h"
#include "mini_stdlib.h"
void add_unwind_adjustsp (long);
void abort (void);

unsigned char bytes[5];

void
add_unwind_adjustsp (long offset)
{
  int n;
  unsigned long o;

  o = (long) ((offset - 0x204) >> 2);

  n = 0;
  while (o)
    {
      bytes[n] = o & 0x7f;
      o >>= 7;
      if (o)
	bytes[n] |= 0x80;
      n++;
    }
}

int main(void)
{
  add_unwind_adjustsp (4132);
  if (bytes[0] != 0x88 || bytes[1] != 0x07)
    abort ();
  return 0;
}
