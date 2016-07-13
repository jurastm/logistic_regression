function [X_norm, mu, sigma] = featureNormalize(X)

% Normalizes the features in X. 
% ===========================================================


mu = mean(X);                     %compute mean of X
X_norm = bsxfun(@minus, X, mu);   %make features zero-mean

sigma = std(X_norm);              %compute standard deviation
X_norm = bsxfun(@rdivide, X_norm, sigma);   %compute normalized version of X


% ============================================================

end
