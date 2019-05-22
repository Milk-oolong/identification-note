function T = dynamic_g1_tt(T, y, x, params, steady_state, it_)
% function T = dynamic_g1_tt(T, y, x, params, steady_state, it_)
%
% File created by Dynare Preprocessor from .mod file
%
% Inputs:
%   T             [#temp variables by 1]     double  vector of temporary terms to be filled by function
%   y             [#dynamic variables by 1]  double  vector of endogenous variables in the order stored
%                                                    in M_.lead_lag_incidence; see the Manual
%   x             [nperiods by M_.exo_nbr]   double  matrix of exogenous variables (in declaration order)
%                                                    for all simulation periods
%   steady_state  [M_.endo_nbr by 1]         double  vector of steady state values
%   params        [M_.param_nbr by 1]        double  vector of parameter values in declaration order
%   it_           scalar                     double  time period for exogenous variables for which
%                                                    to evaluate the model
%
% Output:
%   T           [#temp variables by 1]       double  vector of temporary terms
%

assert(length(T) >= 53);

T = KimModTheBuilder.dynamic_resid_tt(T, y, x, params, steady_state, it_);

T(24) = (1-T(1))*(y(4)/(1-T(1)))^(1+params(8))+T(1)*(y(5)/T(1))^(1+params(8));
T(25) = T(7)^params(1);
T(26) = y(11)^(1-params(1));
T(27) = T(7)/y(11);
T(28) = (1-T(1))*1/(1-T(1))*getPowerDeriv(y(4)/(1-T(1)),1+params(8),1);
T(29) = getPowerDeriv(T(24),1/(1+params(8)),1);
T(30) = T(28)*T(29);
T(31) = ((1-T(1))*T(2)-y(4)*(1-T(1))*T(30))/((1-T(1))*T(2)*(1-T(1))*T(2));
T(32) = getPowerDeriv(y(4)/((1-T(1))*T(2)),params(8),1);
T(33) = (-(y(5)*T(1)*T(30)))/(T(1)*T(2)*T(1)*T(2));
T(34) = getPowerDeriv(y(5)/(T(1)*T(2)),params(8),1);
T(35) = T(1)*1/T(1)*getPowerDeriv(y(5)/T(1),1+params(8),1);
T(36) = T(29)*T(35);
T(37) = (-(y(4)*(1-T(1))*T(36)))/((1-T(1))*T(2)*(1-T(1))*T(2));
T(38) = (T(1)*T(2)-y(5)*T(1)*T(36))/(T(1)*T(2)*T(1)*T(2));
T(39) = (-(y(7)*params(3)))/(y(5)*y(5));
T(40) = getPowerDeriv(y(7)*params(3)/y(5),params(9),1);
T(41) = params(3)*T(13)/params(3)*getPowerDeriv(y(5)*T(13)/params(3),1-params(9),1);
T(42) = getPowerDeriv(T(23),1/(1-params(9)),1);
T(43) = (1-params(3))*getPowerDeriv(y(1),1-params(9),1);
T(44) = getPowerDeriv(T(7),params(1),1);
T(45) = T(26)*T(44);
T(46) = 1/y(11);
T(47) = getPowerDeriv(T(27),params(1)-1,1);
T(48) = getPowerDeriv(T(27),params(1),1);
T(49) = (-y(15))/(y(7)*y(7));
T(50) = getPowerDeriv(y(15)/y(7),params(9),1);
T(51) = getPowerDeriv(y(11),1-params(1),1);
T(52) = T(25)*T(51);
T(53) = (-T(7))/(y(11)*y(11));

end
