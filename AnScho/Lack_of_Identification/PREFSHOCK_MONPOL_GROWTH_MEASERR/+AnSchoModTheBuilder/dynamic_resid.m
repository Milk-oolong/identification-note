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
    T = AnSchoModTheBuilder.dynamic_resid_tt(T, y, x, params, steady_state, it_);
end
residual = zeros(10, 1);
lhs = T(5);
rhs = y(11)*T(6)*T(7)/y(18)/(T(8)*y(19));
residual(1) = lhs - rhs;
lhs = 1;
rhs = T(13)*(1-(T(5)/y(15))^(-1))+y(12)*params(14)*(y(12)-T(9))-params(14)/(2*params(5))*T(14)-T(6)*params(14)*y(18)*T(16);
residual(2) = lhs - rhs;
lhs = y(9)-y(9)*T(14)*params(14)/2;
rhs = y(10)+y(9)*(1-1/y(13));
residual(3) = lhs - rhs;
lhs = y(11);
rhs = T(17)*T(18)*T(19);
residual(4) = lhs - rhs;
lhs = log(y(13));
rhs = (1-params(9))*log(T(12))+params(9)*log(y(3))+params(12)*x(it_, 2);
residual(5) = lhs - rhs;
lhs = log(y(14));
rhs = params(10)*log(y(4))+params(13)*x(it_, 3);
residual(6) = lhs - rhs;
lhs = log(y(15));
rhs = params(16)*log(y(5))+params(17)*x(it_, 4);
residual(7) = lhs - rhs;
lhs = y(6);
rhs = params(3)+100*(log(T(20))-log(T(21))+log(T(22)))+params(18)*x(it_, 5);
residual(8) = lhs - rhs;
lhs = y(7);
rhs = params(2)+400*log(T(23))+params(19)*x(it_, 6);
residual(9) = lhs - rhs;
lhs = y(8);
rhs = params(1)+params(2)+params(3)*4+400*log(T(24))+params(20)*x(it_, 7);
residual(10) = lhs - rhs;

end