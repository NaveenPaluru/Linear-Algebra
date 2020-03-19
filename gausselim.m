
% The code is taken from https://gist.github.com/esromneb/1d57b1d16d54cde37332
% This Function IMplements Gaussian Elimination

% Input : (Square Matrix) Matrix A and vector b in Ax = b
% Output: solution Vector x

function x = gausselim(A,b) 
    a = [A b];
    [m,n]=size(a);
    for i=1:m-1
        for j=2:m
            if a(i,i)==0
                tmp=a(i,:);a(i,:)=a(j,:);
                a(j,:)=tmp;
            end
        end
        for k=i+1:m
	    if a(i,i)~=0
            	a(k,:)=a(k,:)-a(i,:)*(a(k,i)/a(i,i));
	    else
		error('Divide by Zero - Occurred, hence terminated');
	    end
        end
    end
    x=zeros(1,m);
    for i=m:-1:1
        c=0;
        for j=2:m
            c=c+a(i,j)*x(j);
        end
	if a(i,i)~=0
             x(i)=(a(i,n)-c)/a(i,i);
	else
	     error('Divide by Zero - Occurred, hence terminated');
	end
    end
end