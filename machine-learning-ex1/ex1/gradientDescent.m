function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESCENT(X, y, theta, alpha, num_iters) updates theta by 
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
    %       of the cost function (computeCost) and gradient here.
    %

    x_cpy = X;

    # multiply theta with X values
    for i = 1:length(theta)
        x_cpy(:, i) = x_cpy(:,i) * theta(i);
    endfor

    # calculate expected
    y_exp = sum(x_cpy,2);

    # calculation
    theta(1) = theta(1) - alpha * sum(y_exp - y) * 1/(m);
    theta(2) = theta(2) - alpha * sum((y_exp - y) .* X(:, 2)) * 1/m;
    
    % ============================================================

    % Save the cost J in every iteration    
    J_history(iter) = computeCost(X, y, theta);

end

end
