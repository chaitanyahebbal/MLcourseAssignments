function [C, sigma] = dataset3Params(X, y, Xval, yval)
%DATASET3PARAMS returns your choice of C and sigma for Part 3 of the exercise
%where you select the optimal (C, sigma) learning parameters to use for SVM
%with RBF kernel
%   [C, sigma] = DATASET3PARAMS(X, y, Xval, yval) returns your choice of C and 
%   sigma. You should complete this function to return the optimal C and 
%   sigma based on a cross-validation set.
%

% You need to return the following variables correctly.
C = 1;
sigma = 0.1;

% ====================== YOUR CODE HERE ======================
% Instructions: Fill in this function to return the optimal C and sigma
%               learning parameters found using the cross validation set.
%               You can use svmPredict to predict the labels on the cross
%               validation set. For example, 
%                   predictions = svmPredict(model, Xval);
%               will return the predictions on the cross validation set.
%
%  Note: You can compute the prediction error using 
%        mean(double(predictions ~= yval))
%







% =========================================================================
%vec = [0.01 0.03 0.1 0.3 1 3 10 30];

%C_trial = [0.01 0.03 0.1 0.3 1 3 10 30];
%sigma_trial = [0.01 0.03 0.1 0.3 1 3 10 30];

%matrix to store prediction errors

%M = zeros(length(C_trial)*length(sigma_trial),3);
%size(M)
%idx = 1;
%for i = 1:length(C_trial),
%	for j = 1:length(sigma_trial),
%		model= svmTrain(X, y, C_trial(i), @(x1, x2) gaussianKernel(x1, x2, sigma_trial(j)));
%		prediction = svmPredict(model,Xval);
%		error = mean(double(prediction ~= yval));
%		M(idx,:) = [error C_trial(i) sigma_trial(j)];
%		idx = idx + 1;
%	end
%end

%[val min_error_idx] = min(M(:,1));
%fprintf(stderr, "%0.2f %0.2f\n", M(min_error_idx, 2),M(min_error_idx, 3));
%C = M(min_error_idx, 2);
%sigma = M(min_error_idx, 3);

%for i = 1:64,
%	fprintf(stderr, "%0.2f, %0.2f, %0.2f\n",M(i,1),M(i,2),M(i,3) );
%end

end
