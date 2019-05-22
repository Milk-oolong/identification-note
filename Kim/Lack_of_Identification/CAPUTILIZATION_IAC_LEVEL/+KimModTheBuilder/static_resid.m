function residual = static_resid(T, y, x, params, T_flag)
% function residual = static_resid(T, y, x, params, T_flag)
%
% File created by Dynare Preprocessor from .mod file
%
% Inputs:
%   T         [#temp variables by 1]  double   vector of temporary terms to be filled by function
%   y         [M_.endo_nbr by 1]      double   vector of endogenous variables in declaration order
%   x         [M_.exo_nbr by 1]       double   vector of exogenous variables in declaration order
%   params    [M_.param_nbr by 1]     double   vector of parameter values in declaration order
%                                              to evaluate the model
%   T_flag    boolean                 boolean  flag saying whether or not to calculate temporary terms
%
% Output:
%   residual
%

if T_flag
    T = KimModTheBuilder.static_resid_tt(T, y, x, params);
end
residual = zeros(9, 1);
lhs = T(9)*y(6);
rhs = T(10)+T(11)*T(12);
residual(1) = lhs - rhs;
lhs = y(6)*T(13);
rhs = T(21)*T(22);
residual(2) = lhs - rhs;
lhs = y(6)*y(7);
rhs = y(6)*T(11)*(y(9)*y(4)-T(15)+y(7)*(1-params(3)));
residual(3) = lhs - rhs;
lhs = y(4);
rhs = T(16);
residual(4) = lhs - rhs;
lhs = y(5);
rhs = T(23)^(1/(1-params(9)));
residual(5) = lhs - rhs;
lhs = y(1);
rhs = y(8)*T(17);
residual(6) = lhs - rhs;
lhs = y(4);
rhs = y(8)*T(18);
residual(7) = lhs - rhs;
lhs = y(1);
rhs = T(3)+y(5)*T(19);
residual(8) = lhs - rhs;
lhs = log(y(8));
rhs = log(y(8))*params(6)+params(7)*x(1);
residual(9) = lhs - rhs;
if ~isreal(residual)
  residual = real(residual)+imag(residual).^2;
end
end
