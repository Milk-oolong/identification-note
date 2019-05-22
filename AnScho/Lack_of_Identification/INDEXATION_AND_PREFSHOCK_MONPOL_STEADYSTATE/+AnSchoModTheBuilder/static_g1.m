function g1 = static_g1(T, y, x, params, T_flag)
% function g1 = static_g1(T, y, x, params, T_flag)
%
% File created by Dynare Preprocessor from .mod file
%
% Inputs:
%   T         [#temp variables by 1]  double   vector of temporary terms to be filled by function
%   y         [M_.endo_nbr by 1]      double   vector of endogenous variables in declaration order
%   x         [M_.exo_nbr by 1]       double   vector of exogenous variables in declaration order
%   params    [M_.param_nbr by 1]     double   vector of parameter values in declaration order
%                                              to evaluate the model
%   T_flag    boolean                 boolean  flag saying whether or not to calculate temporary terms
%
% Output:
%   g1
%

if T_flag
    T = AnSchoModTheBuilder.static_g1_tt(T, y, x, params);
end
g1 = zeros(10, 10);
g1(1,5)=y(10)*T(31)-y(6)*T(6)*T(4)*T(31)/y(7)/(T(8)*y(9));
g1(1,6)=(-(T(6)*T(7)/y(7)/(T(8)*y(9))));
g1(1,7)=(-((-(y(6)*T(6)*T(7)))/(y(7)*y(7))/(T(8)*y(9))));
g1(1,9)=(-((-(y(6)*T(6)*T(7)/y(7)*T(8)))/(T(8)*y(9)*T(8)*y(9))));
g1(1,10)=T(2)-y(6)*T(3)*T(6)/y(7)/(T(8)*y(9));
g1(2,5)=(-(T(13)*(-(y(10)*T(31)*T(32)))+T(6)*params(14)*y(7)*T(34)));
g1(2,7)=(-(params(14)*(y(7)-T(9))+y(7)*params(14)*T(38)-params(14)/(2*params(5))*T(38)*2*(y(7)-T(10))+T(6)*params(14)*(T(15)+y(7)*T(14)*T(38))));
g1(2,10)=(-(T(13)*(-(T(2)*T(32)))+T(6)*params(14)*y(7)*T(43)));
g1(3,4)=1-T(16)-(1-1/y(8));
g1(3,5)=(-1);
g1(3,7)=(-(y(4)*params(14)/2*T(38)*2*(y(7)-T(9))));
g1(3,8)=(-(y(4)*(-T(41))));
g1(4,4)=(-(T(19)*T(18)*T(29)*T(30)));
g1(4,6)=1-T(19)*(T(18)*T(30)*T(23)*T(24)+T(17)*T(35));
g1(4,7)=(-(T(19)*T(18)*T(30)*T(24)*T(40)));
g1(5,8)=1/y(8)-1/y(8)*params(9);
g1(6,9)=1/y(9)-params(10)*1/y(9);
g1(7,10)=1/y(10)-params(17)*1/y(10);
g1(8,1)=1;
g1(8,9)=(-(100*((y(9))-y(9))/((y(9))*(y(9)))/T(20)));
g1(9,2)=1;
g1(9,7)=(-(400*((y(7))-y(7))/((y(7))*(y(7)))/T(21)));
g1(10,3)=1;
g1(10,6)=(-(400*((y(6))-y(6))/((y(6))*(y(6)))/T(22)));
if ~isreal(g1)
    g1 = real(g1)+2*imag(g1);
end
end
