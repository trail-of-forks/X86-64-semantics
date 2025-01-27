#include "mini_string.h"
#include "mini_stdlib.h"
/* This is a modfied version of va-arg-9.c to test va_copy.  */

#include <stdarg.h>

#ifndef va_copy
#define va_copy __va_copy
#endif

extern __SIZE_TYPE__ strlen (const char *);

int
to_hex (unsigned int a)
{
  static char hex[] = "0123456789abcdef";

  if (a > 15)
    abort ();
  return hex[a];
}

void
fap (int i, char* format, va_list ap)
{
  va_list apc;
  char *formatc;

  va_copy (apc, ap);
  formatc = format;

  if (strlen (format) != 16 - i)
    abort ();
  while (*format)
    if (*format++ != to_hex (va_arg (ap, int)))
      abort ();
  while (*formatc)
    if (*formatc++ != to_hex (va_arg (apc, int)))
      abort ();
}

void
f0 (char* format, ...)
{
  va_list ap;

  va_start (ap, format);
  fap(0, format, ap);
  va_end(ap);
}

void
f1 (int a1, char* format, ...)
{
  va_list ap;

  va_start(ap, format);
  fap(1, format, ap);
  va_end(ap);
}

void
f2 (int a1, int a2, char* format, ...)
{
  va_list ap;

  va_start(ap, format);
  fap(2, format, ap);
  va_end(ap);
}

void
f3 (int a1, int a2, int a3, char* format, ...)
{
  va_list ap;

  va_start(ap, format);
  fap(3, format, ap);
  va_end(ap);
}

void
f4 (int a1, int a2, int a3, int a4, char* format, ...)
{
  va_list ap;

  va_start(ap, format);
  fap(4, format, ap);
  va_end(ap);
}

void
f5 (int a1, int a2, int a3, int a4, int a5,
    char* format, ...)
{
  va_list ap;

  va_start(ap, format);
  fap(5, format, ap);
  va_end(ap);
}

void
f6 (int a1, int a2, int a3, int a4, int a5,
    int a6,
    char* format, ...)
{
  va_list ap;

  va_start(ap, format);
  fap(6, format, ap);
  va_end(ap);
}

void
f7 (int a1, int a2, int a3, int a4, int a5,
    int a6, int a7,
    char* format, ...)
{
  va_list ap;

  va_start(ap, format);
  fap(7, format, ap);
  va_end(ap);
}

void
f8 (int a1, int a2, int a3, int a4, int a5,
    int a6, int a7, int a8,
    char* format, ...)
{
  va_list ap;

  va_start(ap, format);
  fap(8, format, ap);
  va_end(ap);
}

void
f9 (int a1, int a2, int a3, int a4, int a5,
    int a6, int a7, int a8, int a9,
    char* format, ...)
{
  va_list ap;

  va_start(ap, format);
  fap(9, format, ap);
  va_end(ap);
}

void
f10 (int a1, int a2, int a3, int a4, int a5,
     int a6, int a7, int a8, int a9, int a10,
     char* format, ...)
{
  va_list ap;

  va_start(ap, format);
  fap(10, format, ap);
  va_end(ap);
}

void
f11 (int a1, int a2, int a3, int a4, int a5,
     int a6, int a7, int a8, int a9, int a10,
     int a11,
     char* format, ...)
{
  va_list ap;

  va_start(ap, format);
  fap(11, format, ap);
  va_end(ap);
}

void
f12 (int a1, int a2, int a3, int a4, int a5,
     int a6, int a7, int a8, int a9, int a10,
     int a11, int a12,
     char* format, ...)
{
  va_list ap;

  va_start(ap, format);
  fap(12, format, ap);
  va_end(ap);
}

void
f13 (int a1, int a2, int a3, int a4, int a5,
     int a6, int a7, int a8, int a9, int a10,
     int a11, int a12, int a13,
     char* format, ...)
{
  va_list ap;

  va_start(ap, format);
  fap(13, format, ap);
  va_end(ap);
}

void
f14 (int a1, int a2, int a3, int a4, int a5,
     int a6, int a7, int a8, int a9, int a10,
     int a11, int a12, int a13, int a14,
     char* format, ...)
{
  va_list ap;

  va_start(ap, format);
  fap(14, format, ap);
  va_end(ap);
}

void
f15 (int a1, int a2, int a3, int a4, int a5,
     int a6, int a7, int a8, int a9, int a10,
     int a11, int a12, int a13, int a14, int a15,
     char* format, ...)
{
  va_list ap;

  va_start(ap, format);
  fap(15, format, ap);
  va_end(ap);
}

main ()
{
  char *f = "0123456789abcdef";

  f0 (f+0, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15);
  f1 (0, f+1, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15);
  f2 (0, 1, f+2, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15);
  f3 (0, 1, 2, f+3, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15);
  f4 (0, 1, 2, 3, f+4, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15);
  f5 (0, 1, 2, 3, 4, f+5, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15);
  f6 (0, 1, 2, 3, 4, 5, f+6, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15);
  f7 (0, 1, 2, 3, 4, 5, 6, f+7, 7, 8, 9, 10, 11, 12, 13, 14, 15);
  f8 (0, 1, 2, 3, 4, 5, 6, 7, f+8, 8, 9, 10, 11, 12, 13, 14, 15);
  f9 (0, 1, 2, 3, 4, 5, 6, 7, 8, f+9, 9, 10, 11, 12, 13, 14, 15);
  f10 (0, 1, 2, 3, 4, 5, 6, 7, 8, 9, f+10, 10, 11, 12, 13, 14, 15);
  f11 (0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, f+11, 11, 12, 13, 14, 15);
  f12 (0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, f+12, 12, 13, 14, 15);
  f13 (0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, f+13, 13, 14, 15);
  f14 (0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, f+14, 14, 15);
  f15 (0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, f+15, 15);

  exit (0);
}
