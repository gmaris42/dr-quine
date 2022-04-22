#include <stdio.h>
#define CHILDNAME "Grace_kid.c"
#define BUFF "#include <stdio.h>%c#define CHILDNAME %cGrace_kid.c%c%c#define BUFF %c%s%c%c#define FC(x)int main() {fprintf(fopen(CHILDNAME, x), BUFF, 10, 34, 34, 10, 34, BUFF, 34, 10, 10, 34, 34, 10, 10, 9, 10);}%cFC(%cw%c);%c/*%c%cComment.%c*/"
#define FC(x)int main() {fprintf(fopen(CHILDNAME, x), BUFF, 10, 34, 34, 10, 34, BUFF, 34, 10, 10, 34, 34, 10, 10, 9, 10);}
FC("w");
/*
	Comment.
*/