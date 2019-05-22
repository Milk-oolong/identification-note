function g2 = static_g2(T, y, x, params, T_flag)
% function g2 = static_g2(T, y, x, params, T_flag)
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
%   g2
%

if T_flag
    T = KimModTheBuilder.static_g2_tt(T, y, x, params);
end
v2 = zeros(65,3);
v2(1,1)=1;
v2(2,1)=1;
v2(3,1)=1;
v2(4,1)=1;
v2(5,1)=1;
v2(6,1)=1;
v2(7,1)=1;
v2(8,1)=1;
v2(9,1)=1;
v2(10,1)=1;
v2(11,1)=1;
v2(12,1)=1;
v2(13,1)=1;
v2(14,1)=1;
v2(15,1)=1;
v2(16,1)=2;
v2(17,1)=2;
v2(18,1)=2;
v2(19,1)=2;
v2(20,1)=2;
v2(21,1)=2;
v2(22,1)=2;
v2(23,1)=2;
v2(24,1)=2;
v2(25,1)=2;
v2(26,1)=2;
v2(27,1)=2;
v2(28,1)=2;
v2(29,1)=2;
v2(30,1)=2;
v2(31,1)=2;
v2(32,1)=2;
v2(33,1)=2;
v2(34,1)=2;
v2(35,1)=2;
v2(36,1)=2;
v2(37,1)=2;
v2(38,1)=2;
v2(39,1)=2;
v2(40,1)=2;
v2(41,1)=2;
v2(42,1)=3;
v2(43,1)=3;
v2(44,1)=3;
v2(45,1)=3;
v2(46,1)=4;
v2(47,1)=4;
v2(48,1)=4;
v2(49,1)=4;
v2(50,1)=5;
v2(51,1)=5;
v2(52,1)=5;
v2(53,1)=6;
v2(54,1)=6;
v2(55,1)=6;
v2(56,1)=7;
v2(57,1)=7;
v2(58,1)=7;
v2(59,1)=7;
v2(60,1)=7;
v2(61,1)=7;
v2(62,1)=7;
v2(63,1)=7;
v2(64,1)=7;
v2(65,1)=8;
v2(1,2)=1;
v2(2,2)=2;
v2(3,2)=9;
v2(4,2)=3;
v2(5,2)=17;
v2(6,2)=6;
v2(7,2)=41;
v2(8,2)=10;
v2(9,2)=11;
v2(10,2)=18;
v2(11,2)=14;
v2(12,2)=42;
v2(13,2)=19;
v2(14,2)=22;
v2(15,2)=43;
v2(16,2)=1;
v2(17,2)=2;
v2(18,2)=9;
v2(19,2)=3;
v2(20,2)=17;
v2(21,2)=6;
v2(22,2)=41;
v2(23,2)=10;
v2(24,2)=11;
v2(25,2)=18;
v2(26,2)=14;
v2(27,2)=42;
v2(28,2)=19;
v2(29,2)=21;
v2(30,2)=35;
v2(31,2)=22;
v2(32,2)=43;
v2(33,2)=23;
v2(34,2)=51;
v2(35,2)=37;
v2(36,2)=38;
v2(37,2)=45;
v2(38,2)=39;
v2(39,2)=53;
v2(40,2)=47;
v2(41,2)=54;
v2(42,2)=30;
v2(43,2)=44;
v2(44,2)=47;
v2(45,2)=54;
v2(46,2)=19;
v2(47,2)=21;
v2(48,2)=35;
v2(49,2)=37;
v2(50,2)=37;
v2(51,2)=40;
v2(52,2)=61;
v2(53,2)=37;
v2(54,2)=40;
v2(55,2)=61;
v2(56,2)=1;
v2(57,2)=2;
v2(58,2)=9;
v2(59,2)=3;
v2(60,2)=17;
v2(61,2)=10;
v2(62,2)=11;
v2(63,2)=18;
v2(64,2)=19;
v2(65,2)=64;
v2(1,3)=y(6)*(T(33)*(T(31)*(-(y(2)*(T(23)*T(30)+T(2)*T(58)+T(23)*T(30)+(1-T(1))*T(62))))-(-(y(2)*(T(2)*T(23)+(1-T(1))*T(30))))*((1-T(1))*T(2)*(T(2)*T(23)+(1-T(1))*T(30))+(1-T(1))*T(2)*(T(2)*T(23)+(1-T(1))*T(30))))/(T(31)*T(31))+T(32)*T(32)*T(63));
v2(2,3)=y(6)*(T(33)*(T(31)*(-(T(2)*T(23)+(1-T(1))*T(30)+y(2)*(T(23)*T(38)+(1-T(1))*T(64))))-(-(y(2)*(T(2)*T(23)+(1-T(1))*T(30))))*((1-T(1))*T(2)*(1-T(1))*T(38)+(1-T(1))*T(2)*(1-T(1))*T(38)))/(T(31)*T(31))+T(32)*T(39)*T(63));
v2(3,3)=v2(2,3);
v2(4,3)=y(6)*(T(33)*(T(31)*(-(y(2)*(T(23)*T(47)+T(2)*T(66)+T(30)*(-T(41))+(1-T(1))*T(67))))-(-(y(2)*(T(2)*T(23)+(1-T(1))*T(30))))*T(68))/(T(31)*T(31))+T(32)*T(48)*T(63));
v2(5,3)=v2(4,3);
v2(6,3)=T(32)*T(33);
v2(7,3)=v2(6,3);
v2(8,3)=y(6)*(T(39)*T(39)*T(63)+T(33)*(T(31)*((1-T(1))*T(38)-((1-T(1))*T(38)+y(2)*(1-T(1))*(T(37)*T(37)*T(61)+T(29)*(1-T(1))*T(36)*T(36)*T(59))))-((1-T(1))*T(2)-y(2)*(1-T(1))*T(38))*((1-T(1))*T(2)*(1-T(1))*T(38)+(1-T(1))*T(2)*(1-T(1))*T(38)))/(T(31)*T(31)))-((1-T(4))*(1-params(10))*(1-params(10))*getPowerDeriv(y(2)-T(3),(-1),2)+T(10)*(-T(6))*(1-params(10))*(1-params(10))*getPowerDeriv(y(2)-T(5),(-1),2));
v2(9,3)=y(6)*(T(39)*T(48)*T(63)+T(33)*(T(31)*(T(2)*(-T(41))+(1-T(1))*T(47)-y(2)*(T(38)*(-T(41))+(1-T(1))*T(69)))-((1-T(1))*T(2)-y(2)*(1-T(1))*T(38))*T(68))/(T(31)*T(31)));
v2(10,3)=v2(9,3);
v2(11,3)=T(33)*T(39);
v2(12,3)=v2(11,3);
v2(13,3)=y(6)*(T(48)*T(48)*T(63)+T(33)*(T(31)*(-(y(2)*((-T(41))*T(47)+(-T(41))*T(47)+(1-T(1))*T(70))))-(-(y(2)*(T(2)*(-T(41))+(1-T(1))*T(47))))*T(68))/(T(31)*T(31)));
v2(14,3)=T(33)*T(48);
v2(15,3)=v2(14,3);
v2(16,3)=y(6)*(T(35)*(T(1)*T(2)*T(1)*T(2)*(-(y(3)*(T(22)*T(30)+T(2)*T(57)+T(22)*T(30)+T(1)*T(62))))-(-(y(3)*(T(2)*T(22)+T(1)*T(30))))*(T(1)*T(2)*(T(2)*T(22)+T(1)*T(30))+T(1)*T(2)*(T(2)*T(22)+T(1)*T(30))))/T(71)+T(34)*T(34)*T(72));
v2(17,3)=y(6)*(T(35)*(T(1)*T(2)*T(1)*T(2)*(-(y(3)*(T(22)*T(38)+T(1)*T(64))))-(-(y(3)*(T(2)*T(22)+T(1)*T(30))))*(T(1)*T(2)*T(1)*T(38)+T(1)*T(2)*T(1)*T(38)))/T(71)+T(34)*T(40)*T(72));
v2(18,3)=v2(17,3);
v2(19,3)=y(6)*(T(35)*(T(1)*T(2)*T(1)*T(2)*(-(T(2)*T(22)+T(1)*T(30)+y(3)*(T(22)*T(47)+T(2)*T(65)+T(30)*T(41)+T(1)*T(67))))-(-(y(3)*(T(2)*T(22)+T(1)*T(30))))*(T(1)*T(2)*(T(2)*T(41)+T(1)*T(47))+T(1)*T(2)*(T(2)*T(41)+T(1)*T(47))))/T(71)+T(34)*T(73));
v2(20,3)=v2(19,3);
v2(21,3)=T(34)*T(35);
v2(22,3)=v2(21,3);
v2(23,3)=y(6)*(T(40)*T(40)*T(72)+T(35)*(T(1)*T(2)*T(1)*T(2)*(-(y(3)*T(1)*(T(37)*T(37)*T(61)+T(29)*(1-T(1))*T(36)*T(36)*T(59))))-(-(y(3)*T(1)*T(38)))*(T(1)*T(2)*T(1)*T(38)+T(1)*T(2)*T(1)*T(38)))/T(71));
v2(24,3)=y(6)*(T(40)*T(73)+T(35)*(T(1)*T(2)*T(1)*T(2)*(-(T(1)*T(38)+y(3)*(T(38)*T(41)+T(1)*T(69))))-(-(y(3)*T(1)*T(38)))*(T(1)*T(2)*(T(2)*T(41)+T(1)*T(47))+T(1)*T(2)*(T(2)*T(41)+T(1)*T(47))))/T(71));
v2(25,3)=v2(24,3);
v2(26,3)=T(35)*T(40);
v2(27,3)=v2(26,3);
v2(28,3)=y(6)*(T(49)*T(73)+T(35)*(T(1)*T(2)*T(1)*T(2)*(T(2)*T(41)+T(1)*T(47)-(T(2)*T(41)+T(1)*T(47)+y(3)*(T(41)*T(47)+T(41)*T(47)+T(1)*T(70))))-(T(1)*T(2)-y(3)*(T(2)*T(41)+T(1)*T(47)))*(T(1)*T(2)*(T(2)*T(41)+T(1)*T(47))+T(1)*T(2)*(T(2)*T(41)+T(1)*T(47))))/T(71))-T(17)*(T(51)*(-((-(y(5)*params(3)))*(y(3)+y(3))))/(y(3)*y(3)*y(3)*y(3))+T(50)*T(50)*T(74));
v2(29,3)=(-(T(17)*(T(51)*(-params(3))/(y(3)*y(3))+T(50)*params(3)/y(3)*T(74))));
v2(30,3)=v2(29,3);
v2(31,3)=T(35)*T(49)-T(50)*T(51)*y(7)*T(16);
v2(32,3)=v2(31,3);
v2(33,3)=(-(T(50)*T(51)*y(6)*T(16)));
v2(34,3)=v2(33,3);
v2(35,3)=(-(T(17)*params(3)/y(3)*params(3)/y(3)*T(74)));
v2(36,3)=(-(T(51)*params(3)/y(3)*y(7)*T(16)));
v2(37,3)=v2(36,3);
v2(38,3)=(-(T(51)*params(3)/y(3)*y(6)*T(16)));
v2(39,3)=v2(38,3);
v2(40,3)=(-(T(16)*T(18)));
v2(41,3)=v2(40,3);
v2(42,3)=(-T(10));
v2(43,3)=v2(42,3);
v2(44,3)=1-T(10)*(1-params(3));
v2(45,3)=v2(44,3);
v2(46,3)=(-(T(53)*params(3)*T(13)/params(3)*T(13)/params(3)*getPowerDeriv(y(3)*T(13)/params(3),1-params(9),2)+T(52)*T(52)*T(75)));
v2(47,3)=(-(T(52)*T(54)*T(75)));
v2(48,3)=v2(47,3);
v2(49,3)=(-(T(54)*T(54)*T(75)+T(53)*(1-params(3))*getPowerDeriv(y(5),1-params(9),2)));
v2(50,3)=(-(y(8)*getPowerDeriv(T(7),params(1),2)));
v2(51,3)=(-T(55));
v2(52,3)=v2(51,3);
v2(53,3)=(-(y(8)*params(1)*getPowerDeriv(T(7),params(1)-1,2)));
v2(54,3)=(-T(56));
v2(55,3)=v2(54,3);
v2(56,3)=(-T(62));
v2(57,3)=(-T(64));
v2(58,3)=v2(57,3);
v2(59,3)=(-T(67));
v2(60,3)=v2(59,3);
v2(61,3)=(-(T(37)*T(37)*T(61)+T(29)*(1-T(1))*T(36)*T(36)*T(59)));
v2(62,3)=(-T(69));
v2(63,3)=v2(62,3);
v2(64,3)=(-T(70));
v2(65,3)=(-1)/(y(8)*y(8))-params(6)*(-1)/(y(8)*y(8));
g2 = sparse(v2(:,1),v2(:,2),v2(:,3),8,64);
end
