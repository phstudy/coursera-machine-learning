function [theta, J_history] = gradientDescentMulti(X, y, theta, alpha, num_iters)
%GRADIENTDESCENTMULTI Performs gradient descent to learn theta
%   theta = GRADIENTDESCENTMULTI(x, y, theta, alpha, num_iters) updates theta by
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);


for iter = 1:num_iters

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCostMulti) and gradient here.
    %
%     theta_m = size(theta, 1);
%     new_theta = zeros(theta_m, 1);
%     
%     delta = (X * theta - y)';
%     for i = 1:theta_m
%         theta_i = theta(i,:) - alpha * (1 / m) * sum(delta * X(:,i));
%         new_theta(i,1) = theta_i;
%     end;
% 
%     theta = new_theta;

    delta = (X * theta - y);
    theta = theta - alpha * (1 / m) * X' * delta;

    % ============================================================

    % Save the cost J in every iteration    
    J_history(iter) = computeCostMulti(X, y, theta);

end

end
