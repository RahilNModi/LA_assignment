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
//Echleon form
for j=2:n
    for i=j:n
        k=j
        if(a(j-1,j-1)==0)then
            k=j+1
        end
        a(i,k:n+1)=a(i,k:n+1)-a(j-1,k:n+1)*(a(i,k-1)/a(j-1,k-1))
        a(i,k-1)=0
    end
    disp(a)
end
for i=1:3
    for j=i:4
        if(a(i,j)~=0)then
            printf("%d has pivot\n",j)
            printf("The basis vectors include:")
            disp(A(:,j))
            break;
        end
    end
end
