function T = dynamic_resid_tt(T, y, x, params, steady_state, it_)
% function T = dynamic_resid_tt(T, y, x, params, steady_state, it_)
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

assert(length(T) >= 26);

T(1) = 1+params(2)/400;
T(2) = y(11)^(-params(4));
T(3) = y(18)^(-params(4));
T(4) = y(21);
T(5) = T(2)*y(16);
T(6) = 1/(1+params(1)/400);
T(7) = T(3)*T(4);
T(8) = 1+params(3)/100;
T(9) = (steady_state(7))^(1-params(16))*y(3)^params(16);
T(10) = y(13)^params(16)*(steady_state(7))^(1-params(16));
T(11) = (steady_state(6))*(y(13)/T(1))^params(6)*(y(10)/y(1)*y(15))^params(7);
T(12) = 1/params(15);
T(13) = 1/params(5);
T(14) = params(14)/(2*params(5));
T(15) = (y(13)-T(9))^2;
T(16) = T(6)*params(14);
T(17) = T(7)/T(5)*y(17)/y(10);
T(18) = params(14)/2;
T(19) = T(11)^(1-params(8));
T(20) = y(2)^params(8);
T(21) = exp(params(11)*x(it_, 1));
T(22) = y(10)/(steady_state(4));
T(23) = y(1)/(steady_state(4));
T(24) = y(15)/(steady_state(9));
T(25) = y(13)/(steady_state(7));
T(26) = y(12)/(steady_state(6));

end