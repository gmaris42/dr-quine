#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <unistd.h>
int main() {
int i = 5;
if (!access("Sully_5.c", R_OK)) --i;
char buff[] = "#include <stdio.h>%c#include <string.h>%c#include <stdlib.h>%c#include <unistd.h>%cint main() {%cint i = %d;%cif (!access(%cSully_5.c%c, R_OK)) --i;%cchar buff[] = %c%s%c;%cchar name[154];%cchar ex[200];%csprintf(name, %cSully_%%d.c%c, i);%csprintf(ex, %cSully_%%d%c, i);%cFILE *fd = fopen(name, %cw%c);%cfprintf(fd, buff, 10, 10, 10, 10, 10, i, 10, 34, 34, 10, 34, buff, 34, 10, 10, 10, 34, 34, 10, 34, 34, 10, 34, 34, 10, 10, 10, 10, 10, 10, 34, 34, 10, 10, 10);%cfclose(fd);%cif (i == 0)%creturn 0;%cchar cmd[800];%csprintf(cmd, %cgcc -Wall -Werror -Wextra %%s -o %%s; ./%%s%c, name, ex, ex);%csystem(cmd);%c}%c";
char name[154];
char ex[200];
sprintf(name, "Sully_%d.c", i);
sprintf(ex, "Sully_%d", i);
FILE *fd = fopen(name, "w");
fprintf(fd, buff, 10, 10, 10, 10, 10, i, 10, 34, 34, 10, 34, buff, 34, 10, 10, 10, 34, 34, 10, 34, 34, 10, 34, 34, 10, 10, 10, 10, 10, 10, 34, 34, 10, 10, 10);
fclose(fd);
if (i == 0)
return 0;
char cmd[800];
sprintf(cmd, "gcc -Wall -Werror -Wextra %s -o %s; ./%s", name, ex, ex);
system(cmd);
}
