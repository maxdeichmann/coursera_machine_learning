function p = predict(Theta1, Theta2, X)
%PREDICT Predict the label of an input given a trained neural network
%   p = PREDICT(Theta1, Theta2, X) outputs the predicted label of X given the
%   trained weights of a neural network (Theta1, Theta2)

% Useful values
m = size(X, 1);
num_labels = size(Theta2, 1);

% You need to return the following variables correctly 
p = zeros(size(X, 1), 1);

% ====================== YOUR CODE HERE ======================
% Instructions: Complete the following code to make predictions using
%               your learned neural network. You should set p to a 
%               vector containing labels between 1 to num_labels.
%
% Hint: The max function might come in useful. In particular, the max
%       function can also return the index of the max element, for more
%       information see 'help max'. If your examples are in rows, then, you
%       can use max(A, [], 2) to obtain the max for each row.
%


% "theta1"
% size(Theta1)
% Theta1(1:5,1:5)

% "theta2"
% size(Theta2)
% Theta2(1:5,1:5)

% "X"
% size(X)

X = [ones(size(X, 1), 1) X];

% size(X)
#X(1, :)


for (c = 1:size(X,1))

    c

    % sample = X(c, :);

    % sample_sized = repmat(X(c,:), size(Theta1,1), 1);
    "th1";
    th1 = Theta1;
    size(th1);
    size(X(c,:)');
    a = th1 * X(c,:)';
    % th1 = th1 .* sample_sized;
    % a = sum(th1,2);
    a1 = sigmoid(a);
    a1 = [[1],a1']';
    
    th2 = Theta2;
    "th2";
    size(th2);
    size(a1);
    a = th2 * a1;
    a2 = sigmoid(a);
    [value, index] = max(a2);
    
    % sig1 = sig1';

    % sig1_sized = repmat(sig1, size(Theta2,1), 1);
    
    % th2 = Theta2;
    % th2 = th2 .* sig1_sized;
    
    % a = sum(th2,2);
    % sig2 = sigmoid(a)

    % [value, index] = max(sig2);

    p(c) = index;

    index
end
% =========================================================================


end
