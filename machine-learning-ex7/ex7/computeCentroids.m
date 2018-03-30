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








% =============================================================

for k = 1:K
    c_k = idx==k; % 1 on indexes which have Ck as centroid
    n_k = sum(c_k); % number of indexes with Ck as centroid 
    c_k_matrix = repmat(c_k,1,n); % copies n_k into n (number of features) columns
    X_c_k = X .* c_k_matrix; % recaulculates the values of X which are closer to centroid Ck
    centroids(k,:) = sum(X_c_k) ./ n_k; % caulculates the mean of X (which have Ck as centroid) to get the new Ck position
end  


end

