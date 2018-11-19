#include "stdlib.h"

int main()
{
        int *p = malloc(sizeof(int));
        if (NULL == p) {
                exit(-1);
        }

        p = realloc(p, 2 * sizeof(int));
        if (NULL == p) {
                exit(-1);
        }
        free(p);

        return 0;
}
