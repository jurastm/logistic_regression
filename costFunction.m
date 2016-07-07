function [J, grag] = costFunction (theta, X, y, lambda)

m = lenght(y);
J = 0;
grad = zeros(size(theta));

temp1 = -1*(y .* log(sigmoid(X*theta)));
temp2 = (1 - y) .* log(1 - sigmoid(X*theta));

thetaT = theta;
thetaT(1) = 0;
reg = (lambda/(2*m))*sum(thetaT .^ 2);

J = (1/m)*sum(temp1 - temp2) + reg;
grad = (1/m)*(X'*(sigmoid(X*theta) - y) + thetaT*(lambda/m);

end
