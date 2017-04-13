function idx = findClosestCentroids(X, centroids)
%FINDCLOSESTCENTROIDS computes the centroid memberships for every example
%   idx = FINDCLOSESTCENTROIDS (X, centroids) returns the closest centroids
%   in idx for a dataset X where each row is a single example. idx = m x 1 
%   vector of centroid assignments (i.e. each entry in range [1..K])
%

% Set K
K = size(centroids, 1);

% You need to return the following variables correctly.
idx = zeros(size(X,1), 1);

m = size(X,1);
n = size(X,2);
% ====================== YOUR CODE HERE ======================
% Instructions: Go over every example, find its closest centroid, and store
%               the index inside idx at the appropriate location.
%               Concretely, idx(i) should contain the index of the centroid
%               closest to example i. Hence, it should be a value in the 
%               range 1..K
%
% Note: You can use a for-loop over the examples to compute this.
%







% =============================================================

%size(X)
%size(centroids)

distance = zeros(m,size(centroids,1));

for i = 1:m,
	for j = 1:size(centroids,1),
		distance(i,j) = sumsq( (X(i,:) - centroids(j,:) ));
	end
end

[val idx] = min(distance,[],2); % dim 2 means along rows

%for i = 1:10,
%	fprintf(stderr, "%0.2f %0.2f \n", distance(i,1),distance(i,2) );
%end

end

