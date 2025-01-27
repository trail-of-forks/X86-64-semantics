#include "mini_string.h"
#include "mini_stdlib.h"
/* { dg-require-effective-target label_values } */
int code[]={0,0,0,0,1};

void foo(int x) {
  volatile int b;
  b = 0xffffffff;
}

void bar(int *pc) {
  static const void *l[] = {&&lab0, &&end};

  foo(0);
  goto *l[*pc];
 lab0:
  foo(0);
  pc++;
  goto *l[*pc];
 end:
  return;
}

int main() {
  bar(code);
  return 0;
}
