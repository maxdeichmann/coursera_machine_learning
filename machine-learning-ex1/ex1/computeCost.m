function J = computeCost(X, y, theta)
%COMPUTECOST Compute cost for linear regression
%   J = COMPUTECOST(X, y, theta) computes the cost of using theta as the
%   parameter for linear regression to fit the data points in X and y

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta
%               You should set J to the cost.

# create matrix which is taken to multiply
x_cpy = X;

# multiply theta with X values
for i = 1:length(theta)
    x_cpy(:, i) = x_cpy(:,i)*theta(i);
endfor

# calculate expected
y_exp = sum(x_cpy,2);

# comparison
J = sum((y_exp-y).^2)*1/(2*m)





% =========================================================================

end
