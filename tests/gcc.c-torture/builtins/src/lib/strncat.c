#include<stddef.h>
extern void abort(void);
extern int inside_main;

typedef __SIZE_TYPE__ size_t;

__attribute__ ((__noinline__))
char *
strncat (char *s1, const char *s2, size_t n)
{
  char *dest = s1;
  char c = '\0';
#ifdef __OPTIMIZE__
  if (inside_main)
    abort();
#endif
  while (*s1) s1++;
  c = '\0';
  while (n > 0)
    {
      c = *s2++;
      *s1++ = c;
      if (c == '\0')
	return dest;
      n--;
    }
  if (c != '\0')
    *s1 = '\0';
  return dest;
}

void *memset(void *s, int c, size_t n)
{
    unsigned char* p=s;
    while(n--)
        *p++ = (unsigned char)c;
    return s;
}

void *memcpy(void *dest, const void *src, size_t n)
{
    char *dp = dest;
    const char *sp = src;
    while (n--)
        *dp++ = *sp++;
    return dest;
}
int memcmp(const void* s1, const void* s2,size_t n)
{
    const unsigned char *p1 = s1, *p2 = s2;
    while(n--)
        if( *p1 != *p2 )
            return *p1 - *p2;
        else
            p1++,p2++;
    return 0;
}

char *strchr(const char *s, int c) {
  while(*s != (char)c) {
    if(!*s++)
      return 0;
    return (char *)s;
  }
}

size_t strlen(const char *s) {
    size_t i;
    for (i = 0; s[i] != '\0'; i++) ;
    return i;
}

char *strcpy(char *dest, const char* src)
{
    char *ret = dest;
    while (*dest++ = *src++)
        ;
    return ret;
}

int strcmp(const char* s1, const char* s2)
{
    while(*s1 && (*s1==*s2))
        s1++,s2++;
    return *(const unsigned char*)s1-*(const unsigned char*)s2;
}


void abort(void) {
   __asm__ ("movq $-1, %rax\n\t"
            "jmp %rax\n\t");
}

void __stack_chk_fail() {
   __asm__ ("movq $-1, %rax\n\t"
            "jmp %rax\n\t");
}
