clc
clear
close
A=[]
printf("Enter 3 independent vectors in the form of 3X3 matrix:\n")
for j=1:3
    printf("Enter vector v%d:\n",j);
    for i=1:3
       A(i,j)=input("");
    end
end
v1=A(:,1)
v2=A(:,2)
v3=A(:,3)
printf("Three vectors are:\n")
disp(v3,v2,v1)
disp("Now we orthogonalise them using Gram Schimdt Process.")
q1=v1/norm(v1)
e=v2-(q1'*v2)*q1
q2=e/norm(e)
E=v3-((q1'*v3)*q1+(q2'*v3)*q2)
q3=E/norm(E)
disp("Finally three orthonormal vectors are:")
disp(q1,"q1=")
disp(q2,"q2=")
disp(q3,"q3=")
