#include<stdio.h>
#include<math.h>
#define f(x,y) (3*(x)*(x)+1) //3x^2+1
int main()
{
 float x,y,h,xp,dy;
 int i,n;
 printf("Enter initial values of x and y: ");
 scanf("%f%f",&x,&y);
 printf("Enter x-value at which y is required: ");
 scanf("%f",&xp);
 printf("Enter step-size: ");
 scanf("%f",&h);
 n=(xp-x)/h;
 for(i=1;i<=n;i++)
 {
 dy=h*f(x,y);
 x=x+h;
 y=y+dy;
 }
 printf("\nThe value of y at x=%.2f is %.4f ",x,y);
printf("\nSaugatRijal");
 return 0;
}
