#include "mini_string.h"
#include "mini_stdlib.h"
main()
{
int a,b;
  int c=-2;
  int d=0xfe;
  int e=a&1;
  int f=b&2;
  if ((char)(c|(e&f)) == (char)d)
    return 0;
  else
    abort();
}
