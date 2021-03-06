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
v2 = zeros(85,3);
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
v2(42,1)=2;
v2(43,1)=2;
v2(44,1)=2;
v2(45,1)=2;
v2(46,1)=2;
v2(47,1)=2;
v2(48,1)=2;
v2(49,1)=2;
v2(50,1)=2;
v2(51,1)=2;
v2(52,1)=2;
v2(53,1)=2;
v2(54,1)=2;
v2(55,1)=2;
v2(56,1)=2;
v2(57,1)=2;
v2(58,1)=3;
v2(59,1)=3;
v2(60,1)=3;
v2(61,1)=3;
v2(62,1)=3;
v2(63,1)=3;
v2(64,1)=4;
v2(65,1)=4;
v2(66,1)=4;
v2(67,1)=4;
v2(68,1)=4;
v2(69,1)=4;
v2(70,1)=4;
v2(71,1)=4;
v2(72,1)=5;
v2(73,1)=5;
v2(74,1)=5;
v2(75,1)=6;
v2(76,1)=6;
v2(77,1)=6;
v2(78,1)=7;
v2(79,1)=7;
v2(80,1)=7;
v2(81,1)=7;
v2(82,1)=8;
v2(83,1)=8;
v2(84,1)=9;
v2(85,1)=9;
v2(1,2)=111;
v2(2,2)=112;
v2(3,2)=132;
v2(4,2)=115;
v2(5,2)=195;
v2(6,2)=287;
v2(7,2)=133;
v2(8,2)=136;
v2(9,2)=196;
v2(10,2)=111;
v2(11,2)=112;
v2(12,2)=132;
v2(13,2)=115;
v2(14,2)=195;
v2(15,2)=1;
v2(16,2)=7;
v2(17,2)=127;
v2(18,2)=10;
v2(19,2)=190;
v2(20,2)=11;
v2(21,2)=211;
v2(22,2)=13;
v2(23,2)=253;
v2(24,2)=133;
v2(25,2)=141;
v2(26,2)=301;
v2(27,2)=136;
v2(28,2)=196;
v2(29,2)=143;
v2(30,2)=343;
v2(31,2)=137;
v2(32,2)=217;
v2(33,2)=144;
v2(34,2)=364;
v2(35,2)=139;
v2(36,2)=259;
v2(37,2)=145;
v2(38,2)=385;
v2(39,2)=309;
v2(40,2)=311;
v2(41,2)=351;
v2(42,2)=312;
v2(43,2)=372;
v2(44,2)=313;
v2(45,2)=393;
v2(46,2)=200;
v2(47,2)=220;
v2(48,2)=202;
v2(49,2)=262;
v2(50,2)=354;
v2(51,2)=374;
v2(52,2)=355;
v2(53,2)=395;
v2(54,2)=223;
v2(55,2)=263;
v2(56,2)=376;
v2(57,2)=396;
v2(58,2)=332;
v2(59,2)=352;
v2(60,2)=200;
v2(61,2)=220;
v2(62,2)=354;
v2(63,2)=374;
v2(64,2)=1;
v2(65,2)=7;
v2(66,2)=127;
v2(67,2)=13;
v2(68,2)=253;
v2(69,2)=133;
v2(70,2)=139;
v2(71,2)=259;
v2(72,2)=23;
v2(73,2)=33;
v2(74,2)=233;
v2(75,2)=23;
v2(76,2)=33;
v2(77,2)=233;
v2(78,2)=111;
v2(79,2)=112;
v2(80,2)=132;
v2(81,2)=133;
v2(82,2)=45;
v2(83,2)=243;
v2(84,2)=67;
v2(85,2)=265;
v2(1,3)=y(10)*(T(28)*((1-T(1))*T(2)*(1-T(1))*T(2)*((1-T(1))*T(26)-((1-T(1))*T(26)+y(6)*(1-T(1))*T(47)))-((1-T(1))*T(2)-y(6)*(1-T(1))*T(26))*((1-T(1))*T(2)*(1-T(1))*T(26)+(1-T(1))*T(2)*(1-T(1))*T(26)))/((1-T(1))*T(2)*(1-T(1))*T(2)*(1-T(1))*T(2)*(1-T(1))*T(2))+T(27)*T(27)*T(48))-(1-T(4))*getPowerDeriv(y(6)-T(3),(-1),2);
v2(2,3)=y(10)*(T(28)*((1-T(1))*T(2)*(1-T(1))*T(2)*((1-T(1))*T(34)-y(6)*(1-T(1))*T(24)*T(33)*T(46))-((1-T(1))*T(2)-y(6)*(1-T(1))*T(26))*((1-T(1))*T(2)*(1-T(1))*T(34)+(1-T(1))*T(2)*(1-T(1))*T(34)))/((1-T(1))*T(2)*(1-T(1))*T(2)*(1-T(1))*T(2)*(1-T(1))*T(2))+T(27)*T(35)*T(48));
v2(3,3)=v2(2,3);
v2(4,3)=T(27)*T(28);
v2(5,3)=v2(4,3);
v2(6,3)=(-(T(10)*(-T(6))*getPowerDeriv(y(14)-T(5),(-1),2)));
v2(7,3)=y(10)*(T(35)*T(35)*T(48)+T(28)*((1-T(1))*T(2)*(1-T(1))*T(2)*(-(y(6)*(1-T(1))*T(49)))-(-(y(6)*(1-T(1))*T(34)))*((1-T(1))*T(2)*(1-T(1))*T(34)+(1-T(1))*T(2)*(1-T(1))*T(34)))/((1-T(1))*T(2)*(1-T(1))*T(2)*(1-T(1))*T(2)*(1-T(1))*T(2)));
v2(8,3)=T(28)*T(35);
v2(9,3)=v2(8,3);
v2(10,3)=y(10)*(T(30)*(T(1)*T(2)*T(1)*T(2)*(-(y(7)*T(1)*T(47)))-(-(y(7)*T(1)*T(26)))*(T(1)*T(2)*T(1)*T(26)+T(1)*T(2)*T(1)*T(26)))/(T(1)*T(2)*T(1)*T(2)*T(1)*T(2)*T(1)*T(2))+T(29)*T(29)*T(50));
v2(11,3)=y(10)*(T(30)*(T(1)*T(2)*T(1)*T(2)*(-(T(1)*T(26)+y(7)*T(1)*T(24)*T(33)*T(46)))-(-(y(7)*T(1)*T(26)))*(T(1)*T(2)*T(1)*T(34)+T(1)*T(2)*T(1)*T(34)))/(T(1)*T(2)*T(1)*T(2)*T(1)*T(2)*T(1)*T(2))+T(29)*T(36)*T(50));
v2(12,3)=v2(11,3);
v2(13,3)=T(29)*T(30);
v2(14,3)=v2(13,3);
v2(15,3)=(-(y(10)*y(11)*y(13)*((-(T(22)*(2*(T(19)-1)*T(51)+T(31)*2*T(31))))-(T(31)*params(9)*T(31)+T(14)*T(51)+T(31)*params(9)*T(31)+T(19)*params(9)*T(51)))));
v2(16,3)=(-(y(10)*y(11)*y(13)*(T(52)-(T(31)*params(9)*T(37)+T(14)*(-1)/(y(1)*y(1))+params(9)*T(31)*T(37)+T(19)*params(9)*(-1)/(y(1)*y(1))))));
v2(17,3)=v2(16,3);
v2(18,3)=(-((T(32)-(T(14)*T(31)+T(19)*params(9)*T(31)))*y(11)*y(13)));
v2(19,3)=v2(18,3);
v2(20,3)=(-((T(32)-(T(14)*T(31)+T(19)*params(9)*T(31)))*y(10)*y(13)));
v2(21,3)=v2(20,3);
v2(22,3)=(-(y(10)*y(11)*(T(32)-(T(14)*T(31)+T(19)*params(9)*T(31)))));
v2(23,3)=v2(22,3);
v2(24,3)=y(10)*(T(36)*T(36)*T(50)+T(30)*(T(1)*T(2)*T(1)*T(2)*(T(1)*T(34)-(T(1)*T(34)+y(7)*T(1)*T(49)))-(T(1)*T(2)-y(7)*T(1)*T(34))*(T(1)*T(2)*T(1)*T(34)+T(1)*T(2)*T(1)*T(34)))/(T(1)*T(2)*T(1)*T(2)*T(1)*T(2)*T(1)*T(2)))-(y(10)*y(11)*y(13)*((-(T(22)*T(37)*2*T(37)))-(T(37)*params(9)*T(37)+T(37)*params(9)*T(37)))+T(41)*params(9)*T(39)+T(16)*T(10)*y(17)*y(18)*T(15)*(T(40)*(-((-y(15))*(y(7)+y(7))))/(y(7)*y(7)*y(7)*y(7))+T(39)*2*T(39))+T(41)*params(9)*T(39)+T(21)*params(9)*(-((-y(15))*(y(7)+y(7))))/(y(7)*y(7)*y(7)*y(7)));
v2(25,3)=(-(T(41)*params(9)*T(42)+T(16)*T(10)*y(17)*y(18)*T(15)*(T(40)*(-1)/(y(7)*y(7))+T(39)*2*T(42))+params(9)*T(39)*T(43)+T(21)*params(9)*(-1)/(y(7)*y(7))));
v2(26,3)=v2(25,3);
v2(27,3)=T(30)*T(36)-(T(38)-(T(14)*T(37)+T(19)*params(9)*T(37)))*y(11)*y(13);
v2(28,3)=v2(27,3);
v2(29,3)=(-(T(16)*T(39)*T(40)*T(15)*T(10)*y(18)+params(9)*T(39)*T(20)*T(15)*T(10)*y(18)));
v2(30,3)=v2(29,3);
v2(31,3)=(-((T(38)-(T(14)*T(37)+T(19)*params(9)*T(37)))*y(10)*y(13)));
v2(32,3)=v2(31,3);
v2(33,3)=(-(T(16)*T(39)*T(40)*T(10)*y(17)*T(15)+params(9)*T(39)*T(20)*T(10)*y(17)*T(15)));
v2(34,3)=v2(33,3);
v2(35,3)=(-(y(10)*y(11)*(T(38)-(T(14)*T(37)+T(19)*params(9)*T(37)))));
v2(36,3)=v2(35,3);
v2(37,3)=(-(T(16)*T(10)*y(17)*y(18)*T(39)*T(40)+params(9)*T(39)*T(10)*y(17)*y(18)*T(20)));
v2(38,3)=v2(37,3);
v2(39,3)=(-(T(43)*params(9)*T(42)+T(43)*params(9)*T(42)+T(16)*T(10)*y(17)*y(18)*T(15)*T(42)*2*T(42)));
v2(40,3)=(-(T(16)*T(40)*T(42)*T(15)*T(10)*y(18)+params(9)*T(42)*T(20)*T(15)*T(10)*y(18)));
v2(41,3)=v2(40,3);
v2(42,3)=(-(T(16)*T(40)*T(42)*T(10)*y(17)*T(15)+params(9)*T(42)*T(20)*T(10)*y(17)*T(15)));
v2(43,3)=v2(42,3);
v2(44,3)=(-(T(16)*T(10)*y(17)*y(18)*T(40)*T(42)+params(9)*T(42)*T(10)*y(17)*y(18)*T(20)));
v2(45,3)=v2(44,3);
v2(46,3)=(-(y(13)*(1-T(13)-T(19)*T(14))));
v2(47,3)=v2(46,3);
v2(48,3)=(-(y(11)*(1-T(13)-T(19)*T(14))));
v2(49,3)=v2(48,3);
v2(50,3)=(-(T(16)*T(20)*T(10)*T(15)));
v2(51,3)=v2(50,3);
v2(52,3)=(-(T(16)*T(20)*T(10)*y(18)));
v2(53,3)=v2(52,3);
v2(54,3)=(-(y(10)*(1-T(13)-T(19)*T(14))));
v2(55,3)=v2(54,3);
v2(56,3)=(-(T(16)*T(10)*y(17)*T(20)));
v2(57,3)=v2(56,3);
v2(58,3)=(-T(10));
v2(59,3)=v2(58,3);
v2(60,3)=1;
v2(61,3)=v2(60,3);
v2(62,3)=(-(T(10)*(1-params(3))));
v2(63,3)=v2(62,3);
v2(64,3)=(-(y(7)*y(13)*(-(T(22)*(2*(T(19)-1)*T(51)+T(31)*2*T(31))))));
v2(65,3)=(-(y(13)*T(32)+y(7)*y(13)*T(52)));
v2(66,3)=v2(65,3);
v2(67,3)=(-(y(7)*T(32)));
v2(68,3)=v2(67,3);
v2(69,3)=(-(y(13)*T(38)+y(13)*T(38)+y(7)*y(13)*(-(T(22)*T(37)*2*T(37)))));
v2(70,3)=(-(1-T(13)+y(7)*T(38)));
v2(71,3)=v2(70,3);
v2(72,3)=(-(y(12)*getPowerDeriv(T(7),params(1),2)));
v2(73,3)=(-T(44));
v2(74,3)=v2(73,3);
v2(75,3)=(-(y(12)*params(1)*getPowerDeriv(T(7),params(1)-1,2)));
v2(76,3)=(-T(45));
v2(77,3)=v2(76,3);
v2(78,3)=(-T(47));
v2(79,3)=(-(T(24)*T(33)*T(46)));
v2(80,3)=v2(79,3);
v2(81,3)=(-T(49));
v2(82,3)=(-(params(6)*(-1)/(y(3)*y(3))));
v2(83,3)=(-1)/(y(12)*y(12));
v2(84,3)=(-(params(11)*(-1)/(y(4)*y(4))));
v2(85,3)=(-1)/(y(13)*y(13));
g2 = sparse(v2(:,1),v2(:,2),v2(:,3),9,441);
end
