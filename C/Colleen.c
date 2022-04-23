#include <stdio.h>
/*
	Outside comment.
*/
void colleen(void) {}
int main(void) {
	char buff[] = "#include <stdio.h>%c/*%c%cOutside comment.%c*/%cvoid colleen(void) {}%cint main(void) {%c%cchar buff[] = %c%s%c;%c%cprintf(buff, 10, 10, 9, 10, 10, 10, 10, 9, 34, buff, 34, 10, 9, 10, 9, 10, 10, 9, 10, 10, 10);%c%ccolleen();%c/*%c%cInside comment.%c*/%c}%c";
	printf(buff, 10, 10, 9, 10, 10, 10, 10, 9, 34, buff, 34, 10, 9, 10, 9, 10, 10, 9, 10, 10, 10);
	colleen();
/*
	Inside comment.
*/
}
