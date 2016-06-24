function g = sigmoid(z)

g = zeros(size(z));
% This function computes sigmoid of z. Usually X*theta, whereas matrix X is entire training set and vector theta is a set of
% parameters. So, whenever X is m-by-n matrix. m is equal to number of training examples and n is equal to number of features.
% Moreover, lenght of vector theta should always be equal to n (if not counting bias unit)
g = 1 ./ (1 + exp(-z));

end
