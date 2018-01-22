function g = sigmoid(z)
%SIGMOID Compute sigmoid function
%   g = SIGMOID(z) computes the sigmoid of z.

% You need to return the following variables correctly 
g = zeros(size(z));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the sigmoid of each value of z (z can be a matrix,
%               vector or scalar).

% g = arrayfun(@(t) (1 + exp(1)^-t)^-1, z);
g = (1.0 + exp(-z)) .^ -1;

% g = sigmf(z);


% =============================================================

end
