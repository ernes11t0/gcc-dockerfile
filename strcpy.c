#include <stdio.h>
#include <string.h>

int main() {
  char str1[20] = "C programming";
  char str2[20];
  int i;
  // copying str1 to str2
  for (i=0; i<1000000; i++) strcpy(str2, str1);

  puts(str2); // C programming

  return 0;
}
