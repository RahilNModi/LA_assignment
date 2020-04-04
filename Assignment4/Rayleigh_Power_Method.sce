clc
clear
close
A=[]
printf("Enter a 3x3 matrix:\n")
for i=1:3
    for j=1:3
        printf("Enter element A(%d,%d):",i,j)
        A(i,j)=input("")
    end
end
disp(A,"The matrix is:")
x0=[]
printf("\nEnter the approximate Eigen Vector:\n")
for i=1:3
    x0(i,1)=input("")
end
disp(x0,"Approximate Eigen Vector")
a=max(x0)
disp(a,"Approximate Largest Eigen Value")
v=A*x0
while abs(max(v)-a)>0.002 then
    a=max(v)
    disp(a,"Current Eigen value:")
    x1=v/a
    disp(x1,"Current Eigen Vector:")
    v=A*x1
end
format('v',5)
disp("The largest Eigen Value:")
disp(max(v))
disp("The largest Eigen Vector:")
disp(v/a)
