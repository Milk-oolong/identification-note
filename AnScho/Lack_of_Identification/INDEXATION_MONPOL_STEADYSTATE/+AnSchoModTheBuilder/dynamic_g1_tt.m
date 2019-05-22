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

assert(length(T) >= 44);

T = AnSchoModTheBuilder.dynamic_resid_tt(T, y, x, params, steady_state, it_);

T(25) = (steady_state(6))*(y(12)/T(1))^params(6);
T(26) = T(14)^params(7);
T(27) = (steady_state(7))^(1-params(16));
T(28) = 1/(steady_state(4));
T(29) = (-(T(8)/T(6)*y(15)))/(y(9)*y(9));
T(30) = T(28)*getPowerDeriv(T(14),params(7),1);
T(31) = T(25)*T(30);
T(32) = getPowerDeriv(T(12),1-params(8),1);
T(33) = T(8)/T(6)/y(9);
T(34) = T(3)*getPowerDeriv(y(10),(-params(4)),1);
T(35) = getPowerDeriv(T(6),(-1),1);
T(36) = y(15)*(-(T(8)*T(34)))/(T(6)*T(6))/y(9);
T(37) = T(5)*getPowerDeriv(y(16),(-params(4)),1);
T(38) = y(15)*T(37)/T(6)/y(9);
T(39) = getPowerDeriv(y(2),params(8),1);
T(40) = (-(T(27)*getPowerDeriv(y(3),params(16),1)));
T(41) = T(27)*getPowerDeriv(y(12),params(16),1);
T(42) = (steady_state(6))*1/T(1)*getPowerDeriv(y(12)/T(1),params(6),1);
T(43) = T(26)*T(42);
T(44) = params(11)/100*T(20);

end