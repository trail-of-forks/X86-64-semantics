#include "mini_string.h"
#include "mini_stdlib.h"
/* { dg-require-effective-target label_values } */
main(){__label__ l;void*x(){return&&l;}goto*x();abort();return;l:exit(0);}
