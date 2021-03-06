function centroids = computeCentroids(X, idx, K)
%COMPUTECENTROIDS returns the new centroids by computing the means of the 
%data points assigned to each centroid.
%   centroids = COMPUTECENTROIDS(X, idx, K) returns the new centroids by 
%   computing the means of the data points assigned to each centroid. It is
%   given a dataset X where each row is a single data point, a vector
%   idx of centroid assignments (i.e. each entry in range [1..K]) for each
%   example, and K, the number of centroids. You should return a matrix
%   centroids, where each row of centroids is the mean of the data points
%   assigned to it.
%

% Useful variables
[m n] = size(X);

% You need to return the following variables correctly.
centroids = zeros(K, n);


% ====================== YOUR CODE HERE ======================
% Instructions: Go over every centroid and compute mean of all points that
%               belong to it. Concretely, the row vector centroids(i, :)
%               should contain the mean of the data points assigned to
%               centroid i.
%
% Note: You can use a for-loop over the centroids to compute this.
%


% for i = 1:K,
%     end_sum = zeros(1,n);
%     count = 0;
%     for j = 1:length(idx)
%         if idx(j) == i
%             end_sum = end_sum + X(j,:);
%             count = count + 1;
%         endif
%     end
%     centroids(i,:) = end_sum / count;

% end

for i=1:K
    filtered_matrix = X(find(idx==i), :);

    if length(filtered_matrix) > 0
        centroids(i,:) = mean(X(find(idx==i), :));
    else
        centroids(i,:) = zeros(1, n);
    endif
endfor




% =============================================================


end

