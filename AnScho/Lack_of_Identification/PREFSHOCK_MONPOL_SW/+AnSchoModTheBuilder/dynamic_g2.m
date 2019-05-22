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
    T = AnSchoModTheBuilder.dynamic_g2_tt(T, y, x, params, steady_state, it_);
end
v2 = zeros(140,3);
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
v2(16,1)=1;
v2(17,1)=1;
v2(18,1)=1;
v2(19,1)=1;
v2(20,1)=1;
v2(21,1)=1;
v2(22,1)=1;
v2(23,1)=1;
v2(24,1)=1;
v2(25,1)=1;
v2(26,1)=1;
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
v2(58,1)=2;
v2(59,1)=2;
v2(60,1)=2;
v2(61,1)=2;
v2(62,1)=2;
v2(63,1)=2;
v2(64,1)=2;
v2(65,1)=2;
v2(66,1)=2;
v2(67,1)=2;
v2(68,1)=2;
v2(69,1)=2;
v2(70,1)=2;
v2(71,1)=2;
v2(72,1)=2;
v2(73,1)=2;
v2(74,1)=2;
v2(75,1)=3;
v2(76,1)=3;
v2(77,1)=3;
v2(78,1)=3;
v2(79,1)=3;
v2(80,1)=3;
v2(81,1)=4;
v2(82,1)=4;
v2(83,1)=4;
v2(84,1)=4;
v2(85,1)=4;
v2(86,1)=4;
v2(87,1)=4;
v2(88,1)=4;
v2(89,1)=4;
v2(90,1)=4;
v2(91,1)=4;
v2(92,1)=4;
v2(93,1)=4;
v2(94,1)=4;
v2(95,1)=4;
v2(96,1)=4;
v2(97,1)=4;
v2(98,1)=4;
v2(99,1)=4;
v2(100,1)=4;
v2(101,1)=4;
v2(102,1)=4;
v2(103,1)=4;
v2(104,1)=4;
v2(105,1)=4;
v2(106,1)=4;
v2(107,1)=4;
v2(108,1)=4;
v2(109,1)=4;
v2(110,1)=4;
v2(111,1)=4;
v2(112,1)=4;
v2(113,1)=4;
v2(114,1)=4;
v2(115,1)=4;
v2(116,1)=4;
v2(117,1)=4;
v2(118,1)=4;
v2(119,1)=4;
v2(120,1)=4;
v2(121,1)=4;
v2(122,1)=4;
v2(123,1)=4;
v2(124,1)=4;
v2(125,1)=4;
v2(126,1)=4;
v2(127,1)=4;
v2(128,1)=4;
v2(129,1)=4;
v2(130,1)=5;
v2(131,1)=5;
v2(132,1)=6;
v2(133,1)=6;
v2(134,1)=7;
v2(135,1)=7;
v2(136,1)=8;
v2(137,1)=8;
v2(138,1)=8;
v2(139,1)=9;
v2(140,1)=10;
v2(1,2)=226;
v2(2,2)=231;
v2(3,2)=346;
v2(4,2)=401;
v2(5,2)=395;
v2(6,2)=257;
v2(7,2)=402;
v2(8,2)=425;
v2(9,2)=403;
v2(10,2)=449;
v2(11,2)=404;
v2(12,2)=473;
v2(13,2)=258;
v2(14,2)=419;
v2(15,2)=259;
v2(16,2)=443;
v2(17,2)=260;
v2(18,2)=467;
v2(19,2)=426;
v2(20,2)=427;
v2(21,2)=450;
v2(22,2)=428;
v2(23,2)=474;
v2(24,2)=451;
v2(25,2)=452;
v2(26,2)=475;
v2(27,2)=201;
v2(28,2)=208;
v2(29,2)=369;
v2(30,2)=202;
v2(31,2)=225;
v2(32,2)=209;
v2(33,2)=393;
v2(34,2)=210;
v2(35,2)=417;
v2(36,2)=207;
v2(37,2)=345;
v2(38,2)=212;
v2(39,2)=465;
v2(40,2)=370;
v2(41,2)=232;
v2(42,2)=377;
v2(43,2)=400;
v2(44,2)=378;
v2(45,2)=424;
v2(46,2)=375;
v2(47,2)=352;
v2(48,2)=380;
v2(49,2)=472;
v2(50,2)=226;
v2(51,2)=233;
v2(52,2)=394;
v2(53,2)=234;
v2(54,2)=418;
v2(55,2)=231;
v2(56,2)=346;
v2(57,2)=236;
v2(58,2)=466;
v2(59,2)=401;
v2(60,2)=402;
v2(61,2)=425;
v2(62,2)=399;
v2(63,2)=353;
v2(64,2)=404;
v2(65,2)=473;
v2(66,2)=276;
v2(67,2)=426;
v2(68,2)=423;
v2(69,2)=354;
v2(70,2)=428;
v2(71,2)=474;
v2(72,2)=351;
v2(73,2)=356;
v2(74,2)=471;
v2(75,2)=204;
v2(76,2)=273;
v2(77,2)=205;
v2(78,2)=297;
v2(79,2)=276;
v2(80,2)=301;
v2(81,2)=1;
v2(82,2)=9;
v2(83,2)=193;
v2(84,2)=2;
v2(85,2)=25;
v2(86,2)=12;
v2(87,2)=265;
v2(88,2)=3;
v2(89,2)=49;
v2(90,2)=13;
v2(91,2)=289;
v2(92,2)=21;
v2(93,2)=481;
v2(94,2)=201;
v2(95,2)=194;
v2(96,2)=33;
v2(97,2)=204;
v2(98,2)=273;
v2(99,2)=195;
v2(100,2)=57;
v2(101,2)=205;
v2(102,2)=297;
v2(103,2)=213;
v2(104,2)=489;
v2(105,2)=26;
v2(106,2)=36;
v2(107,2)=266;
v2(108,2)=27;
v2(109,2)=50;
v2(110,2)=37;
v2(111,2)=290;
v2(112,2)=45;
v2(113,2)=482;
v2(114,2)=276;
v2(115,2)=267;
v2(116,2)=60;
v2(117,2)=277;
v2(118,2)=300;
v2(119,2)=285;
v2(120,2)=492;
v2(121,2)=51;
v2(122,2)=61;
v2(123,2)=291;
v2(124,2)=69;
v2(125,2)=483;
v2(126,2)=301;
v2(127,2)=309;
v2(128,2)=493;
v2(129,2)=501;
v2(130,2)=51;
v2(131,2)=301;
v2(132,2)=76;
v2(133,2)=326;
v2(134,2)=101;
v2(135,2)=351;
v2(136,2)=1;
v2(137,2)=201;
v2(138,2)=326;
v2(139,2)=276;
v2(140,2)=251;
v2(1,3)=T(71);
v2(2,3)=T(48);
v2(3,3)=v2(2,3);
v2(4,3)=(-(y(11)*T(8)*T(72)/y(18)/(T(10)*y(19))));
v2(5,3)=(-(T(8)*T(54)/y(18)/(T(10)*y(19))));
v2(6,3)=v2(5,3);
v2(7,3)=(-((-(y(11)*T(8)*T(54)))/(y(18)*y(18))/(T(10)*y(19))));
v2(8,3)=v2(7,3);
v2(9,3)=(-((-(T(10)*y(11)*T(8)*T(54)/y(18)))/(T(10)*y(19)*T(10)*y(19))));
v2(10,3)=v2(9,3);
v2(11,3)=(-(y(11)*T(8)*T(53)/y(18)/(T(10)*y(19))));
v2(12,3)=v2(11,3);
v2(13,3)=(-((-(T(8)*T(9)))/(y(18)*y(18))/(T(10)*y(19))));
v2(14,3)=v2(13,3);
v2(15,3)=(-((-(T(10)*T(8)*T(9)/y(18)))/(T(10)*y(19)*T(10)*y(19))));
v2(16,3)=v2(15,3);
v2(17,3)=(-(T(5)*T(8)/y(18)/(T(10)*y(19))));
v2(18,3)=v2(17,3);
v2(19,3)=(-((-((-(y(11)*T(8)*T(9)))*(y(18)+y(18))))/(y(18)*y(18)*y(18)*y(18))/(T(10)*y(19))));
v2(20,3)=(-((-(T(10)*(-(y(11)*T(8)*T(9)))/(y(18)*y(18))))/(T(10)*y(19)*T(10)*y(19))));
v2(21,3)=v2(20,3);
v2(22,3)=(-((-(y(11)*T(5)*T(8)))/(y(18)*y(18))/(T(10)*y(19))));
v2(23,3)=v2(22,3);
v2(24,3)=(-((-((-(y(11)*T(8)*T(9)/y(18)*T(10)))*(T(10)*T(10)*y(19)+T(10)*T(10)*y(19))))/(T(10)*y(19)*T(10)*y(19)*T(10)*y(19)*T(10)*y(19))));
v2(25,3)=(-((-(T(10)*y(11)*T(5)*T(8)/y(18)))/(T(10)*y(19)*T(10)*y(19))));
v2(26,3)=v2(25,3);
v2(27,3)=(-(T(8)*params(15)*y(18)*(y(18)-T(12))*(-((-(T(9)/T(7)*y(16)))*(y(9)+y(9))))/(y(9)*y(9)*y(9)*y(9))));
v2(28,3)=(-(T(8)*params(15)*y(18)*(y(18)-T(12))*(-(T(9)/T(7)))/(y(9)*y(9))));
v2(29,3)=v2(28,3);
v2(30,3)=(-(T(8)*params(15)*y(18)*(y(18)-T(12))*(-(y(16)*(-(T(9)*T(49)))/(T(7)*T(7))))/(y(9)*y(9))));
v2(31,3)=v2(30,3);
v2(32,3)=(-(T(8)*params(15)*y(18)*(y(18)-T(12))*(-(y(16)*T(54)/T(7)))/(y(9)*y(9))));
v2(33,3)=v2(32,3);
v2(34,3)=(-(T(8)*params(15)*(T(40)+y(18)*T(39))));
v2(35,3)=v2(34,3);
v2(36,3)=(-(T(8)*params(15)*y(18)*(y(18)-T(12))*(-(y(16)*(-(T(4)*T(9)))/(T(7)*T(7))))/(y(9)*y(9))));
v2(37,3)=v2(36,3);
v2(38,3)=(-(T(8)*params(15)*y(18)*(y(18)-T(12))*(-(y(16)*T(5)/T(7)))/(y(9)*y(9))));
v2(39,3)=v2(38,3);
v2(40,3)=(-(T(8)*params(15)*y(18)*(y(18)-T(12))*(-(T(9)*T(49)))/(T(7)*T(7))/y(9)));
v2(41,3)=v2(40,3);
v2(42,3)=(-(T(8)*params(15)*y(18)*(y(18)-T(12))*T(54)/T(7)/y(9)));
v2(43,3)=v2(42,3);
v2(44,3)=(-(T(8)*params(15)*(T(47)+y(18)*T(46))));
v2(45,3)=v2(44,3);
v2(46,3)=(-(T(8)*params(15)*y(18)*(y(18)-T(12))*(-(T(4)*T(9)))/(T(7)*T(7))/y(9)));
v2(47,3)=v2(46,3);
v2(48,3)=(-(T(8)*params(15)*y(18)*(y(18)-T(12))*T(5)/T(7)/y(9)));
v2(49,3)=v2(48,3);
v2(50,3)=(-(T(15)*(-(T(50)*T(71)+T(49)*T(49)*T(73)))+T(8)*params(15)*y(18)*(y(18)-T(12))*y(16)*(T(7)*T(7)*(-(T(9)*T(71)))-(-(T(9)*T(49)))*(T(7)*T(49)+T(7)*T(49)))/(T(7)*T(7)*T(7)*T(7))/y(9)));
v2(51,3)=(-(T(8)*params(15)*y(18)*(y(18)-T(12))*y(16)*(-(T(49)*T(54)))/(T(7)*T(7))/y(9)));
v2(52,3)=v2(51,3);
v2(53,3)=(-(T(8)*params(15)*(T(52)+y(18)*T(51))));
v2(54,3)=v2(53,3);
v2(55,3)=(-(T(15)*(-(T(48)*T(50)+T(49)*T(4)*T(73)))+T(8)*params(15)*y(18)*(y(18)-T(12))*y(16)*(T(7)*T(7)*(-(T(9)*T(48)))-(-(T(9)*T(49)))*(T(4)*T(7)+T(4)*T(7)))/(T(7)*T(7)*T(7)*T(7))/y(9)));
v2(56,3)=v2(55,3);
v2(57,3)=(-(T(8)*params(15)*y(18)*(y(18)-T(12))*y(16)*(-(T(5)*T(49)))/(T(7)*T(7))/y(9)));
v2(58,3)=v2(57,3);
v2(59,3)=(-(T(8)*params(15)*y(18)*(y(18)-T(12))*y(16)*T(72)/T(7)/y(9)));
v2(60,3)=(-(T(8)*params(15)*(T(56)+y(18)*T(55))));
v2(61,3)=v2(60,3);
v2(62,3)=(-(T(8)*params(15)*y(18)*(y(18)-T(12))*y(16)*(-(T(4)*T(54)))/(T(7)*T(7))/y(9)));
v2(63,3)=v2(62,3);
v2(64,3)=(-(T(8)*params(15)*y(18)*(y(18)-T(12))*y(16)*T(53)/T(7)/y(9)));
v2(65,3)=v2(64,3);
v2(66,3)=(-(params(15)+params(15)-2*params(15)/(2*params(5))));
v2(67,3)=(-(T(8)*params(15)*(T(16)+T(16))));
v2(68,3)=(-(T(8)*params(15)*(T(67)+y(18)*T(66))));
v2(69,3)=v2(68,3);
v2(70,3)=(-(T(8)*params(15)*(T(69)+y(18)*T(68))));
v2(71,3)=v2(70,3);
v2(72,3)=(-(T(15)*(-(T(4)*T(4)*T(73)))+T(8)*params(15)*y(18)*(y(18)-T(12))*y(16)*(-((-(T(4)*T(9)))*(T(4)*T(7)+T(4)*T(7))))/(T(7)*T(7)*T(7)*T(7))/y(9)));
v2(73,3)=(-(T(8)*params(15)*y(18)*(y(18)-T(12))*y(16)*(-(T(4)*T(5)))/(T(7)*T(7))/y(9)));
v2(74,3)=v2(73,3);
v2(75,3)=(-(params(15)/2*2*(y(12)-T(11))));
v2(76,3)=v2(75,3);
v2(77,3)=(-1)/(y(13)*y(13));
v2(78,3)=v2(77,3);
v2(79,3)=(-(y(9)*2*params(15)/2));
v2(80,3)=(-(y(9)*(-((y(13)+y(13))/(y(13)*y(13)*y(13)*y(13))))));
v2(81,3)=(-(T(21)*T(20)*(T(37)*T(30)*(T(36)*(-((-y(9))*(y(1)+y(1))))/(y(1)*y(1)*y(1)*y(1))/T(32)+T(35)*T(35)*T(74))+T(30)*T(35)*T(36)*T(30)*T(35)*T(36)*T(75))));
v2(82,3)=(-(T(21)*T(20)*(T(37)*(T(35)*T(36)*T(43)+T(30)*(T(36)*(-1)/(y(1)*y(1))/T(32)+T(35)*T(44)*T(74)))+T(30)*T(35)*T(36)*T(45)*T(75))));
v2(83,3)=v2(82,3);
v2(84,3)=(-(T(21)*T(30)*T(35)*T(36)*T(37)*T(57)));
v2(85,3)=v2(84,3);
v2(86,3)=(-(T(21)*T(20)*(T(37)*T(35)*T(36)*T(59)+T(30)*T(35)*T(36)*T(34)*T(59)*T(75))));
v2(87,3)=v2(86,3);
v2(88,3)=(-(T(21)*T(20)*(T(37)*T(30)*(T(36)*(-((-y(9))/(y(1)*y(1))*T(60)))/(T(32)*T(32))+T(35)*T(61)*T(74))+T(30)*T(35)*T(36)*T(30)*T(36)*T(61)*T(75))));
v2(89,3)=v2(88,3);
v2(90,3)=(-(T(21)*T(20)*(T(37)*(T(35)*T(36)*T(63)+T(30)*(T(36)*(-((-y(9))/(y(1)*y(1))*T(64)))/(T(32)*T(32))+T(35)*T(65)*T(74)))+T(30)*T(35)*T(36)*T(76))));
v2(91,3)=v2(90,3);
v2(92,3)=(-(T(20)*T(30)*T(35)*T(36)*T(37)*T(70)));
v2(93,3)=v2(92,3);
v2(94,3)=(-(T(21)*T(20)*(T(45)*T(45)*T(75)+T(37)*(T(43)*T(36)*T(44)+T(34)*T(28)*T(41)*T(41)*T(77)+T(43)*T(36)*T(44)+T(30)*T(44)*T(44)*T(74)))));
v2(95,3)=(-(T(21)*T(37)*T(45)*T(57)));
v2(96,3)=v2(95,3);
v2(97,3)=(-(T(21)*T(20)*(T(45)*T(34)*T(59)*T(75)+T(37)*(T(34)*T(41)*T(42)*T(58)+T(36)*T(44)*T(59)))));
v2(98,3)=v2(97,3);
v2(99,3)=(-(T(21)*T(20)*(T(45)*T(30)*T(36)*T(61)*T(75)+T(37)*(T(43)*T(36)*T(61)+T(30)*(T(44)*T(61)*T(74)+T(36)*(-(1/y(1)*T(60)))/(T(32)*T(32)))))));
v2(100,3)=v2(99,3);
v2(101,3)=(-(T(21)*T(20)*(T(45)*T(76)+T(37)*(T(43)*T(36)*T(65)+T(34)*T(28)*(T(42)*(-T(27))/(T(2)*T(2))+T(41)*T(62)*T(77))+T(36)*T(44)*T(63)+T(30)*(T(44)*T(65)*T(74)+T(36)*(-(1/y(1)*T(64)))/(T(32)*T(32)))))));
v2(102,3)=v2(101,3);
v2(103,3)=(-(T(20)*T(37)*T(45)*T(70)));
v2(104,3)=v2(103,3);
v2(105,3)=(-(T(21)*T(19)*getPowerDeriv(y(2),params(9),2)));
v2(106,3)=(-(T(21)*T(57)*T(37)*T(34)*T(59)));
v2(107,3)=v2(106,3);
v2(108,3)=(-(T(21)*T(57)*T(37)*T(30)*T(36)*T(61)));
v2(109,3)=v2(108,3);
v2(110,3)=(-(T(21)*T(57)*T(37)*(T(34)*T(63)+T(30)*T(36)*T(65))));
v2(111,3)=v2(110,3);
v2(112,3)=(-(T(19)*T(57)*T(70)));
v2(113,3)=v2(112,3);
v2(114,3)=(-(T(21)*T(20)*(T(34)*T(59)*T(34)*T(59)*T(75)+T(37)*T(34)*T(29)*(steady_state(6))*1/T(1)*1/T(1)*getPowerDeriv(y(12)/T(1),params(6),2))));
v2(115,3)=(-(T(21)*T(20)*(T(34)*T(59)*T(30)*T(36)*T(61)*T(75)+T(37)*T(59)*T(36)*T(61))));
v2(116,3)=v2(115,3);
v2(117,3)=(-(T(21)*T(20)*(T(34)*T(59)*T(76)+T(37)*(T(59)*T(36)*T(65)+T(34)*T(58)*T(42)*T(62)))));
v2(118,3)=v2(117,3);
v2(119,3)=(-(T(20)*T(37)*T(34)*T(59)*T(70)));
v2(120,3)=v2(119,3);
v2(121,3)=(-(T(21)*T(20)*(T(30)*T(36)*T(61)*T(30)*T(36)*T(61)*T(75)+T(37)*T(30)*(T(61)*T(61)*T(74)+T(36)*(T(32)*T(32)*(-(T(31)*(-((-(T(27)*T(2)))*(T(27)*T(3)+T(27)*T(3))))/(T(3)*T(3)*T(3)*T(3))))-(-(T(31)*T(60)))*(T(32)*T(60)+T(32)*T(60)))/(T(32)*T(32)*T(32)*T(32))))));
v2(122,3)=(-(T(21)*T(20)*(T(30)*T(36)*T(61)*T(76)+T(37)*(T(36)*T(61)*T(63)+T(30)*(T(61)*T(65)*T(74)+T(36)*(T(32)*T(32)*(-(T(31)*(-(T(27)*T(27)))/(T(3)*T(3))))-(-(T(31)*T(60)))*(T(32)*T(64)+T(32)*T(64)))/(T(32)*T(32)*T(32)*T(32)))))));
v2(123,3)=v2(122,3);
v2(124,3)=(-(T(20)*T(37)*T(30)*T(36)*T(61)*T(70)));
v2(125,3)=v2(124,3);
v2(126,3)=(-(T(21)*T(20)*((T(34)*T(63)+T(30)*T(36)*T(65))*T(76)+T(37)*(T(63)*T(36)*T(65)+T(34)*T(28)*(T(62)*T(62)*T(77)+T(42)*(-((-(T(27)*y(9)))*(T(27)*T(2)+T(27)*T(2))))/(T(2)*T(2)*T(2)*T(2)))+T(63)*T(36)*T(65)+T(30)*(T(65)*T(65)*T(74)+T(36)*(-((-(T(31)*T(64)))*(T(32)*T(64)+T(32)*T(64))))/(T(32)*T(32)*T(32)*T(32)))))));
v2(127,3)=(-(T(20)*T(37)*(T(34)*T(63)+T(30)*T(36)*T(65))*T(70)));
v2(128,3)=v2(127,3);
v2(129,3)=(-(T(19)*T(20)*params(12)/100*T(70)));
v2(130,3)=(-(params(10)*(-1)/(y(3)*y(3))));
v2(131,3)=(-1)/(y(13)*y(13));
v2(132,3)=(-(params(11)*(-1)/(y(4)*y(4))));
v2(133,3)=(-1)/(y(14)*y(14));
v2(134,3)=(-(params(17)*(-1)/(y(5)*y(5))));
v2(135,3)=(-1)/(y(15)*y(15));
v2(136,3)=(-(100*(-((-(T(38)*T(38)))/(T(23)*T(23))))));
v2(137,3)=(-(100*(-(T(38)*T(38)))/(T(22)*T(22))));
v2(138,3)=(-(100*(-(1/(steady_state(9))*1/(steady_state(9))))/(T(24)*T(24))));
v2(139,3)=(-(400*(-(1/(steady_state(7))*1/(steady_state(7))))/(T(25)*T(25))));
v2(140,3)=(-(400*(-(1/(steady_state(6))*1/(steady_state(6))))/(T(26)*T(26))));
g2 = sparse(v2(:,1),v2(:,2),v2(:,3),10,576);
end
