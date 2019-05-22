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
residual = zeros(9, 1);
lhs = T(9)*y(9);
rhs = T(10)+T(11)*T(12);
residual(1) = lhs - rhs;
lhs = y(9)*T(13);
rhs = y(9)*y(10)*T(14)*(1-T(15)-T(24)*T(16))+T(26)*T(18);
residual(2) = lhs - rhs;
lhs = y(9)*y(10);
rhs = T(11)*y(16)*(y(18)*y(15)-T(19)+y(17)*(1-params(3)));
residual(3) = lhs - rhs;
lhs = y(7);
rhs = T(20);
residual(4) = lhs - rhs;
lhs = y(8);
rhs = y(2)*(1-params(3))+(1-T(15))*y(6)*T(14);
residual(5) = lhs - rhs;
lhs = y(4);
rhs = y(11)*T(21);
residual(6) = lhs - rhs;
lhs = y(7);
rhs = y(11)*T(22);
residual(7) = lhs - rhs;
lhs = y(4);
rhs = T(3)+y(2)*T(23);
residual(8) = lhs - rhs;
lhs = log(y(11));
rhs = params(6)*log(y(3))+params(7)*x(it_, 1);
residual(9) = lhs - rhs;

end
