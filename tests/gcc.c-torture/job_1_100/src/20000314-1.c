#include "mini_string.h"
#include "mini_stdlib.h"
int main ()
{
  long winds = 0;

  while (winds != 0)
    {
      if (*(char *) winds)
	break;
    }

  if (winds == 0 || winds != 0 || *(char *) winds)
    exit (0);

  abort ();
}


