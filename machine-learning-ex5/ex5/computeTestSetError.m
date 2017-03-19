% Looks like lambda = 3 is the optimal value of the regularization
% parameter. Let us find the error in the test set

% Train linear regression based on the training set
theta_test = trainLinearReg([ones(size(X_poly, 1), 1) X_poly], y, 3);

error_test = linearRegCostFunction([ones(size(X_poly_test, 1), 1) X_poly_test], ytest, theta_test, 0);

fprintf('Test set error based on lambda = 3:\n');
fprintf('%d\n', error_test);
