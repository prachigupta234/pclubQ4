clear;close all;clc%clear and close figures
%suppose the file from which we are loading data is filename and it has data such that the last colum has value of y and other have features. 
data=load('filename.txt');%load data
X=data(:,1:size(X,2)-1);
Y=data(:,size(X,2);
m=length(y);
%Normailising fetures
mean=mean(X);
standev=std(X);
for i=1:size(X,2)
  a(:,1)=X(:,i)-mean(1,i);
  Xnormalised(:,i)=a(:,1)/standev(1,i);
end;
X=Xnormalised;
X=[ones(m,1) X];
%assuming some value of alpha and the number of iterations
alpha=.001;
numiter=15000;%number of iterations
%let all the theta be zero initially
theta=zeros(size(X,2),1);
%calculating theta and cost function
for iter=1:numiter
  for i=1:size(X,2)	
  c(1,i)=(((X*theta)-y)'*X(:,i));
  end;
  for i=1:size(X,2)
  theta(i,1) = theta(i,1)-(alpha*(1/m)*c(1,i));
  end;
  J(iter)=(1/(2*m))*(((X*theta)-y)'*((X*theta)-y));
end;
fprintf('Theta computed:\n');
fprintf('%f\n',theta);
%this all also be done for not choosing alpha by our own even calculting alpha which is best that can be done by normal equations
%and by this we can also plot some graphs and we can also predict the y foe any value of all the features.
