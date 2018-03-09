#include<stdio.h>

int main(int key, char *c)
{int i=0;
char ch,e[50];	
	if((key<=25)&&(key>=0))
	{
		//printf("Mesg for encryption=%s",c);
		while(c[i]!='\0')
			{	ch=c[i];
				if(ch>='a'&&ch<='z')
					ch+=key;
					if(ch>'z')
						ch-='z'+'a'-1;
				else if(ch>='A'&&ch<='Z')
					ch+=key;
					if(ch>'Z')
						ch-='Z'+'A'-1;
				e[i]=ch;
			i++;}
	
		while(e[i]!='\0')
			{	printf("%c",e[i]);i++;}
	}
	else 
		printf("You entered wrong value for key");


	return 0;
}
