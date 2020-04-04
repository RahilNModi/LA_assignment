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
l=poly(0,'lamda')
C=A-l*eye(3,3)
disp(C,"The characteristic matrix is:")
p=poly(A,'lambda')
disp(p,"The characteristic equation is:")
l=spec(A)
disp(l,"Eigen Values are:")
E=[]
C=[]
l=l'
for i=1:3
    B=A-l(i)*eye(3,3)
    printf("\nThe characteristic matrix for lambda%d is:\n",i)
    disp(B)
    R=rref(B)
    disp(R)
    e=[]
    if(R(1,1)==0)then
        e(1,1)=1;e(2,1)=-R(2,1);e(3,1)=-R(3,1);
    elseif(R(2,2)==0)then
        e(1,1)=-R(1,2);e(2,1)=1;e(3,1)=-R(3,2);
    else
        e(1,1)=-R(1,3);e(2,1)=-R(2,3);e(3,1)=1;
    end
    c=e/norm(e)
    E=[E e]
    C=[C c]
end
disp("The Eigen Vectors are:")
disp(E)
disp("The Unit Eigen Vectors are:")
disp(C)
