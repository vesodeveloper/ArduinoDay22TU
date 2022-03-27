#include <stdio.h>
int main(void){
int x;
printf("Enter x:\n");
scanf("%d",&x);
if(x==1){
goto pass;
}
else if(x==0){
goto fail;
}
pass:
printf("true\n");
fail:
printf("false\n");
return 0;
}
