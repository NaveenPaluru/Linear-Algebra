function Q = CGS(V)

    % This codes implements Classical Gram Schmidt Algorithm
    % Ref : NLA by Trefethen and Bau

    % V is input matrix
    % Q is Othogonal Matrix

    [m, n] = size(V);
    
    Q = zeros(m,n);  % Othogonal Matrix
    
    % Dummy Variable
    x  = zeros(m,n); 
     
    % loop to iterate over columns
    for i = 1:n
        x(:,i) = V(:,i);
        % loop to remove the projections along previous orthogonal vectors
        for j = 1:i-1
            x(:,i) = x(:,i)-(Q(:,j)'*V(:,i))*Q(:,j);
        end
        Q(:,i) = x(:,i)./norm(x(:,i));
        % stacking the formed othonormal vectors
    end
        
end