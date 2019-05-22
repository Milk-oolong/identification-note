function T = dynamic_g2_tt(T, y, x, params, steady_state, it_)
% function T = dynamic_g2_tt(T, y, x, params, steady_state, it_)
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

T = KimModTheBuilder.dynamic_g1_tt(T, y, x, params, steady_state, it_);

T(47) = getPowerDeriv(T(24),1/(1+params(8)),2);
T(48) = T(26)*(1-T(1))*1/(1-T(1))*1/(1-T(1))*getPowerDeriv(y(5)/(1-T(1)),1+params(8),2)+T(25)*T(25)*T(47);
T(49) = getPowerDeriv(y(5)/((1-T(1))*T(2)),params(8),2);
T(50) = T(34)*T(34)*T(47)+T(26)*T(1)*1/T(1)*1/T(1)*getPowerDeriv(y(6)/T(1),1+params(8),2);
T(51) = getPowerDeriv(y(6)/(T(1)*T(2)),params(8),2);
T(52) = (-((-y(6))*(y(1)+y(1))))/(y(1)*y(1)*y(1)*y(1));
T(53) = (-(T(23)*(2*(T(20)-1)*(-1)/(y(1)*y(1))+T(32)*2*T(38))));

end
