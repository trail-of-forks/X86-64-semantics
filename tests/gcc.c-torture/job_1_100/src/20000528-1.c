#include "mini_string.h"
#include "mini_stdlib.h"
/* Copyright (C) 2000  Free Software Foundation  */
/* Contributed by Alexandre Oliva <aoliva@cygnus.com> */


int main () {
unsigned long l = (unsigned long)-2;
unsigned short s;
  long t = l;
  s = t;
  if (s != (unsigned short)-2)
    abort ();
  exit (0);
}
