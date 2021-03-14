clear;
%Octave code


%variables

number_of_resources=10;
number_of_iterations=200;
eficiency_coeficiant=1.2;
profit_coeficiant=1.1;

%test cases:
%1)eficiency_coeficiant>profit_coeficiant
%2)eficiency_coeficiant==profit_coeficiant
%3)eficiency_coeficiant<profit_coeficiant


%------------------------------------------------------------


consumption=rand(number_of_resources);


production=zeros(number_of_resources,1);
for i0=1:number_of_resources
consumption(i0,i0)=0;%production of resource does not requare that same resource
production(i0,1)=sum(consumption(:,i0))*eficiency_coeficiant;
end

x=zeros(number_of_resources,number_of_iterations);
x(:,1)=ones(number_of_resources,1);
for i0=2:number_of_iterations
  curentPrices=x(:,i0-1);
  newPrices=((consumption*curentPrices)./production)*profit_coeficiant;
  x(:,i0)=newPrices;
end


%because of rounding error replace:
%(Is 'a' exatly zero?) with (Is 'a' close to zero?)
%in other words, replace (a==0) with (abs(a)<0.000001)

close_to_zero=0.0000001;%use positive value that is very close to zero
determinant=det(diag(production/profit_coeficiant)-consumption);
if(determinant>close_to_zero)
disp("Do we have deflation in graph plot(x')")
end
if(abs(determinant)<close_to_zero)%is it close to zero, but not exatly zero (rounding error is the reason why it is not exatly zero)
disp("Do we have equilibrium in graph plot(x')?")
end
if(determinant<-close_to_zero)
disp("Do we have hyper-inflation in graph plot(x')?")
end

q=(x(:,2:number_of_iterations)./x(:,1:number_of_iterations-1))';%(curent price)/(previous price)

disp('ratio: profit_coeficiant/eficiency_coeficiant')
disp(profit_coeficiant/eficiency_coeficiant)
disp('ratio: (curent price)/(previous price)')
disp(q(rows(q),:)')%get last walues 


%plot((x./(ones(number_of_resources,1)*x(1,:)))');%divide all resource costs with curent cost of one of the resources
%plot(x')%prices for all resources
%plot(q(:,1));%graph curent price/previous price for 1. resource

plot(x');

