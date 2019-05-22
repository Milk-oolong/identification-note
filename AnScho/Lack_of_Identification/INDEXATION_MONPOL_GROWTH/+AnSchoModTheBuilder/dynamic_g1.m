function g1 = dynamic_g1(T, y, x, params, steady_state, it_, T_flag)
% function g1 = dynamic_g1(T, y, x, params, steady_state, it_, T_flag)
%
% File created by Dynare Preprocessor from .mod file
%
% Inputs:
%   T             [#temp variables by 1]     double   vector of temporary terms to be filled by function
%   y             [#dynamic variables by 1]  double   vector of endogenous variables in the order stored
%                                                     in M_.lead_lag_incidence; see the Manual
%   x             [nperiods by M_.exo_nbr]   double   matrix of exogenous variables (in declaration order)
%                                                     for all simulation periods
%   steady_state  [M_.endo_nbr by 1]         double   vector of steady state values
%   params        [M_.param_nbr by 1]        double   vector of parameter values in declaration order
%   it_           scalar                     double   time period for exogenous variables for which
%                                                     to evaluate the model
%   T_flag        boolean                    boolean  flag saying whether or not to calculate temporary terms
%
% Output:
%   g1
%

if T_flag
    T = AnSchoModTheBuilder.dynamic_g1_tt(T, y, x, params, steady_state, it_);
end
g1 = zeros(9, 21);
g1(1,10)=T(37);
g1(1,16)=(-(y(11)*T(7)*T(40)/y(17)/(T(9)*y(18))));
g1(1,11)=(-(T(7)*T(8)/y(17)/(T(9)*y(18))));
g1(1,17)=(-((-(y(11)*T(7)*T(8)))/(y(17)*y(17))/(T(9)*y(18))));
g1(1,18)=(-((-(y(11)*T(7)*T(8)/y(17)*T(9)))/(T(9)*y(18)*T(9)*y(18))));
g1(2,9)=(-(T(7)*params(14)*y(17)*(y(17)-T(11))*T(33)));
g1(2,15)=(-(T(7)*params(14)*y(17)*(y(17)-T(11))*T(36)));
g1(2,10)=(-(1/params(5)*(-(T(37)*T(38)))+T(7)*params(14)*y(17)*(y(17)-T(11))*T(39)));
g1(2,16)=(-(T(7)*params(14)*y(17)*(y(17)-T(11))*T(41)));
g1(2,3)=(-(y(12)*params(14)*T(43)));
g1(2,12)=(-(params(14)*(y(12)-T(10))+y(12)*params(14)-params(14)/(2*params(5))*(1-T(44))*2*(y(12)-T(11))+T(7)*params(14)*y(17)*T(14)*(-T(44))));
g1(2,17)=(-(T(7)*params(14)*(T(14)*(y(17)-T(11))+y(17)*T(14))));
g1(3,9)=1-T(16)-(1-1/y(13));
g1(3,10)=(-1);
g1(3,3)=(-(y(9)*T(15)*T(43)*2*(y(12)-T(10))));
g1(3,12)=(-(y(9)*T(15)*2*(y(12)-T(10))));
g1(3,13)=(-(y(9)*(-((-1)/(y(13)*y(13))))));
g1(4,1)=(-(T(19)*T(18)*T(25)*T(29)*T(30)*T(31)));
g1(4,9)=(-(T(19)*T(18)*T(31)*T(35)));
g1(4,2)=(-(T(19)*T(17)*T(42)));
g1(4,11)=1;
g1(4,12)=(-(T(19)*T(18)*T(31)*T(46)));
g1(4,14)=(-(T(19)*T(18)*T(31)*T(25)*T(26)*T(30)));
g1(4,19)=(-(T(17)*T(18)*T(47)));
g1(5,4)=(-(params(9)*1/y(4)));
g1(5,13)=1/y(13);
g1(5,20)=(-(params(12)/100));
g1(6,5)=(-(params(10)*1/y(5)));
g1(6,14)=1/y(14);
g1(6,21)=(-(params(13)/100));
g1(7,6)=1;
g1(7,1)=(-(100*(-(T(32)/T(21)))));
g1(7,9)=(-(100*T(32)/T(20)));
g1(7,14)=(-(100*1/(steady_state(9))/T(22)));
g1(8,7)=1;
g1(8,12)=(-(400*1/(steady_state(7))/T(23)));
g1(9,8)=1;
g1(9,11)=(-(400*1/(steady_state(6))/T(24)));

end