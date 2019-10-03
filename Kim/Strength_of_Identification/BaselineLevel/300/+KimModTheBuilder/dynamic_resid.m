function residual = dynamic_resid(T, y, x, params, steady_state, it_, T_flag)
% function residual = dynamic_resid(T, y, x, params, steady_state, it_, T_flag)
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
%   residual
%

if T_flag
    T = KimModTheBuilder.dynamic_resid_tt(T, y, x, params, steady_state, it_);
end
residual = zeros(8, 1);
lhs = T(8)*y(8);
rhs = T(9)+T(10)*T(11);
residual(1) = lhs - rhs;
lhs = y(8)*T(12);
rhs = T(17)*T(18);
residual(2) = lhs - rhs;
lhs = y(8)*y(9);
rhs = T(10)*y(14)*T(20);
residual(3) = lhs - rhs;
lhs = y(7);
rhs = T(21)^(1/(1-params(9)));
residual(4) = lhs - rhs;
lhs = y(3);
rhs = y(10)*T(14);
residual(5) = lhs - rhs;
lhs = y(6);
rhs = y(10)*T(15);
residual(6) = lhs - rhs;
lhs = y(3);
rhs = T(2);
residual(7) = lhs - rhs;
lhs = log(y(10));
rhs = params(6)*log(y(2))+params(7)*x(it_, 1);
residual(8) = lhs - rhs;

end