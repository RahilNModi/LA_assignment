clear
clc
close
n=3
a=[]
A=[]
printf("Enter 3x3 matrix:\n\n")
for i=1:3
    for j=1:4
        printf("Enter the a(%d,%d)th element:",i,j)
        a(i,j)=input("");
    end
end
A=a
disp(a,"The matrix is:")
[v,pivot]=rref(A)
disp(v,pivot)
r=length(pivot)
printf("Rank r = %d\n",r)
cs=A(:,pivot)
printf("Column space :\n")
disp(cs)
rs=A(pivot,:)
printf("Row space :\n")
disp(rs)
printf("Null Space:\n")
ns=kernel(A)
disp(ns)
printf("Left Null Space:\n")
lns=kernel(A')
disp(lns)
