#include <stdio.h>
/*! \file
    \brief Confirm doxgen works for simplest case: C-code

    @note *.bash is filtered to then use C, so we care about this even though we aren't writting C
*/

/**
  \brief `main` function C code to make sure doxygen is working as expected
  @return 0 always true
 */
int main(){
   printf("hello\n");
   int ret = 0; ///< `ret` set to always report success
   return(ret);
}
