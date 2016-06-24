function g = sigmoid(z)

g = zeros(size(z));
% This function computes sigmoid of z (usually X*theta)
g = 1 ./ (1 + exp(-z));

end
