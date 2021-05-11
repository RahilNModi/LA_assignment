//Guassian elimination of all kinds(Row Exchange-temperorary and Permanent Breakdown)
clc
clear
close
a=[]
b=[]
n=input("Enter order of matrix:")
for i=1:n
    for j=1:n
        printf("Enter a number for a(%d %d):",i,j)
        a(i,j)=input("");
    end
end
for i=1:n
    printf("Enter number a(%d %d) for augmented matrix",1,i)
    b(i,1)=input("")
end
A=[a b]
disp("The augmented matrix is")
disp(A)
//Forward elimination
for j=2:n
    for i=j:n
        if(A(j-1,j-1)==0)then
            k=j
            while(k<=n && A(k,j-1)==0)do
                k=k+1
            end
            if(k<=n)then
                A([j-1,k],:)=A([k,j-1],:)
                disp(A)
            else
                break
            end
        end
        A(i,j:n+1)=A(i,j:n+1)-A(j-1,j:n+1)*A(i,j-1)/A(j-1,j-1)
        //disp(A(i,i:n+1))
        A(i,j-1)=0
    end
    disp(A)
end
for i=1:n
    if(A(i,i)~=0)then
        printf("\nPivot %d => %f",i,A(i,i))
    elseif(A(n,n)==0 && A(n,n+1)==0)then
        printf("\nPivot %d => %f",i,A(i,i))
        printf("\nHas infinite solutions")
        return
    else
        printf("\nHas no solution(Permanent Breakdown)")
        return
    end    
end
//Backward substitution
x(n)=A(n,n+1)/A(n,n)
//disp(x(n))
for i=n-1:-1:1
    sum=0
    for j=i+1:n
        sum=sum+A(i,j)*x(j)
    end
    x(i)=(A(i,n+1)-sum)/A(i,i)
end
for i=1:n
   printf("\nSolution x(%d) => %f",i,x(i))
end
