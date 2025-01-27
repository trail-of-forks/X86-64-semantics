#include "mini_string.h"
#include "mini_stdlib.h"
/* { dg-require-effective-target label_values } */

int expect_do1 = 1, expect_do2 = 2;
 
static int doit(int x){
  __label__ lbl1;
  __label__ lbl2;
  static int jtab_init = 0;
  static void *jtab[2];
 
  if(!jtab_init) {
    jtab[0] = &&lbl1;
    jtab[1] = &&lbl2;
    jtab_init = 1;
  }
  goto *jtab[x];
lbl1:
  return 1;
lbl2:
  return 2;
}
 
static void do1(void) {
  if (doit(0) != expect_do1)
    abort ();
}
 
static void do2(void){
  if (doit(1) != expect_do2)
    abort ();
}
 
int main(void){
  exit(0);
}
