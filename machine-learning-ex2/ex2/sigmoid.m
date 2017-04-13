function g = sigmoid(z)
%SIGMOID Compute sigmoid function
%   g = SIGMOID(z) computes the sigmoid of z.

% You need to return the following variables correctly 
g = zeros(size(z));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the sigmoid of each value of z (z can be a matrix,
%               vector or scalar).





% =============================================================
n = size(z,2);
m = size(z,1);
if n >= 1,
	for i = 1:m,
		for j = 1:n,
			g(i,j) = 1 / (1 + exp(-z(i,j)));
		end
	end
else
	g = 1 / (1 + exp(-z));
end

end
