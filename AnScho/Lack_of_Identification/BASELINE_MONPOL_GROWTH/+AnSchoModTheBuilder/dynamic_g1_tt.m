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

assert(length(T) >= 48);

T = AnSchoModTheBuilder.dynamic_resid_tt(T, y, x, params, steady_state, it_);

T(25) = (steady_state(6))*(y(11)/T(1))^params(6);
T(26) = y(8)/y(1);
T(27) = (T(26)*y(13))^params(7);
T(28) = y(13)*(-y(8))/(y(1)*y(1));
T(29) = getPowerDeriv(T(26)*y(13),params(7),1);
T(30) = getPowerDeriv(T(12),1-params(8),1);
T(31) = 1/(steady_state(4));
T(32) = (-(T(8)/T(6)*y(14)))/(y(8)*y(8));
T(33) = (y(16)-T(11))*T(32);
T(34) = y(13)*1/y(1);
T(35) = T(25)*T(29)*T(34);
T(36) = T(8)/T(6)/y(8);
T(37) = (y(16)-T(11))*T(36);
T(38) = T(3)*getPowerDeriv(y(9),(-params(4)),1);
T(39) = getPowerDeriv(T(6),(-1),1);
T(40) = y(14)*(-(T(8)*T(38)))/(T(6)*T(6))/y(8);
T(41) = (y(16)-T(11))*T(40);
T(42) = T(5)*getPowerDeriv(y(15),(-params(4)),1);
T(43) = y(14)*T(42)/T(6)/y(8);
T(44) = (y(16)-T(11))*T(43);
T(45) = getPowerDeriv(y(2),params(8),1);
T(46) = (steady_state(6))*1/T(1)*getPowerDeriv(y(11)/T(1),params(6),1);
T(47) = T(27)*T(46);
T(48) = params(11)/100*T(19);

end
