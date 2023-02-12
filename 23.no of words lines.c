#include <stdio.h>
int main()
{
char str[100];
int words=0,newline=0,characters=0,i;
printf("the string is: ");
gets(str);
for(i=0;str[i]!='\0';i++)
{ 
if(str[i] == ' ')
{ 
   words++;
}
else if(str[i] == '\n')
{
   newline++;
   words++;
}
else if(str[i] != ' ' && str[i] != '\n')
{
   characters++;
}
}
if(characters > 0)
{
    words++;
    newline++;
}
printf("Total number of words : %d\n",words);
printf("Total number of lines : %d\n",newline);
printf("Total number of characters : %d\n",characters);
return 0;
}
