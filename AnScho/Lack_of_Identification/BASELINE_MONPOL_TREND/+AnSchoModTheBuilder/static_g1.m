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
g1 = zeros(9, 9);
g1(1,5)=T(5)*T(34)-y(6)*T(9)*T(7)*T(34)/y(7)/(T(11)*y(9));
g1(1,6)=(-(T(9)*T(10)/y(7)/(T(11)*y(9))));
g1(1,7)=(-((-(y(6)*T(9)*T(10)))/(y(7)*y(7))/(T(11)*y(9))));
g1(1,9)=(-((-(y(6)*T(9)*T(10)/y(7)*T(11)))/(T(11)*y(9)*T(11)*y(9))));
g1(2,5)=(-(1/params(5)*(-(T(5)*T(34)*T(35)))+T(9)*params(15)*y(7)*T(36)));
g1(2,7)=(-(params(15)*(y(7)-T(12))+T(9)*params(15)*T(16)));
g1(3,4)=1-T(17)-(1-1/y(8));
g1(3,5)=(-1);
g1(3,8)=(-(y(4)*(-T(40))));
g1(4,4)=(-(T(20)*T(19)*T(32)*T(33)));
g1(4,6)=1-T(20)*(T(19)*T(33)*T(29)*T(25)*T(26)+T(18)*T(37));
g1(4,7)=(-(T(20)*T(19)*T(33)*T(29)*T(26)*T(39)));
g1(4,8)=(-(T(20)*T(19)*T(33)*T(47)));
g1(5,8)=1/y(8)-1/y(8)*params(10);
g1(6,9)=1/y(9)-params(11)*1/y(9);
g1(7,1)=1;
g1(7,9)=(-(100*((y(9))-y(9))/((y(9))*(y(9)))/T(21)));
g1(8,2)=1;
g1(8,7)=(-(400*((y(7))-y(7))/((y(7))*(y(7)))/T(22)));
g1(9,3)=1;
g1(9,6)=(-(400*((y(6))-y(6))/((y(6))*(y(6)))/T(23)));
if ~isreal(g1)
    g1 = real(g1)+2*imag(g1);
end
end
