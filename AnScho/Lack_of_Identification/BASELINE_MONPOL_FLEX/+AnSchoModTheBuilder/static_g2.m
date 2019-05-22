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
    T = AnSchoModTheBuilder.static_g2_tt(T, y, x, params);
end
v2 = zeros(42,3);
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
v2(19,1)=3;
v2(20,1)=3;
v2(21,1)=3;
v2(22,1)=4;
v2(23,1)=4;
v2(24,1)=4;
v2(25,1)=4;
v2(26,1)=4;
v2(27,1)=4;
v2(28,1)=4;
v2(29,1)=4;
v2(30,1)=4;
v2(31,1)=4;
v2(32,1)=4;
v2(33,1)=4;
v2(34,1)=4;
v2(35,1)=4;
v2(36,1)=4;
v2(37,1)=4;
v2(38,1)=5;
v2(39,1)=6;
v2(40,1)=7;
v2(41,1)=8;
v2(42,1)=9;
v2(1,2)=41;
v2(2,2)=42;
v2(3,2)=50;
v2(4,2)=43;
v2(5,2)=59;
v2(6,2)=45;
v2(7,2)=77;
v2(8,2)=52;
v2(9,2)=60;
v2(10,2)=54;
v2(11,2)=78;
v2(12,2)=61;
v2(13,2)=63;
v2(14,2)=79;
v2(15,2)=81;
v2(16,2)=41;
v2(17,2)=43;
v2(18,2)=59;
v2(19,2)=35;
v2(20,2)=67;
v2(21,2)=71;
v2(22,2)=31;
v2(23,2)=33;
v2(24,2)=49;
v2(25,2)=34;
v2(26,2)=58;
v2(27,2)=35;
v2(28,2)=67;
v2(29,2)=51;
v2(30,2)=52;
v2(31,2)=60;
v2(32,2)=53;
v2(33,2)=69;
v2(34,2)=61;
v2(35,2)=62;
v2(36,2)=70;
v2(37,2)=71;
v2(38,2)=71;
v2(39,2)=81;
v2(40,2)=81;
v2(41,2)=61;
v2(42,2)=51;
v2(1,3)=T(4)*T(39)-y(6)*T(8)*T(6)*T(39)/y(7)/(T(10)*y(9));
v2(2,3)=(-(T(8)*T(6)*T(30)/y(7)/(T(10)*y(9))));
v2(3,3)=v2(2,3);
v2(4,3)=(-((-(y(6)*T(8)*T(6)*T(30)))/(y(7)*y(7))/(T(10)*y(9))));
v2(5,3)=v2(4,3);
v2(6,3)=(-((-(T(10)*y(6)*T(8)*T(6)*T(30)/y(7)))/(T(10)*y(9)*T(10)*y(9))));
v2(7,3)=v2(6,3);
v2(8,3)=(-((-(T(8)*T(9)))/(y(7)*y(7))/(T(10)*y(9))));
v2(9,3)=v2(8,3);
v2(10,3)=(-((-(T(10)*T(8)*T(9)/y(7)))/(T(10)*y(9)*T(10)*y(9))));
v2(11,3)=v2(10,3);
v2(12,3)=(-((-((-(y(6)*T(8)*T(9)))*(y(7)+y(7))))/(y(7)*y(7)*y(7)*y(7))/(T(10)*y(9))));
v2(13,3)=(-((-(T(10)*(-(y(6)*T(8)*T(9)))/(y(7)*y(7))))/(T(10)*y(9)*T(10)*y(9))));
v2(14,3)=v2(13,3);
v2(15,3)=(-((-((-(y(6)*T(8)*T(9)/y(7)*T(10)))*(T(10)*T(10)*y(9)+T(10)*T(10)*y(9))))/(T(10)*y(9)*T(10)*y(9)*T(10)*y(9)*T(10)*y(9))));
v2(16,3)=(-(1/params(5)*(-(T(31)*T(4)*T(39)+T(4)*T(30)*T(4)*T(30)*getPowerDeriv(T(7),(-1),2)))+T(8)*params(14)*y(7)*(y(7)-T(12))*y(4)*(T(7)*T(7)*(T(4)*T(30)*T(6)*T(30)+T(7)*T(6)*T(39)-(T(4)*T(30)*T(6)*T(30)+T(9)*T(4)*T(39)))-(T(7)*T(6)*T(30)-T(9)*T(4)*T(30))*(T(7)*T(4)*T(30)+T(7)*T(4)*T(30)))/(T(7)*T(7)*T(7)*T(7))/y(4)));
v2(17,3)=(-(T(8)*params(14)*T(32)));
v2(18,3)=v2(17,3);
v2(19,3)=T(36);
v2(20,3)=v2(19,3);
v2(21,3)=(-(y(4)*(-((y(8)+y(8))/(y(8)*y(8)*y(8)*y(8))))));
v2(22,3)=(-(T(19)*T(18)*(T(29)*(y(6))*T(24)*T(26)*T(26)*T(40)+T(28)*T(28)*T(41))));
v2(23,3)=(-(T(19)*(T(28)*T(29)*T(33)+T(18)*(T(29)*T(24)*T(26)*T(27)+T(28)*T(24)*T(25)*T(41)))));
v2(24,3)=v2(23,3);
v2(25,3)=(-(T(19)*T(18)*(T(29)*T(26)*T(27)*T(35)+T(28)*T(25)*T(35)*T(41))));
v2(26,3)=v2(25,3);
v2(27,3)=(-(T(19)*T(18)*(T(29)*(y(6))*T(24)*(T(27)*(-T(23))/(T(2)*T(2))+T(26)*T(37)*T(40))+T(28)*T(42))));
v2(28,3)=v2(27,3);
v2(29,3)=(-(T(19)*(T(29)*T(24)*T(25)*T(33)+T(18)*T(24)*T(25)*T(24)*T(25)*T(41)+T(29)*T(24)*T(25)*T(33)+T(17)*getPowerDeriv(y(6),params(8),2))));
v2(30,3)=(-(T(19)*(T(18)*(T(24)*T(25)*T(25)*T(35)*T(41)+T(29)*T(25)*T(34))+T(33)*T(29)*T(25)*T(35))));
v2(31,3)=v2(30,3);
v2(32,3)=(-(T(19)*(T(18)*(T(24)*T(25)*T(42)+T(29)*T(24)*T(38))+T(33)*T(29)*(y(6))*T(24)*T(38))));
v2(33,3)=v2(32,3);
v2(34,3)=(-(T(19)*T(18)*(T(25)*T(35)*T(25)*T(35)*T(41)+T(29)*T(25)*(y(6))*1/T(1)*1/T(1)*getPowerDeriv(y(7)/T(1),params(6),2))));
v2(35,3)=(-(T(19)*T(18)*(T(25)*T(35)*T(42)+T(29)*T(35)*T(38))));
v2(36,3)=v2(35,3);
v2(37,3)=(-(T(19)*T(18)*((y(6))*T(24)*T(38)*T(42)+T(29)*(y(6))*T(24)*(T(37)*T(37)*T(40)+T(27)*(-((-(T(23)*y(4)))*(T(23)*T(2)+T(23)*T(2))))/(T(2)*T(2)*T(2)*T(2))))));
v2(38,3)=T(36)-params(9)*T(36);
v2(39,3)=(-1)/(y(9)*y(9))-params(10)*(-1)/(y(9)*y(9));
v2(40,3)=(-(100*(T(20)*(-(((y(9))-y(9))*((y(9))+(y(9)))))/((y(9))*(y(9))*(y(9))*(y(9)))-((y(9))-y(9))/((y(9))*(y(9)))*((y(9))-y(9))/((y(9))*(y(9))))/(T(20)*T(20))));
v2(41,3)=(-(400*(T(21)*(-(((y(7))-y(7))*((y(7))+(y(7)))))/((y(7))*(y(7))*(y(7))*(y(7)))-((y(7))-y(7))/((y(7))*(y(7)))*((y(7))-y(7))/((y(7))*(y(7))))/(T(21)*T(21))));
v2(42,3)=(-(400*(T(22)*(-(((y(6))-y(6))*((y(6))+(y(6)))))/((y(6))*(y(6))*(y(6))*(y(6)))-((y(6))-y(6))/((y(6))*(y(6)))*((y(6))-y(6))/((y(6))*(y(6))))/(T(22)*T(22))));
g2 = sparse(v2(:,1),v2(:,2),v2(:,3),9,81);
end