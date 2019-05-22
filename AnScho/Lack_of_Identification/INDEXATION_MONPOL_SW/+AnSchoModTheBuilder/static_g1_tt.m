function T = static_g1_tt(T, y, x, params)
% function T = static_g1_tt(T, y, x, params)
%
% File created by Dynare Preprocessor from .mod file
%
% Inputs:
%   T         [#temp variables by 1]  double   vector of temporary terms to be filled by function
%   y         [M_.endo_nbr by 1]      double   vector of endogenous variables in declaration order
%   x         [M_.exo_nbr by 1]       double   vector of exogenous variables in declaration order
%   params    [M_.param_nbr by 1]     double   vector of parameter values in declaration order
%
% Output:
%   T         [#temp variables by 1]  double   vector of temporary terms
%

assert(length(T) >= 54);

T = AnSchoModTheBuilder.static_resid_tt(T, y, x, params);

T(25) = (1-params(5))^(1/params(4));
T(26) = (y(7)/T(1))^params(6);
T(27) = (y(4)/T(2))^params(7);
T(28) = T(2)/T(3);
T(29) = 1/T(28);
T(30) = T(29)^params(8);
T(31) = y(7)^params(17);
T(32) = (y(7))^(1-params(17));
T(33) = 1/T(2);
T(34) = getPowerDeriv(y(4)/T(2),params(7),1);
T(35) = T(30)*(y(6))*T(26)*T(33)*T(34);
T(36) = getPowerDeriv(T(14),1-params(9),1);
T(37) = getPowerDeriv(y(5),(-params(4)),1);
T(38) = getPowerDeriv(T(8),(-1),1);
T(39) = y(4)*(T(8)*T(7)*T(37)-T(10)*T(5)*T(37))/(T(8)*T(8))/y(4);
T(40) = (y(7)-T(13))*T(39);
T(41) = getPowerDeriv(y(6),params(9),1);
T(42) = getPowerDeriv(y(7),params(17),1);
T(43) = getPowerDeriv((y(7)),1-params(17),1);
T(44) = 1-(T(32)*T(42)+T(31)*T(43));
T(45) = 1/T(1)*getPowerDeriv(y(7)/T(1),params(6),1);
T(46) = (y(6))*T(45);
T(47) = (-1)/(y(8)*y(8));
T(48) = (-(T(25)*y(4)))/(T(2)*T(2));
T(49) = T(34)*T(48);
T(50) = T(28)*T(28);
T(51) = (-((T(25)*T(3)-T(25)*T(2))/(T(3)*T(3))))/T(50);
T(52) = getPowerDeriv(T(29),params(8),1);
T(53) = T(51)*T(52);
T(54) = T(30)*(y(6))*T(26)*T(49)+(y(6))*T(26)*T(27)*T(53);

end
