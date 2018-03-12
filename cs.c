#include<stdio.h>
#include<string.h>
#include<stdlib.h>

int main(int argc, char **argv[])		//argc is no. of input scanned and argv has each argument 
{	int i=0;
	char ch,e[50],s[50],*d[50];
	strcpy(d,argv[1]);			//storing the 2nd argument which is my to-be-encrypted-string into d
	strcpy(s,d);
	char *rot_val="Tobias";
	char *k=getenv(rot_val);
	int key=atoi(k); 			//converting k to integer as by default the value scanned in by getenv will be of str format?
	
	if((key<=25)&&(key>=0))			//checking for valid key
	{
		while(s[i]!='\0')
			{	ch=s[i];
				if(ch>='a'&&ch<='z')		
					ch+=key;
					if(ch>'z')		//checking value of ch for posiibilty of rotation
						ch-='z'+'a'-1;
				else if(ch>='A'&&ch<='Z')
					ch+=key;
					if(ch>'Z')
						ch-='Z'+'A'-1;
				e[i]=ch;
				i++;
			}
	
		while(e[i]!='\0')
			{	printf("%c",e[i]);i++;}
	}
	else 
		printf("You entered wrong value for key");


	return 0;
}
