clear
clc
close
a=[]
b=[]
printf("For equations of form b=C+D*t or y=c+m*x or values of x and y:\n")
printf("Enter in given fashion.\n")
printf("Enter the number of equations or values:\n")
n=input("");
for i=1:n
    printf("Enter term a(%d,1) or else Enter 1(best fit line):\n",i)
    a(i,1)=input("")
    printf("Enter term a(%d,2) or else Enter the value of t%d or x%d(best fit line):\n",i,i,i)
    a(i,2)=input("")
end
for i=1:n
     printf("Enter term b(%d,1) or Enter the value of b%d or y%d(best fit line):\n",i,i,i)
    b(i,1)=input("")
end
disp(a,"The co-efficient matrix  A is:")
disp(b,"The constant matrix b is:")
printf("\nTo find best fit line using least square method we use normalisation formula:\n")
printf("Let C be A transpose\n")
printf("C*A*x=C*b\n")
lhs=a'*a
rhs=a'*b
disp(rhs,lhs)
printf("\nWe solve for C and D or c or m:\n")
x=inv(lhs)*rhs
disp(x)
printf("\nThe best fit line obtained using least square method is :\n\n")
printf("b=(%f)+(%f)*t\n",x(1,1),x(2,1))
printf("or\n")
printf("y=(%f)+(%f)*x\n\n",x(1,1),x(2,1))
printf("The projection of b onto column space of A would be:\n")
p=a*x
disp(p)
printf("\nFinally the minimised error vector and its squared value are:\n")
e=b-p
disp(e,"Error Vector")
s=0
for i=1:n
    s=s + (e(i,1)^2)
end
printf("\nSquared value of minimum error is %f\n\n",s)
printf("At last we can verify that error is perpendicular to columns of A.\n")
ip1=e'*a(:,1)
ip2=e'*a(:,2)
disp(ip1,"Inner Product 1")
disp(ip2,"Inner product 2")
