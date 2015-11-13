% computer exercise 1, chap 6, Duda 
% use feature vector and weight vectors as column vector
close all;
clc;

% dimension
d=2;
% non-linear function parameters
a = 1.716;
b = 2/3;
step = 0.05;

%weight vectors of hidden layer
w = [0.5, 0.3, -0.1; -0.5, -0.4, 1.0]';

% weight vectors for output
v = [1.0 -2.0 0.5]';

%output of hidden layers
y = zeros(3,1);
y(1) = 1;

%output of output layer
z = zeros(1,(10/step + 1).^2);
% i denotes x axis, j denotes y axis
x1 = -5.0;
x2 = -5.0;
index = 1;
while x1 <= 5.0
    while x2 <= 5.0
        x = [1 x1 x2]';
        % calculate hidden layers
        for j=1:d
             y(1+j) = a*tanh(b*w(:,j)'*x);
        end    
        % calculate output
        if a*tanh(b*v'*y) > 0
            z(index) = 1;
        elseif a*tanh(b*v'*y) < 0
            z(index) = -1;
        else
            z(index) = 0;
        end    
         index = index + 1;
        x2 = x2 + step;
    end
    x1 = x1 + step;
    x2 = -5.0;
end    

x1 = -5.0:step:5.0;
x2 = -5.0:step:5.0;
z=reshape(z,[10/step + 1,10/step + 1]);
surface(x1,x2,z)

