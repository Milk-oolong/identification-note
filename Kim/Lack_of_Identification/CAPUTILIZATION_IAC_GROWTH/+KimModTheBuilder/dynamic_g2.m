function g2 = dynamic_g2(T, y, x, params, steady_state, it_, T_flag)
% function g2 = dynamic_g2(T, y, x, params, steady_state, it_, T_flag)
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
%   g2
%

if T_flag
    T = KimModTheBuilder.dynamic_g2_tt(T, y, x, params, steady_state, it_);
end
v2 = zeros(81,3);
v2(1,1)=1;
v2(2,1)=1;
v2(3,1)=1;
v2(4,1)=1;
v2(5,1)=1;
v2(6,1)=1;
v2(7,1)=1;
v2(8,1)=1;
v2(9,1)=1;
v2(10,1)=2;
v2(11,1)=2;
v2(12,1)=2;
v2(13,1)=2;
v2(14,1)=2;
v2(15,1)=2;
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
v2(46,1)=3;
v2(47,1)=3;
v2(48,1)=3;
v2(49,1)=3;
v2(50,1)=3;
v2(51,1)=3;
v2(52,1)=3;
v2(53,1)=5;
v2(54,1)=5;
v2(55,1)=5;
v2(56,1)=5;
v2(57,1)=6;
v2(58,1)=6;
v2(59,1)=6;
v2(60,1)=6;
v2(61,1)=6;
v2(62,1)=6;
v2(63,1)=6;
v2(64,1)=6;
v2(65,1)=7;
v2(66,1)=7;
v2(67,1)=7;
v2(68,1)=7;
v2(69,1)=7;
v2(70,1)=7;
v2(71,1)=7;
v2(72,1)=7;
v2(73,1)=8;
v2(74,1)=8;
v2(75,1)=8;
v2(76,1)=8;
v2(77,1)=8;
v2(78,1)=8;
v2(79,1)=8;
v2(80,1)=9;
v2(81,1)=9;
v2(1,2)=81;
v2(2,2)=82;
v2(3,2)=100;
v2(4,2)=85;
v2(5,2)=157;
v2(6,2)=241;
v2(7,2)=101;
v2(8,2)=104;
v2(9,2)=158;
v2(10,2)=81;
v2(11,2)=82;
v2(12,2)=100;
v2(13,2)=85;
v2(14,2)=157;
v2(15,2)=1;
v2(16,2)=6;
v2(17,2)=96;
v2(18,2)=9;
v2(19,2)=153;
v2(20,2)=10;
v2(21,2)=172;
v2(22,2)=101;
v2(23,2)=109;
v2(24,2)=253;
v2(25,2)=104;
v2(26,2)=158;
v2(27,2)=111;
v2(28,2)=291;
v2(29,2)=105;
v2(30,2)=177;
v2(31,2)=112;
v2(32,2)=310;
v2(33,2)=261;
v2(34,2)=263;
v2(35,2)=299;
v2(36,2)=264;
v2(37,2)=318;
v2(38,2)=162;
v2(39,2)=180;
v2(40,2)=302;
v2(41,2)=320;
v2(42,2)=282;
v2(43,2)=300;
v2(44,2)=284;
v2(45,2)=338;
v2(46,2)=162;
v2(47,2)=180;
v2(48,2)=302;
v2(49,2)=320;
v2(50,2)=303;
v2(51,2)=339;
v2(52,2)=341;
v2(53,2)=1;
v2(54,2)=6;
v2(55,2)=96;
v2(56,2)=101;
v2(57,2)=21;
v2(58,2)=30;
v2(59,2)=192;
v2(60,2)=31;
v2(61,2)=211;
v2(62,2)=202;
v2(63,2)=220;
v2(64,2)=221;
v2(65,2)=21;
v2(66,2)=30;
v2(67,2)=192;
v2(68,2)=31;
v2(69,2)=211;
v2(70,2)=202;
v2(71,2)=220;
v2(72,2)=221;
v2(73,2)=81;
v2(74,2)=82;
v2(75,2)=100;
v2(76,2)=101;
v2(77,2)=31;
v2(78,2)=211;
v2(79,2)=221;
v2(80,2)=41;
v2(81,2)=201;
v2(1,3)=y(9)*(T(33)*((1-T(2))*T(3)*(1-T(2))*T(3)*((1-T(2))*T(31)-((1-T(2))*T(31)+y(5)*(1-T(2))*T(52)))-((1-T(2))*T(3)-y(5)*(1-T(2))*T(31))*((1-T(2))*T(3)*(1-T(2))*T(31)+(1-T(2))*T(3)*(1-T(2))*T(31)))/((1-T(2))*T(3)*(1-T(2))*T(3)*(1-T(2))*T(3)*(1-T(2))*T(3))+T(32)*T(32)*T(53))-(1-T(5))*getPowerDeriv(y(5)-T(4),(-1),2);
v2(2,3)=y(9)*(T(33)*((1-T(2))*T(3)*(1-T(2))*T(3)*((1-T(2))*T(39)-y(5)*(1-T(2))*T(29)*T(38)*T(51))-((1-T(2))*T(3)-y(5)*(1-T(2))*T(31))*((1-T(2))*T(3)*(1-T(2))*T(39)+(1-T(2))*T(3)*(1-T(2))*T(39)))/((1-T(2))*T(3)*(1-T(2))*T(3)*(1-T(2))*T(3)*(1-T(2))*T(3))+T(32)*T(40)*T(53));
v2(3,3)=v2(2,3);
v2(4,3)=T(32)*T(33);
v2(5,3)=v2(4,3);
v2(6,3)=(-(T(11)*(-T(7))*getPowerDeriv(y(13)-T(6),(-1),2)));
v2(7,3)=y(9)*(T(40)*T(40)*T(53)+T(33)*((1-T(2))*T(3)*(1-T(2))*T(3)*(-(y(5)*(1-T(2))*T(54)))-(-(y(5)*(1-T(2))*T(39)))*((1-T(2))*T(3)*(1-T(2))*T(39)+(1-T(2))*T(3)*(1-T(2))*T(39)))/((1-T(2))*T(3)*(1-T(2))*T(3)*(1-T(2))*T(3)*(1-T(2))*T(3)));
v2(8,3)=T(33)*T(40);
v2(9,3)=v2(8,3);
v2(10,3)=y(9)*(T(35)*(T(2)*T(3)*T(2)*T(3)*(-(y(6)*T(2)*T(52)))-(-(y(6)*T(2)*T(31)))*(T(2)*T(3)*T(2)*T(31)+T(2)*T(3)*T(2)*T(31)))/(T(2)*T(3)*T(2)*T(3)*T(2)*T(3)*T(2)*T(3))+T(34)*T(34)*T(55));
v2(11,3)=y(9)*(T(35)*(T(2)*T(3)*T(2)*T(3)*(-(T(2)*T(31)+y(6)*T(2)*T(29)*T(38)*T(51)))-(-(y(6)*T(2)*T(31)))*(T(2)*T(3)*T(2)*T(39)+T(2)*T(3)*T(2)*T(39)))/(T(2)*T(3)*T(2)*T(3)*T(2)*T(3)*T(2)*T(3))+T(34)*T(41)*T(55));
v2(12,3)=v2(11,3);
v2(13,3)=T(34)*T(35);
v2(14,3)=v2(13,3);
v2(15,3)=(-(y(9)*y(10)*T(14)*((-(T(27)*(2*(T(24)-1)*T(56)+T(36)*2*T(36))))-(T(36)*params(9)*T(36)+T(16)*T(56)+T(36)*params(9)*T(36)+T(24)*params(9)*T(56)))));
v2(16,3)=(-(y(9)*y(10)*T(14)*(T(57)-(T(36)*params(9)*T(42)+T(16)*(-1)/(y(1)*y(1))+params(9)*T(36)*T(42)+T(24)*params(9)*(-1)/(y(1)*y(1))))));
v2(17,3)=v2(16,3);
v2(18,3)=(-((T(37)-(T(16)*T(36)+T(24)*params(9)*T(36)))*y(10)*T(14)));
v2(19,3)=v2(18,3);
v2(20,3)=(-((T(37)-(T(16)*T(36)+T(24)*params(9)*T(36)))*y(9)*T(14)));
v2(21,3)=v2(20,3);
v2(22,3)=y(9)*(T(41)*T(41)*T(55)+T(35)*(T(2)*T(3)*T(2)*T(3)*(T(2)*T(39)-(T(2)*T(39)+y(6)*T(2)*T(54)))-(T(2)*T(3)-y(6)*T(2)*T(39))*(T(2)*T(3)*T(2)*T(39)+T(2)*T(3)*T(2)*T(39)))/(T(2)*T(3)*T(2)*T(3)*T(2)*T(3)*T(2)*T(3)))-(y(9)*y(10)*T(14)*((-(T(27)*T(42)*2*T(42)))-(T(42)*params(9)*T(42)+T(42)*params(9)*T(42)))+T(46)*params(9)*T(44)+T(18)*T(11)*y(16)*y(17)*T(17)*(T(45)*(-((-y(14))*(y(6)+y(6))))/(y(6)*y(6)*y(6)*y(6))+T(44)*2*T(44))+T(46)*params(9)*T(44)+T(26)*params(9)*(-((-y(14))*(y(6)+y(6))))/(y(6)*y(6)*y(6)*y(6)));
v2(23,3)=(-(T(46)*params(9)*T(47)+T(18)*T(11)*y(16)*y(17)*T(17)*(T(45)*(-1)/(y(6)*y(6))+T(44)*2*T(47))+params(9)*T(44)*T(48)+T(26)*params(9)*(-1)/(y(6)*y(6))));
v2(24,3)=v2(23,3);
v2(25,3)=T(35)*T(41)-(T(43)-(T(16)*T(42)+T(24)*params(9)*T(42)))*y(10)*T(14);
v2(26,3)=v2(25,3);
v2(27,3)=(-(T(18)*T(44)*T(45)*T(17)*T(11)*y(17)+params(9)*T(44)*T(25)*T(17)*T(11)*y(17)));
v2(28,3)=v2(27,3);
v2(29,3)=(-((T(43)-(T(16)*T(42)+T(24)*params(9)*T(42)))*y(9)*T(14)));
v2(30,3)=v2(29,3);
v2(31,3)=(-(T(18)*T(44)*T(45)*T(11)*y(16)*T(17)+params(9)*T(44)*T(25)*T(11)*y(16)*T(17)));
v2(32,3)=v2(31,3);
v2(33,3)=(-(T(48)*params(9)*T(47)+T(48)*params(9)*T(47)+T(18)*T(11)*y(16)*y(17)*T(17)*T(47)*2*T(47)));
v2(34,3)=(-(T(18)*T(45)*T(47)*T(17)*T(11)*y(17)+params(9)*T(47)*T(25)*T(17)*T(11)*y(17)));
v2(35,3)=v2(34,3);
v2(36,3)=(-(T(18)*T(45)*T(47)*T(11)*y(16)*T(17)+params(9)*T(47)*T(25)*T(11)*y(16)*T(17)));
v2(37,3)=v2(36,3);
v2(38,3)=(-(T(14)*(1-T(15)-T(24)*T(16))));
v2(39,3)=v2(38,3);
v2(40,3)=(-(T(18)*T(25)*T(11)*T(17)));
v2(41,3)=v2(40,3);
v2(42,3)=(-(y(18)*T(11)));
v2(43,3)=v2(42,3);
v2(44,3)=(-(T(11)*y(16)));
v2(45,3)=v2(44,3);
v2(46,3)=1;
v2(47,3)=v2(46,3);
v2(48,3)=(-(T(11)*(1-params(3))));
v2(49,3)=v2(48,3);
v2(50,3)=(-(T(11)*(y(15)-(1-params(11)+params(11)/2*2*(y(18)-(steady_state(9)))))));
v2(51,3)=v2(50,3);
v2(52,3)=(-(T(11)*y(16)*(-(2*params(11)/2))));
v2(53,3)=(-(y(6)*T(14)*(-(T(27)*(2*(T(24)-1)*T(56)+T(36)*2*T(36))))));
v2(54,3)=(-(T(14)*T(37)+y(6)*T(14)*T(57)));
v2(55,3)=v2(54,3);
v2(56,3)=(-(T(14)*T(43)+T(14)*T(43)+y(6)*T(14)*(-(T(27)*T(42)*2*T(42)))));
v2(57,3)=(-(y(11)*y(12)*y(12)*T(58)));
v2(58,3)=(-(y(12)*T(49)));
v2(59,3)=v2(58,3);
v2(60,3)=(-(y(11)*(T(49)+y(12)*y(2)*T(58))));
v2(61,3)=v2(60,3);
v2(62,3)=(-(y(2)*T(49)));
v2(63,3)=v2(62,3);
v2(64,3)=(-(y(11)*y(2)*y(2)*T(58)));
v2(65,3)=(-(y(11)*params(1)*y(12)*y(12)*T(59)));
v2(66,3)=(-(params(1)*y(12)*T(50)));
v2(67,3)=v2(66,3);
v2(68,3)=(-(y(11)*params(1)*(T(50)+y(12)*y(2)*T(59))));
v2(69,3)=v2(68,3);
v2(70,3)=(-(params(1)*y(2)*T(50)));
v2(71,3)=v2(70,3);
v2(72,3)=(-(y(11)*params(1)*y(2)*y(2)*T(59)));
v2(73,3)=(-T(52));
v2(74,3)=(-(T(29)*T(38)*T(51)));
v2(75,3)=v2(74,3);
v2(76,3)=(-T(54));
v2(77,3)=(-(1-params(11)+params(11)/2*2*(y(12)-(steady_state(9)))));
v2(78,3)=v2(77,3);
v2(79,3)=(-(y(2)*2*params(11)/2));
v2(80,3)=(-(params(6)*(-1)/(y(3)*y(3))));
v2(81,3)=(-1)/(y(11)*y(11));
g2 = sparse(v2(:,1),v2(:,2),v2(:,3),9,361);
end
