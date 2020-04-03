clear;close all;clc%clear and close figures
%suppose the file from which we are loading data is filename and it has data such that the last colum has value of y and other have features. 
data=load('filename.txt');%load data
X=data(:,1:size(X,2)-1);
Y=data(:,size(X,2);
m=length(y);
X=[ones(m,1) X];
%assuming some value of alpha and the number of iterations
alpha=.001;
numiter=15000;%number of iterations
lambda=2.3;%Regularisation parameter lambda
%let all the theta be zero initially
theta=zeros(size(X,2),1);
for i=1:numiter
  a=X*theta;
  theta(1,1)=theta(1,1)-alpha*(2*sum(a'*X(:,j)));
  for j=2:size(theta,1)
    theta(j,1)=theta(j,1)-alpha*(2*sum(a'*X(:,j))+lambda*abs(theta(j,1)));
  end;
end;
