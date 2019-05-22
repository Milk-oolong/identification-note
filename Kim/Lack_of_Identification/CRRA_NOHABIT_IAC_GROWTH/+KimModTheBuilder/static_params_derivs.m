function [rp, gp, rpp, gpp, hp] = static_params_derivs(y, x, params)
%
% Status : Computes derivatives of the static model with respect to the parameters
%
% Inputs : 
%   y         [M_.endo_nbr by 1] double    vector of endogenous variables in declaration order
%   x         [M_.exo_nbr by 1] double     vector of exogenous variables in declaration order
%   params    [M_.param_nbr by 1] double   vector of parameter values in declaration order
%
% Outputs:
%   rp        [M_.eq_nbr by #params] double    Jacobian matrix of static model equations with respect to parameters 
%                                              Dynare may prepend or append auxiliary equations, see M_.aux_vars
%   gp        [M_.endo_nbr by M_.endo_nbr by #params] double    Derivative of the Jacobian matrix of the static model equations with respect to the parameters
%                                                           rows: variables in declaration order
%                                                           rows: equations in order of declaration
%   rpp       [#second_order_residual_terms by 4] double   Hessian matrix of second derivatives of residuals with respect to parameters;
%                                                              rows: respective derivative term
%                                                              1st column: equation number of the term appearing
%                                                              2nd column: number of the first parameter in derivative
%                                                              3rd column: number of the second parameter in derivative
%                                                              4th column: value of the Hessian term
%   gpp      [#second_order_Jacobian_terms by 5] double   Hessian matrix of second derivatives of the Jacobian with respect to the parameters;
%                                                              rows: respective derivative term
%                                                              1st column: equation number of the term appearing
%                                                              2nd column: column number of variable in Jacobian of the static model
%                                                              3rd column: number of the first parameter in derivative
%                                                              4th column: number of the second parameter in derivative
%                                                              5th column: value of the Hessian term
%
%
% Warning : this file is generated automatically by Dynare
%           from model file (.mod)

T = NaN(269,1);
T(1) = (y(3))/(y(1));
T(2) = ((1-T(1))*(y(2)/(1-T(1)))^(1+params(8))+T(1)*(y(3)/T(1))^(1+params(8)))^(1/(1+params(8)));
T(3) = 0;
T(4) = 0;
T(5) = 0;
T(6) = 0;
T(7) = y(5);
T(8) = (y(2)/((1-T(1))*T(2)))^params(8);
T(9) = (y(2)-T(3))^(-params(10))*(1-T(4));
T(10) = 1/(1+params(2)/400);
T(11) = (y(2)-T(5))^(-params(10))*(-T(6));
T(12) = (y(3)/(T(1)*T(2)))^params(8);
T(13) = 1;
T(14) = 0;
T(15) = 0;
T(16) = 1;
T(17) = 0;
T(18) = T(7)^params(1);
T(19) = params(1)*T(7)^(params(1)-1);
T(20) = 1-T(1);
T(21) = y(2)/T(20);
T(22) = T(21)^(1+params(8));
T(23) = y(3)/T(1);
T(24) = T(23)^(1+params(8));
T(25) = T(20)*T(22)+T(1)*T(24);
T(26) = 1/(1+params(8));
T(27) = T(25)^T(26);
T(28) = y(2)/(T(20)*T(2));
T(29) = T(28)^params(8);
T(30) = y(3)/(T(1)*T(2));
T(31) = T(30)^params(8);
T(32) = T(7)^(params(1)-1);
T(33) = T(20)*T(2)*T(20)*T(2);
T(34) = T(1)*T(2)*T(1)*T(2);
T(35) = T(7)^params(1)*log(T(7));
T(36) = (1+params(2)/400)*(1+params(2)/400);
T(37) = (-0.0025)/T(36);
T(38) = log(T(21));
T(39) = T(22)*T(38);
T(40) = log(T(23));
T(41) = T(24)*T(40);
T(42) = T(20)*T(39)+T(1)*T(41);
T(43) = (-1)/((1+params(8))*(1+params(8)));
T(44) = T(43)*log(T(25))+T(26)*T(42)/T(25);
T(45) = T(27)*T(44);
T(46) = (-(y(2)*T(20)*T(45)))/T(33);
T(47) = log(T(28))+params(8)*T(46)/T(28);
T(48) = T(29)*T(47);
T(49) = (-(y(3)*T(1)*T(45)))/T(34);
T(50) = log(T(30))+params(8)*T(49)/T(30);
T(51) = T(31)*T(50);
T(52) = (y(2)-T(3))^(-params(10))*(-log(y(2)-T(3)));
T(53) = (y(2)-T(5))^(-params(10))*(-log(y(2)-T(5)));
T(54) = (-T(6))*T(53);
T(55) = T(34)*T(34);
T(56) = T(20)*T(2)*T(20)*T(45)+T(20)*T(2)*T(20)*T(45);
T(57) = T(1)*T(2)*T(1)*T(45)+T(1)*T(2)*T(1)*T(45);
T(58) = (-((-0.0025)*((1+params(2)/400)*0.0025+(1+params(2)/400)*0.0025)))/(T(36)*T(36));
T(59) = (1+params(8)+1+params(8))/((1+params(8))*(1+params(8))*(1+params(8))*(1+params(8)));
T(60) = log(T(25))*T(59)+T(43)*T(42)/T(25);
T(61) = T(44)*T(45)+T(27)*(T(60)+(T(25)*(T(42)*T(43)+T(26)*(T(20)*T(38)*T(39)+T(1)*T(40)*T(41)))-T(42)*T(26)*T(42))/(T(25)*T(25)));
T(62) = (T(33)*(-(y(2)*T(20)*T(61)))-(-(y(2)*T(20)*T(45)))*T(56))/(T(33)*T(33));
T(63) = T(47)*T(48)+T(29)*(T(46)/T(28)+(T(28)*(T(46)+params(8)*T(62))-T(46)*params(8)*T(46))/(T(28)*T(28)));
T(64) = (T(34)*(-(y(3)*T(1)*T(61)))-(-(y(3)*T(1)*T(45)))*T(57))/T(55);
T(65) = T(50)*T(51)+T(31)*(T(49)/T(30)+(T(30)*(T(49)+params(8)*T(64))-T(49)*params(8)*T(49))/(T(30)*T(30)));
T(66) = T(32)*log(T(7))+T(32)*log(T(7))+params(1)*log(T(7))*T(32)*log(T(7));
T(67) = (-(y(8)*T(66)));
T(68) = (-(y(3)))/((y(1))*(y(1)));
T(69) = (-T(68));
T(70) = (-(y(2)*T(69)))/(T(20)*T(20));
T(71) = getPowerDeriv(T(21),1+params(8),1);
T(72) = (-(y(3)*T(68)))/(T(1)*T(1));
T(73) = getPowerDeriv(T(23),1+params(8),1);
T(74) = T(22)*T(69)+T(20)*T(70)*T(71)+T(24)*T(68)+T(1)*T(72)*T(73);
T(75) = getPowerDeriv(T(25),T(26),1);
T(76) = (-(y(2)*(T(2)*T(69)+T(20)*T(74)*T(75))));
T(77) = T(76)/T(33);
T(78) = getPowerDeriv(T(28),params(8),1);
T(79) = (-(y(3)*(T(2)*T(68)+T(1)*T(74)*T(75))));
T(80) = T(79)/T(34);
T(81) = getPowerDeriv(T(30),params(8),1);
T(82) = 1/T(20);
T(83) = T(20)*T(71)*T(82);
T(84) = T(20)*T(2)-y(2)*T(20)*T(75)*T(83);
T(85) = T(84)/T(33);
T(86) = (-T(6))*getPowerDeriv(y(2)-T(5),(-params(10)),1);
T(87) = (-(y(3)*T(1)*T(75)*T(83)))/T(34);
T(88) = 1/(y(1));
T(89) = (-T(88));
T(90) = (-(y(2)*T(89)))/(T(20)*T(20));
T(91) = (T(1)-y(3)*T(88))/(T(1)*T(1));
T(92) = T(22)*T(89)+T(20)*T(71)*T(90)+T(24)*T(88)+T(1)*T(73)*T(91);
T(93) = (-(y(2)*(T(2)*T(89)+T(20)*T(75)*T(92))))/T(33);
T(94) = T(1)*T(2)-y(3)*(T(2)*T(88)+T(1)*T(75)*T(92));
T(95) = T(94)/T(34);
T(96) = T(7)^(params(1)-1-1);
T(97) = getPowerDeriv(T(7),params(1)-1,1)+params(1)*(T(96)+(params(1)-1)*log(T(7))*T(96));
T(98) = T(21)^(1+params(8)-1);
T(99) = T(23)^(1+params(8)-1);
T(100) = T(69)*T(39)+T(20)*T(70)*(T(98)+(1+params(8))*T(38)*T(98))+T(68)*T(41)+T(1)*T(72)*(T(99)+(1+params(8))*T(40)*T(99));
T(101) = T(25)^(T(26)-1);
T(102) = (T(43)*log(T(25))+T(42)*(T(26)-1)/T(25))*T(101);
T(103) = T(26)*T(102)+T(43)*T(101);
T(104) = T(75)*T(100)+T(74)*T(103);
T(105) = (T(33)*(-(y(2)*(T(69)*T(45)+T(20)*T(104))))-T(76)*T(56))/(T(33)*T(33));
T(106) = T(28)^(params(8)-1);
T(107) = (log(T(28))+T(46)*(params(8)-1)/T(28))*T(106);
T(108) = T(106)+params(8)*T(107);
T(109) = T(20)*T(82)*(T(98)+(1+params(8))*T(38)*T(98));
T(110) = T(83)*T(103)+T(75)*T(109);
T(111) = (T(33)*(T(20)*T(45)-y(2)*T(20)*T(110))-T(84)*T(56))/(T(33)*T(33));
T(112) = T(89)*T(39)+T(20)*T(90)*(T(98)+(1+params(8))*T(38)*T(98))+T(88)*T(41)+T(1)*T(91)*(T(99)+(1+params(8))*T(40)*T(99));
T(113) = T(92)*T(103)+T(75)*T(112);
T(114) = (T(33)*(-(y(2)*(T(89)*T(45)+T(20)*T(113))))-(-(y(2)*(T(2)*T(89)+T(20)*T(75)*T(92))))*T(56))/(T(33)*T(33));
T(115) = T(34)*(-(y(3)*(T(68)*T(45)+T(1)*T(104))))-T(79)*T(57);
T(116) = T(115)/T(55);
T(117) = T(30)^(params(8)-1);
T(118) = (log(T(30))+T(49)*(params(8)-1)/T(30))*T(117);
T(119) = T(117)+params(8)*T(118);
T(120) = (T(34)*(-(y(3)*T(1)*T(110)))-(-(y(3)*T(1)*T(75)*T(83)))*T(57))/T(55);
T(121) = (T(34)*(T(1)*T(45)-y(3)*(T(88)*T(45)+T(1)*T(113)))-T(94)*T(57))/T(55);
T(122) = (y(2)-T(3))^((-params(10))-1);
T(123) = (y(2)-T(5))^((-params(10))-1);
T(124) = T(33)*T(56)+T(33)*T(56);
T(125) = T(33)*T(33)*T(33)*T(33);
T(126) = T(34)*T(57)+T(34)*T(57);
T(127) = T(38)*T(98)+T(38)*T(98)+(1+params(8))*T(38)*T(38)*T(98);
T(128) = T(69)*T(38)*T(39)+T(20)*T(70)*T(127)+T(68)*T(40)*T(41)+T(1)*T(72)*(T(40)*T(99)+T(40)*T(99)+(1+params(8))*T(40)*T(40)*T(99));
T(129) = T(43)*T(102)+T(26)*(T(101)*(T(60)+(T(25)*(T(42)*T(43)+(T(26)-1)*(T(20)*T(38)*T(39)+T(1)*T(40)*T(41)))-T(42)*T(42)*(T(26)-1))/(T(25)*T(25)))+(T(43)*log(T(25))+T(42)*(T(26)-1)/T(25))*T(102))+T(43)*T(102)+T(101)*T(59);
T(130) = T(100)*T(103)+T(75)*T(128)+T(100)*T(103)+T(74)*T(129);
T(131) = T(20)*T(45)*T(20)*T(45)+T(20)*T(2)*T(20)*T(61)+T(20)*T(45)*T(20)*T(45)+T(20)*T(2)*T(20)*T(61);
T(132) = (T(33)*T(33)*((-(y(2)*(T(69)*T(45)+T(20)*T(104))))*T(56)+T(33)*(-(y(2)*(T(69)*T(61)+T(20)*T(130))))-((-(y(2)*(T(69)*T(45)+T(20)*T(104))))*T(56)+T(76)*T(131)))-(T(33)*(-(y(2)*(T(69)*T(45)+T(20)*T(104))))-T(76)*T(56))*T(124))/T(125);
T(133) = T(107)+T(107)+params(8)*(T(106)*(T(46)/T(28)+(T(28)*(T(46)+(params(8)-1)*T(62))-T(46)*T(46)*(params(8)-1))/(T(28)*T(28)))+(log(T(28))+T(46)*(params(8)-1)/T(28))*T(107));
T(134) = T(103)*T(109)+T(83)*T(129)+T(103)*T(109)+T(75)*T(20)*T(82)*T(127);
T(135) = (T(33)*T(33)*(T(56)*(T(20)*T(45)-y(2)*T(20)*T(110))+T(33)*(T(20)*T(61)-y(2)*T(20)*T(134))-(T(56)*(T(20)*T(45)-y(2)*T(20)*T(110))+T(84)*T(131)))-(T(33)*(T(20)*T(45)-y(2)*T(20)*T(110))-T(84)*T(56))*T(124))/T(125);
T(136) = T(89)*T(38)*T(39)+T(20)*T(90)*T(127)+T(88)*T(40)*T(41)+T(1)*T(91)*(T(40)*T(99)+T(40)*T(99)+(1+params(8))*T(40)*T(40)*T(99));
T(137) = T(103)*T(112)+T(92)*T(129)+T(103)*T(112)+T(75)*T(136);
T(138) = (T(33)*T(33)*(T(56)*(-(y(2)*(T(89)*T(45)+T(20)*T(113))))+T(33)*(-(y(2)*(T(89)*T(61)+T(20)*T(137))))-(T(56)*(-(y(2)*(T(89)*T(45)+T(20)*T(113))))+(-(y(2)*(T(2)*T(89)+T(20)*T(75)*T(92))))*T(131)))-(T(33)*(-(y(2)*(T(89)*T(45)+T(20)*T(113))))-(-(y(2)*(T(2)*T(89)+T(20)*T(75)*T(92))))*T(56))*T(124))/T(125);
T(139) = T(1)*T(45)*T(1)*T(45)+T(1)*T(2)*T(1)*T(61)+T(1)*T(45)*T(1)*T(45)+T(1)*T(2)*T(1)*T(61);
T(140) = (T(55)*((-(y(3)*(T(68)*T(45)+T(1)*T(104))))*T(57)+T(34)*(-(y(3)*(T(68)*T(61)+T(1)*T(130))))-((-(y(3)*(T(68)*T(45)+T(1)*T(104))))*T(57)+T(79)*T(139)))-T(115)*T(126))/(T(55)*T(55));
T(141) = T(118)+T(118)+params(8)*(T(117)*(T(49)/T(30)+(T(30)*(T(49)+(params(8)-1)*T(64))-T(49)*T(49)*(params(8)-1))/(T(30)*T(30)))+(log(T(30))+T(49)*(params(8)-1)/T(30))*T(118));
T(142) = (T(55)*(T(57)*(-(y(3)*T(1)*T(110)))+T(34)*(-(y(3)*T(1)*T(134)))-(T(57)*(-(y(3)*T(1)*T(110)))+(-(y(3)*T(1)*T(75)*T(83)))*T(139)))-(T(34)*(-(y(3)*T(1)*T(110)))-(-(y(3)*T(1)*T(75)*T(83)))*T(57))*T(126))/(T(55)*T(55));
T(143) = (T(55)*(T(57)*(T(1)*T(45)-y(3)*(T(88)*T(45)+T(1)*T(113)))+T(34)*(T(1)*T(61)-y(3)*(T(88)*T(61)+T(1)*T(137)))-(T(57)*(T(1)*T(45)-y(3)*(T(88)*T(45)+T(1)*T(113)))+T(94)*T(139)))-(T(34)*(T(1)*T(45)-y(3)*(T(88)*T(45)+T(1)*T(113)))-T(94)*T(57))*T(126))/(T(55)*T(55));
T(144) = T(96)+(params(1)-1)*log(T(7))*T(96)+T(96)+(params(1)-1)*log(T(7))*T(96)+params(1)*(log(T(7))*T(96)+log(T(7))*T(96)+(params(1)-1)*log(T(7))*log(T(7))*T(96));
T(145) = (-((-(y(3)))*((y(1))+(y(1)))))/((y(1))*(y(1))*(y(1))*(y(1)));
T(146) = (-T(145));
T(147) = (T(20)*T(20)*(-(y(2)*T(146)))-(-(y(2)*T(69)))*(T(20)*T(69)+T(20)*T(69)))/(T(20)*T(20)*T(20)*T(20));
T(148) = getPowerDeriv(T(21),1+params(8),2);
T(149) = (T(1)*T(1)*(-(y(3)*T(145)))-(-(y(3)*T(68)))*(T(1)*T(68)+T(1)*T(68)))/(T(1)*T(1)*T(1)*T(1));
T(150) = getPowerDeriv(T(23),1+params(8),2);
T(151) = T(69)*T(70)*T(71)+T(22)*T(146)+T(69)*T(70)*T(71)+T(20)*(T(71)*T(147)+T(70)*T(70)*T(148))+T(68)*T(72)*T(73)+T(24)*T(145)+T(68)*T(72)*T(73)+T(1)*(T(73)*T(149)+T(72)*T(72)*T(150));
T(152) = getPowerDeriv(T(25),T(26),2);
T(153) = T(74)*T(152);
T(154) = (-(y(2)*(T(69)*T(74)*T(75)+T(2)*T(146)+T(69)*T(74)*T(75)+T(20)*(T(75)*T(151)+T(74)*T(153)))));
T(155) = T(33)*T(154)-T(76)*(T(20)*T(2)*(T(2)*T(69)+T(20)*T(74)*T(75))+T(20)*T(2)*(T(2)*T(69)+T(20)*T(74)*T(75)));
T(156) = getPowerDeriv(T(28),params(8),2);
T(157) = T(69)*T(71)*T(82)+T(20)*(T(71)*T(68)/(T(20)*T(20))+T(70)*T(82)*T(148));
T(158) = (-(T(2)*T(69)+T(20)*T(74)*T(75)+y(2)*(T(69)*T(75)*T(83)+T(20)*(T(75)*T(157)+T(74)*T(83)*T(152)))));
T(159) = T(20)*T(2)*T(20)*T(75)*T(83)+T(20)*T(2)*T(20)*T(75)*T(83);
T(160) = (T(33)*T(158)-T(76)*T(159))/(T(33)*T(33));
T(161) = (-1)/((y(1))*(y(1)));
T(162) = (-T(161));
T(163) = (T(20)*T(20)*(-(y(2)*T(162)))-(-(y(2)*T(69)))*(T(20)*T(89)+T(20)*T(89)))/(T(20)*T(20)*T(20)*T(20));
T(164) = (T(1)*T(1)*(-(T(68)+y(3)*T(161)))-(-(y(3)*T(68)))*(T(1)*T(88)+T(1)*T(88)))/(T(1)*T(1)*T(1)*T(1));
T(165) = T(69)*T(71)*T(90)+T(22)*T(162)+T(70)*T(71)*T(89)+T(20)*(T(71)*T(163)+T(70)*T(90)*T(148))+T(68)*T(73)*T(91)+T(24)*T(161)+T(72)*T(73)*T(88)+T(1)*(T(73)*T(164)+T(72)*T(91)*T(150));
T(166) = (-(y(2)*(T(69)*T(75)*T(92)+T(2)*T(162)+T(74)*T(75)*T(89)+T(20)*(T(75)*T(165)+T(74)*T(92)*T(152)))));
T(167) = T(20)*T(2)*(T(2)*T(89)+T(20)*T(75)*T(92))+T(20)*T(2)*(T(2)*T(89)+T(20)*T(75)*T(92));
T(168) = T(20)*T(75)*T(83)-(T(20)*T(75)*T(83)+y(2)*T(20)*(T(83)*T(83)*T(152)+T(75)*T(20)*T(82)*T(82)*T(148)));
T(169) = T(33)*T(168)-T(84)*T(159);
T(170) = (-T(6))*getPowerDeriv(y(2)-T(5),(-params(10)),2);
T(171) = T(71)*T(82)*T(89)+T(20)*(T(82)*T(90)*T(148)+T(71)*T(88)/(T(20)*T(20)));
T(172) = T(83)*T(92)*T(152)+T(75)*T(171);
T(173) = T(2)*T(89)+T(20)*T(75)*T(92)-y(2)*(T(75)*T(83)*T(89)+T(20)*T(172));
T(174) = (-((-(y(2)*T(89)))*(T(20)*T(89)+T(20)*T(89))))/(T(20)*T(20)*T(20)*T(20));
T(175) = (-((T(1)-y(3)*T(88))*(T(1)*T(88)+T(1)*T(88))))/(T(1)*T(1)*T(1)*T(1));
T(176) = T(89)*T(71)*T(90)+T(89)*T(71)*T(90)+T(20)*(T(90)*T(90)*T(148)+T(71)*T(174))+T(88)*T(73)*T(91)+T(88)*T(73)*T(91)+T(1)*(T(91)*T(91)*T(150)+T(73)*T(175));
T(177) = (-(y(2)*(T(89)*T(75)*T(92)+T(89)*T(75)*T(92)+T(20)*(T(92)*T(92)*T(152)+T(75)*T(176)))));
T(178) = (T(33)*T(177)-(-(y(2)*(T(2)*T(89)+T(20)*T(75)*T(92))))*T(167))/(T(33)*T(33));
T(179) = (-(y(3)*(T(68)*T(74)*T(75)+T(2)*T(145)+T(68)*T(74)*T(75)+T(1)*(T(75)*T(151)+T(74)*T(153)))));
T(180) = T(34)*T(179)-T(79)*(T(1)*T(2)*(T(2)*T(68)+T(1)*T(74)*T(75))+T(1)*T(2)*(T(2)*T(68)+T(1)*T(74)*T(75)));
T(181) = getPowerDeriv(T(30),params(8),2);
T(182) = T(1)*T(2)*T(1)*T(75)*T(83)+T(1)*T(2)*T(1)*T(75)*T(83);
T(183) = T(34)*(-(y(3)*(T(68)*T(75)*T(83)+T(1)*(T(75)*T(157)+T(74)*T(83)*T(152)))))-T(79)*T(182);
T(184) = (-(T(2)*T(68)+T(1)*T(74)*T(75)+y(3)*(T(68)*T(75)*T(92)+T(2)*T(161)+T(74)*T(75)*T(88)+T(1)*(T(75)*T(165)+T(74)*T(92)*T(152)))));
T(185) = T(1)*T(2)*(T(2)*T(88)+T(1)*T(75)*T(92))+T(1)*T(2)*(T(2)*T(88)+T(1)*T(75)*T(92));
T(186) = T(34)*T(184)-T(79)*T(185);
T(187) = T(34)*(-(y(3)*T(1)*(T(83)*T(83)*T(152)+T(75)*T(20)*T(82)*T(82)*T(148))))-(-(y(3)*T(1)*T(75)*T(83)))*T(182);
T(188) = T(34)*(-(T(1)*T(75)*T(83)+y(3)*(T(75)*T(83)*T(88)+T(1)*T(172))))-(-(y(3)*T(1)*T(75)*T(83)))*T(185);
T(189) = T(188)/T(55);
T(190) = T(2)*T(88)+T(1)*T(75)*T(92)-(T(2)*T(88)+T(1)*T(75)*T(92)+y(3)*(T(88)*T(75)*T(92)+T(88)*T(75)*T(92)+T(1)*(T(92)*T(92)*T(152)+T(75)*T(176))));
T(191) = (T(34)*T(190)-T(94)*T(185))/T(55);
T(192) = T(7)^(params(1)-2);
T(193) = T(7)^(params(1)-1-2);
T(194) = (params(1)-1-1)*(params(1)-1)*log(T(7))*T(193)+T(193)*(params(1)-1+params(1)-1-1);
T(195) = T(21)^(1+params(8)-2);
T(196) = T(23)^(1+params(8)-2);
T(197) = T(69)*T(70)*(T(98)+(1+params(8))*T(38)*T(98))+T(146)*T(39)+T(69)*T(70)*(T(98)+(1+params(8))*T(38)*T(98))+T(20)*(T(147)*(T(98)+(1+params(8))*T(38)*T(98))+T(70)*T(70)*((1+params(8)-1)*(1+params(8))*T(38)*T(195)+T(195)*(1+params(8)+1+params(8)-1)))+T(68)*T(72)*(T(99)+(1+params(8))*T(40)*T(99))+T(145)*T(41)+T(68)*T(72)*(T(99)+(1+params(8))*T(40)*T(99))+T(1)*(T(149)*(T(99)+(1+params(8))*T(40)*T(99))+T(72)*T(72)*((1+params(8)-1)*(1+params(8))*T(40)*T(196)+(1+params(8)+1+params(8)-1)*T(196)));
T(198) = T(25)^(T(26)-2);
T(199) = (T(43)*log(T(25))+T(42)*(T(26)-2)/T(25))*T(198);
T(200) = T(26)*T(199);
T(201) = (T(26)-1)*T(200)+T(198)*T(43)*(T(26)+T(26)-1);
T(202) = T(151)*T(103)+T(75)*T(197)+T(153)*T(100)+T(74)*(T(152)*T(100)+T(74)*T(201));
T(203) = (T(2)*T(69)+T(20)*T(74)*T(75))*T(20)*T(45)+T(20)*T(2)*(T(69)*T(45)+T(20)*T(104))+(T(2)*T(69)+T(20)*T(74)*T(75))*T(20)*T(45)+T(20)*T(2)*(T(69)*T(45)+T(20)*T(104));
T(204) = T(154)*T(56)+T(33)*(-(y(2)*(T(69)*T(104)+T(146)*T(45)+T(69)*T(104)+T(20)*T(202))))-((T(20)*T(2)*(T(2)*T(69)+T(20)*T(74)*T(75))+T(20)*T(2)*(T(2)*T(69)+T(20)*T(74)*T(75)))*(-(y(2)*(T(69)*T(45)+T(20)*T(104))))+T(76)*T(203));
T(205) = (T(33)*T(33)*T(204)-T(155)*T(124))/T(125);
T(206) = T(28)^(params(8)-2);
T(207) = (log(T(28))+T(46)*(params(8)-2)/T(28))*T(206);
T(208) = (params(8)-1)*params(8)*T(207)+T(206)*(params(8)+params(8)-1);
T(209) = T(69)*T(82)*(T(98)+(1+params(8))*T(38)*T(98))+T(20)*(T(68)/(T(20)*T(20))*(T(98)+(1+params(8))*T(38)*T(98))+T(70)*T(82)*((1+params(8)-1)*(1+params(8))*T(38)*T(195)+T(195)*(1+params(8)+1+params(8)-1)));
T(210) = T(157)*T(103)+T(75)*T(209)+T(83)*T(152)*T(100)+T(74)*(T(152)*T(109)+T(83)*T(201));
T(211) = T(20)*T(75)*T(83)*T(20)*T(45)+T(20)*T(2)*T(20)*T(110)+T(20)*T(75)*T(83)*T(20)*T(45)+T(20)*T(2)*T(20)*T(110);
T(212) = T(158)*T(56)+T(33)*(-(T(69)*T(45)+T(20)*T(104)+y(2)*(T(69)*T(110)+T(20)*T(210))))-(T(159)*(-(y(2)*(T(69)*T(45)+T(20)*T(104))))+T(76)*T(211));
T(213) = (T(33)*T(33)*T(212)-(T(33)*T(158)-T(76)*T(159))*T(124))/T(125);
T(214) = T(69)*T(90)*(T(98)+(1+params(8))*T(38)*T(98))+T(162)*T(39)+T(89)*T(70)*(T(98)+(1+params(8))*T(38)*T(98))+T(20)*(T(163)*(T(98)+(1+params(8))*T(38)*T(98))+T(70)*T(90)*((1+params(8)-1)*(1+params(8))*T(38)*T(195)+T(195)*(1+params(8)+1+params(8)-1)))+T(68)*T(91)*(T(99)+(1+params(8))*T(40)*T(99))+T(161)*T(41)+T(88)*T(72)*(T(99)+(1+params(8))*T(40)*T(99))+T(1)*(T(164)*(T(99)+(1+params(8))*T(40)*T(99))+T(72)*T(91)*((1+params(8)-1)*(1+params(8))*T(40)*T(196)+(1+params(8)+1+params(8)-1)*T(196)));
T(215) = T(165)*T(103)+T(75)*T(214)+T(92)*T(152)*T(100)+T(74)*(T(152)*T(112)+T(92)*T(201));
T(216) = (T(2)*T(89)+T(20)*T(75)*T(92))*T(20)*T(45)+T(20)*T(2)*(T(89)*T(45)+T(20)*T(113))+(T(2)*T(89)+T(20)*T(75)*T(92))*T(20)*T(45)+T(20)*T(2)*(T(89)*T(45)+T(20)*T(113));
T(217) = T(166)*T(56)+T(33)*(-(y(2)*(T(69)*T(113)+T(162)*T(45)+T(89)*T(104)+T(20)*T(215))))-(T(167)*(-(y(2)*(T(69)*T(45)+T(20)*T(104))))+T(76)*T(216));
T(218) = (T(33)*T(33)*T(217)-(T(33)*T(166)-T(76)*T(167))*T(124))/T(125);
T(219) = T(83)*T(152)*T(109)+T(83)*(T(152)*T(109)+T(83)*T(201))+T(20)*T(82)*T(82)*T(148)*T(103)+T(75)*T(20)*T(82)*T(82)*((1+params(8)-1)*(1+params(8))*T(38)*T(195)+T(195)*(1+params(8)+1+params(8)-1));
T(220) = T(168)*T(56)+T(33)*(T(20)*T(110)-(T(20)*T(110)+y(2)*T(20)*T(219)))-(T(159)*(T(20)*T(45)-y(2)*T(20)*T(110))+T(84)*T(211));
T(221) = (T(33)*T(33)*T(220)-T(169)*T(124))/T(125);
T(222) = T(89)*T(82)*(T(98)+(1+params(8))*T(38)*T(98))+T(20)*(T(82)*T(90)*((1+params(8)-1)*(1+params(8))*T(38)*T(195)+T(195)*(1+params(8)+1+params(8)-1))+T(88)/(T(20)*T(20))*(T(98)+(1+params(8))*T(38)*T(98)));
T(223) = T(92)*T(152)*T(109)+T(83)*(T(152)*T(112)+T(92)*T(201))+T(171)*T(103)+T(75)*T(222);
T(224) = T(33)*T(33)*(T(173)*T(56)+T(33)*(T(89)*T(45)+T(20)*T(113)-y(2)*(T(89)*T(110)+T(20)*T(223)))-(T(167)*(T(20)*T(45)-y(2)*T(20)*T(110))+T(84)*T(216)))-(T(33)*T(173)-T(84)*T(167))*T(124);
T(225) = T(224)/T(125);
T(226) = T(89)*T(90)*(T(98)+(1+params(8))*T(38)*T(98))+T(89)*T(90)*(T(98)+(1+params(8))*T(38)*T(98))+T(20)*(T(90)*T(90)*((1+params(8)-1)*(1+params(8))*T(38)*T(195)+T(195)*(1+params(8)+1+params(8)-1))+T(174)*(T(98)+(1+params(8))*T(38)*T(98)))+T(88)*T(91)*(T(99)+(1+params(8))*T(40)*T(99))+T(88)*T(91)*(T(99)+(1+params(8))*T(40)*T(99))+T(1)*(T(91)*T(91)*((1+params(8)-1)*(1+params(8))*T(40)*T(196)+(1+params(8)+1+params(8)-1)*T(196))+T(175)*(T(99)+(1+params(8))*T(40)*T(99)));
T(227) = T(92)*T(152)*T(112)+T(92)*(T(152)*T(112)+T(92)*T(201))+T(176)*T(103)+T(75)*T(226);
T(228) = T(177)*T(56)+T(33)*(-(y(2)*(T(89)*T(113)+T(89)*T(113)+T(20)*T(227))))-(T(167)*(-(y(2)*(T(89)*T(45)+T(20)*T(113))))+(-(y(2)*(T(2)*T(89)+T(20)*T(75)*T(92))))*T(216));
T(229) = (T(33)*T(33)*T(228)-(T(33)*T(177)-(-(y(2)*(T(2)*T(89)+T(20)*T(75)*T(92))))*T(167))*T(124))/T(125);
T(230) = (T(2)*T(68)+T(1)*T(74)*T(75))*T(1)*T(45)+T(1)*T(2)*(T(68)*T(45)+T(1)*T(104))+(T(2)*T(68)+T(1)*T(74)*T(75))*T(1)*T(45)+T(1)*T(2)*(T(68)*T(45)+T(1)*T(104));
T(231) = T(179)*T(57)+T(34)*(-(y(3)*(T(68)*T(104)+T(145)*T(45)+T(68)*T(104)+T(1)*T(202))))-((T(1)*T(2)*(T(2)*T(68)+T(1)*T(74)*T(75))+T(1)*T(2)*(T(2)*T(68)+T(1)*T(74)*T(75)))*(-(y(3)*(T(68)*T(45)+T(1)*T(104))))+T(79)*T(230));
T(232) = (T(55)*T(231)-T(180)*T(126))/(T(55)*T(55));
T(233) = T(30)^(params(8)-2);
T(234) = (log(T(30))+T(49)*(params(8)-2)/T(30))*T(233);
T(235) = (params(8)-1)*params(8)*T(234)+(params(8)+params(8)-1)*T(233);
T(236) = T(1)*T(75)*T(83)*T(1)*T(45)+T(1)*T(2)*T(1)*T(110)+T(1)*T(75)*T(83)*T(1)*T(45)+T(1)*T(2)*T(1)*T(110);
T(237) = (-(y(3)*(T(68)*T(75)*T(83)+T(1)*(T(75)*T(157)+T(74)*T(83)*T(152)))))*T(57)+T(34)*(-(y(3)*(T(68)*T(110)+T(1)*T(210))))-(T(182)*(-(y(3)*(T(68)*T(45)+T(1)*T(104))))+T(79)*T(236));
T(238) = (T(55)*T(237)-T(183)*T(126))/(T(55)*T(55));
T(239) = (T(2)*T(88)+T(1)*T(75)*T(92))*T(1)*T(45)+T(1)*T(2)*(T(88)*T(45)+T(1)*T(113))+(T(2)*T(88)+T(1)*T(75)*T(92))*T(1)*T(45)+T(1)*T(2)*(T(88)*T(45)+T(1)*T(113));
T(240) = T(184)*T(57)+T(34)*(-(T(68)*T(45)+T(1)*T(104)+y(3)*(T(68)*T(113)+T(161)*T(45)+T(88)*T(104)+T(1)*T(215))))-(T(185)*(-(y(3)*(T(68)*T(45)+T(1)*T(104))))+T(79)*T(239));
T(241) = (T(55)*T(240)-T(186)*T(126))/(T(55)*T(55));
T(242) = (-(y(3)*T(1)*(T(83)*T(83)*T(152)+T(75)*T(20)*T(82)*T(82)*T(148))))*T(57)+T(34)*(-(y(3)*T(1)*T(219)))-(T(182)*(-(y(3)*T(1)*T(110)))+(-(y(3)*T(1)*T(75)*T(83)))*T(236));
T(243) = (T(55)*T(242)-T(187)*T(126))/(T(55)*T(55));
T(244) = (-(T(1)*T(75)*T(83)+y(3)*(T(75)*T(83)*T(88)+T(1)*T(172))))*T(57)+T(34)*(-(T(1)*T(110)+y(3)*(T(88)*T(110)+T(1)*T(223))))-(T(185)*(-(y(3)*T(1)*T(110)))+(-(y(3)*T(1)*T(75)*T(83)))*T(239));
T(245) = (T(55)*T(244)-T(188)*T(126))/(T(55)*T(55));
T(246) = T(190)*T(57)+T(34)*(T(88)*T(45)+T(1)*T(113)-(T(88)*T(45)+T(1)*T(113)+y(3)*(T(88)*T(113)+T(88)*T(113)+T(1)*T(227))))-(T(185)*(T(1)*T(45)-y(3)*(T(88)*T(45)+T(1)*T(113)))+T(94)*T(239));
T(247) = (T(55)*T(246)-(T(34)*T(190)-T(94)*T(185))*T(126))/(T(55)*T(55));
T(248) = (y(2)-T(3))^((-params(10))-2);
T(249) = (y(2)-T(5))^((-params(10))-2);
T(250) = (1+params(8))*T(38)*T(195)+(1+params(8)-1)*(T(38)*T(195)+(1+params(8))*T(38)*T(38)*T(195))+T(38)*T(195)*(1+params(8)+1+params(8)-1)+2*T(195);
T(251) = (1+params(8))*T(40)*T(196)+(1+params(8)-1)*(T(40)*T(196)+(1+params(8))*T(40)*T(40)*T(196))+2*T(196)+(1+params(8)+1+params(8)-1)*T(40)*T(196);
T(252) = T(43)*T(200)+(T(26)-1)*(T(43)*T(199)+T(26)*(T(198)*(T(60)+(T(25)*(T(42)*T(43)+(T(26)-2)*(T(20)*T(38)*T(39)+T(1)*T(40)*T(41)))-T(42)*T(42)*(T(26)-2))/(T(25)*T(25)))+(T(43)*log(T(25))+T(42)*(T(26)-2)/T(25))*T(199)))+T(199)*T(43)*(T(26)+T(26)-1)+T(198)*((T(26)+T(26)-1)*T(59)+T(43)*(T(43)+T(43)));
T(253) = T(103)*T(197)+T(151)*T(129)+T(103)*T(197)+T(75)*(T(69)*T(70)*T(127)+T(146)*T(38)*T(39)+T(69)*T(70)*T(127)+T(20)*(T(147)*T(127)+T(70)*T(70)*T(250))+T(68)*T(72)*(T(40)*T(99)+T(40)*T(99)+(1+params(8))*T(40)*T(40)*T(99))+T(145)*T(40)*T(41)+T(68)*T(72)*(T(40)*T(99)+T(40)*T(99)+(1+params(8))*T(40)*T(40)*T(99))+T(1)*(T(149)*(T(40)*T(99)+T(40)*T(99)+(1+params(8))*T(40)*T(40)*T(99))+T(72)*T(72)*T(251)))+T(100)*(T(152)*T(100)+T(74)*T(201))+T(153)*T(128)+T(100)*(T(152)*T(100)+T(74)*T(201))+T(74)*(T(100)*T(201)+T(152)*T(128)+T(100)*T(201)+T(74)*T(252));
T(254) = T(20)*T(45)*(T(69)*T(45)+T(20)*T(104))+(T(2)*T(69)+T(20)*T(74)*T(75))*T(20)*T(61)+T(20)*T(45)*(T(69)*T(45)+T(20)*T(104))+T(20)*T(2)*(T(69)*T(61)+T(20)*T(130));
T(255) = T(56)*T(56)+T(33)*T(131)+T(56)*T(56)+T(33)*T(131);
T(256) = params(8)*T(207)+(params(8)-1)*(T(207)+params(8)*(T(206)*(T(46)/T(28)+(T(28)*(T(46)+(params(8)-2)*T(62))-T(46)*T(46)*(params(8)-2))/(T(28)*T(28)))+(log(T(28))+T(46)*(params(8)-2)/T(28))*T(207)))+T(207)*(params(8)+params(8)-1)+2*T(206);
T(257) = T(103)*T(209)+T(157)*T(129)+T(103)*T(209)+T(75)*(T(69)*T(82)*T(127)+T(20)*(T(68)/(T(20)*T(20))*T(127)+T(70)*T(82)*T(250)))+T(100)*(T(152)*T(109)+T(83)*T(201))+T(83)*T(152)*T(128)+T(100)*(T(152)*T(109)+T(83)*T(201))+T(74)*(T(109)*T(201)+T(152)*T(20)*T(82)*T(127)+T(109)*T(201)+T(83)*T(252));
T(258) = T(20)*T(45)*T(20)*T(110)+T(20)*T(75)*T(83)*T(20)*T(61)+T(20)*T(45)*T(20)*T(110)+T(20)*T(2)*T(20)*T(134)+T(20)*T(45)*T(20)*T(110)+T(20)*T(75)*T(83)*T(20)*T(61)+T(20)*T(45)*T(20)*T(110)+T(20)*T(2)*T(20)*T(134);
T(259) = T(112)*T(201)+T(152)*T(136)+T(112)*T(201)+T(92)*T(252);
T(260) = T(103)*T(214)+T(165)*T(129)+T(103)*T(214)+T(75)*(T(69)*T(90)*T(127)+T(162)*T(38)*T(39)+T(89)*T(70)*T(127)+T(20)*(T(163)*T(127)+T(70)*T(90)*T(250))+T(68)*T(91)*(T(40)*T(99)+T(40)*T(99)+(1+params(8))*T(40)*T(40)*T(99))+T(161)*T(40)*T(41)+T(88)*T(72)*(T(40)*T(99)+T(40)*T(99)+(1+params(8))*T(40)*T(40)*T(99))+T(1)*(T(164)*(T(40)*T(99)+T(40)*T(99)+(1+params(8))*T(40)*T(40)*T(99))+T(72)*T(91)*T(251)))+T(100)*(T(152)*T(112)+T(92)*T(201))+T(92)*T(152)*T(128)+T(100)*(T(152)*T(112)+T(92)*T(201))+T(74)*T(259);
T(261) = T(20)*T(45)*(T(89)*T(45)+T(20)*T(113))+(T(2)*T(89)+T(20)*T(75)*T(92))*T(20)*T(61)+T(20)*T(45)*(T(89)*T(45)+T(20)*T(113))+T(20)*T(2)*(T(89)*T(61)+T(20)*T(137));
T(262) = T(109)*(T(152)*T(109)+T(83)*T(201))+T(83)*T(152)*T(20)*T(82)*T(127)+T(109)*(T(152)*T(109)+T(83)*T(201))+T(83)*(T(109)*T(201)+T(152)*T(20)*T(82)*T(127)+T(109)*T(201)+T(83)*T(252))+T(103)*T(20)*T(82)*T(82)*((1+params(8)-1)*(1+params(8))*T(38)*T(195)+T(195)*(1+params(8)+1+params(8)-1))+T(20)*T(82)*T(82)*T(148)*T(129)+T(103)*T(20)*T(82)*T(82)*((1+params(8)-1)*(1+params(8))*T(38)*T(195)+T(195)*(1+params(8)+1+params(8)-1))+T(75)*T(20)*T(82)*T(82)*T(250);
T(263) = T(109)*(T(152)*T(112)+T(92)*T(201))+T(92)*T(152)*T(20)*T(82)*T(127)+T(109)*(T(152)*T(112)+T(92)*T(201))+T(83)*T(259)+T(103)*T(222)+T(171)*T(129)+T(103)*T(222)+T(75)*(T(89)*T(82)*T(127)+T(20)*(T(82)*T(90)*T(250)+T(88)/(T(20)*T(20))*T(127)));
T(264) = T(112)*(T(152)*T(112)+T(92)*T(201))+T(92)*T(152)*T(136)+T(112)*(T(152)*T(112)+T(92)*T(201))+T(92)*T(259)+T(103)*T(226)+T(176)*T(129)+T(103)*T(226)+T(75)*(T(89)*T(90)*T(127)+T(89)*T(90)*T(127)+T(20)*(T(90)*T(90)*T(250)+T(174)*T(127))+T(88)*T(91)*(T(40)*T(99)+T(40)*T(99)+(1+params(8))*T(40)*T(40)*T(99))+T(88)*T(91)*(T(40)*T(99)+T(40)*T(99)+(1+params(8))*T(40)*T(40)*T(99))+T(1)*(T(91)*T(91)*T(251)+T(175)*(T(40)*T(99)+T(40)*T(99)+(1+params(8))*T(40)*T(40)*T(99))));
T(265) = T(1)*T(45)*(T(68)*T(45)+T(1)*T(104))+(T(2)*T(68)+T(1)*T(74)*T(75))*T(1)*T(61)+T(1)*T(45)*(T(68)*T(45)+T(1)*T(104))+T(1)*T(2)*(T(68)*T(61)+T(1)*T(130));
T(266) = T(57)*T(57)+T(34)*T(139)+T(57)*T(57)+T(34)*T(139);
T(267) = params(8)*T(234)+(params(8)-1)*(T(234)+params(8)*(T(233)*(T(49)/T(30)+(T(30)*(T(49)+(params(8)-2)*T(64))-T(49)*T(49)*(params(8)-2))/(T(30)*T(30)))+(log(T(30))+T(49)*(params(8)-2)/T(30))*T(234)))+2*T(233)+(params(8)+params(8)-1)*T(234);
T(268) = T(1)*T(45)*T(1)*T(110)+T(1)*T(75)*T(83)*T(1)*T(61)+T(1)*T(45)*T(1)*T(110)+T(1)*T(2)*T(1)*T(134)+T(1)*T(45)*T(1)*T(110)+T(1)*T(75)*T(83)*T(1)*T(61)+T(1)*T(45)*T(1)*T(110)+T(1)*T(2)*T(1)*T(134);
T(269) = T(1)*T(45)*(T(88)*T(45)+T(1)*T(113))+(T(2)*T(88)+T(1)*T(75)*T(92))*T(1)*T(61)+T(1)*T(45)*(T(88)*T(45)+T(1)*T(113))+T(1)*T(2)*(T(88)*T(61)+T(1)*T(137));
rp = zeros(8, 10);
rp(1, 2) = (-(T(11)*T(37)));
rp(1, 8) = y(6)*T(48);
rp(1, 10) = (-((1-T(4))*T(52)+T(10)*T(54)));
rp(2, 2) = (-(T(17)*T(16)*y(7)*y(6)*T(37)));
rp(2, 8) = y(6)*T(51);
rp(3, 2) = (-((y(4)+y(7)*(1-params(3)))*y(6)*T(37)));
rp(3, 3) = (-(y(6)*T(10)*(-y(7))));
rp(4, 3) = y(5);
rp(5, 1) = (-(y(8)*T(35)));
rp(6, 1) = (-(y(8)*(T(32)+params(1)*T(32)*log(T(7)))));
rp(7, 8) = (-T(45));
rp(8, 6) = (-log(y(8)));
rp(8, 7) = (-x(1));
gp = zeros(8, 8, 10);
gp(1, 1, 8) = y(6)*(T(78)*T(105)+T(77)*T(108));
gp(1, 2, 2) = (-(T(86)*T(37)));
gp(1, 2, 8) = y(6)*(T(85)*T(108)+T(78)*T(111));
gp(1, 2, 10) = (-((1-T(4))*((-params(10))*(-log(y(2)-T(3)))*T(122)-T(122))+T(10)*(-T(6))*((-params(10))*(-log(y(2)-T(5)))*T(123)-T(123))));
gp(1, 3, 8) = y(6)*(T(93)*T(108)+T(78)*T(114));
gp(1, 6, 8) = T(48);
gp(2, 1, 8) = y(6)*(T(81)*T(116)+T(80)*T(119));
gp(2, 2, 8) = y(6)*(T(87)*T(119)+T(81)*T(120));
gp(2, 3, 8) = y(6)*(T(95)*T(119)+T(81)*T(121));
gp(2, 6, 2) = (-(T(17)*T(16)*y(7)*T(37)));
gp(2, 6, 8) = T(51);
gp(2, 7, 2) = (-(T(17)*T(16)*y(6)*T(37)));
gp(3, 4, 2) = (-(y(6)*T(37)));
gp(3, 6, 2) = (-((y(4)+y(7)*(1-params(3)))*T(37)));
gp(3, 6, 3) = (-(T(10)*(-y(7))));
gp(3, 7, 2) = (-((1-params(3))*y(6)*T(37)));
gp(3, 7, 3) = y(6)*T(10);
gp(4, 5, 3) = 1;
gp(5, 5, 1) = (-(y(8)*(T(32)+params(1)*T(32)*log(T(7)))));
gp(5, 8, 1) = (-T(35));
gp(6, 5, 1) = (-(y(8)*T(97)));
gp(6, 8, 1) = (-(T(32)+params(1)*T(32)*log(T(7))));
gp(7, 1, 8) = (-T(104));
gp(7, 2, 8) = (-T(110));
gp(7, 3, 8) = (-T(113));
gp(8, 8, 6) = (-(1/y(8)));
if nargout >= 3
rpp = zeros(11,4);
rpp(1,1)=1;
rpp(1,2)=2;
rpp(1,3)=2;
rpp(1,4)=(-(T(11)*T(58)));
rpp(2,1)=1;
rpp(2,2)=2;
rpp(2,3)=10;
rpp(2,4)=(-(T(37)*T(54)));
rpp(3,1)=1;
rpp(3,2)=10;
rpp(3,3)=2;
rpp(3,4)=rpp(2,4);
rpp(4,1)=1;
rpp(4,2)=8;
rpp(4,3)=8;
rpp(4,4)=y(6)*T(63);
rpp(5,1)=1;
rpp(5,2)=10;
rpp(5,3)=10;
rpp(5,4)=(-((1-T(4))*(-log(y(2)-T(3)))*T(52)+T(10)*(-T(6))*(-log(y(2)-T(5)))*T(53)));
rpp(6,1)=2;
rpp(6,2)=2;
rpp(6,3)=2;
rpp(6,4)=(-(T(17)*T(16)*y(7)*y(6)*T(58)));
rpp(7,1)=2;
rpp(7,2)=8;
rpp(7,3)=8;
rpp(7,4)=y(6)*T(65);
rpp(8,1)=3;
rpp(8,2)=2;
rpp(8,3)=2;
rpp(8,4)=(-((y(4)+y(7)*(1-params(3)))*y(6)*T(58)));
rpp(9,1)=3;
rpp(9,2)=2;
rpp(9,3)=3;
rpp(9,4)=(-(y(6)*T(37)*(-y(7))));
rpp(10,1)=3;
rpp(10,2)=3;
rpp(10,3)=2;
rpp(10,4)=rpp(9,4);
rpp(11,1)=5;
rpp(11,2)=1;
rpp(11,3)=1;
rpp(11,4)=(-(y(8)*log(T(7))*T(35)));
rpp(12,1)=6;
rpp(12,2)=1;
rpp(12,3)=1;
rpp(12,4)=T(67);
rpp(13,1)=7;
rpp(13,2)=8;
rpp(13,3)=8;
rpp(13,4)=(-T(61));
gpp = zeros(25,5);
gpp(1,1)=1;
gpp(1,2)=1;
gpp(1,3)=8;
gpp(1,4)=8;
gpp(1,5)=y(6)*(T(105)*T(108)+T(78)*T(132)+T(105)*T(108)+T(77)*T(133));
gpp(2,1)=1;
gpp(2,2)=2;
gpp(2,3)=2;
gpp(2,4)=2;
gpp(2,5)=(-(T(86)*T(58)));
gpp(3,1)=1;
gpp(3,2)=2;
gpp(3,3)=2;
gpp(3,4)=10;
gpp(3,5)=(-(T(37)*(-T(6))*((-params(10))*(-log(y(2)-T(5)))*T(123)-T(123))));
gpp(4,1)=1;
gpp(4,2)=2;
gpp(4,3)=10;
gpp(4,4)=2;
gpp(4,5)=gpp(3,5);
gpp(5,1)=1;
gpp(5,2)=2;
gpp(5,3)=8;
gpp(5,4)=8;
gpp(5,5)=y(6)*(T(108)*T(111)+T(85)*T(133)+T(108)*T(111)+T(78)*T(135));
gpp(6,1)=1;
gpp(6,2)=2;
gpp(6,3)=10;
gpp(6,4)=10;
gpp(6,5)=(-((1-T(4))*((-params(10))*(-log(y(2)-T(3)))*(-log(y(2)-T(3)))*T(122)-(-log(y(2)-T(3)))*T(122)-(-log(y(2)-T(3)))*T(122))+T(10)*(-T(6))*((-params(10))*(-log(y(2)-T(5)))*(-log(y(2)-T(5)))*T(123)-(-log(y(2)-T(5)))*T(123)-(-log(y(2)-T(5)))*T(123))));
gpp(7,1)=1;
gpp(7,2)=3;
gpp(7,3)=8;
gpp(7,4)=8;
gpp(7,5)=y(6)*(T(108)*T(114)+T(93)*T(133)+T(108)*T(114)+T(78)*T(138));
gpp(8,1)=1;
gpp(8,2)=6;
gpp(8,3)=8;
gpp(8,4)=8;
gpp(8,5)=T(63);
gpp(9,1)=2;
gpp(9,2)=1;
gpp(9,3)=8;
gpp(9,4)=8;
gpp(9,5)=y(6)*(T(116)*T(119)+T(81)*T(140)+T(116)*T(119)+T(80)*T(141));
gpp(10,1)=2;
gpp(10,2)=2;
gpp(10,3)=8;
gpp(10,4)=8;
gpp(10,5)=y(6)*(T(119)*T(120)+T(87)*T(141)+T(119)*T(120)+T(81)*T(142));
gpp(11,1)=2;
gpp(11,2)=3;
gpp(11,3)=8;
gpp(11,4)=8;
gpp(11,5)=y(6)*(T(119)*T(121)+T(95)*T(141)+T(119)*T(121)+T(81)*T(143));
gpp(12,1)=2;
gpp(12,2)=6;
gpp(12,3)=2;
gpp(12,4)=2;
gpp(12,5)=(-(T(17)*T(16)*y(7)*T(58)));
gpp(13,1)=2;
gpp(13,2)=6;
gpp(13,3)=8;
gpp(13,4)=8;
gpp(13,5)=T(65);
gpp(14,1)=2;
gpp(14,2)=7;
gpp(14,3)=2;
gpp(14,4)=2;
gpp(14,5)=(-(T(17)*T(16)*y(6)*T(58)));
gpp(15,1)=3;
gpp(15,2)=4;
gpp(15,3)=2;
gpp(15,4)=2;
gpp(15,5)=(-(y(6)*T(58)));
gpp(16,1)=3;
gpp(16,2)=6;
gpp(16,3)=2;
gpp(16,4)=2;
gpp(16,5)=(-((y(4)+y(7)*(1-params(3)))*T(58)));
gpp(17,1)=3;
gpp(17,2)=6;
gpp(17,3)=2;
gpp(17,4)=3;
gpp(17,5)=(-(T(37)*(-y(7))));
gpp(18,1)=3;
gpp(18,2)=6;
gpp(18,3)=3;
gpp(18,4)=2;
gpp(18,5)=gpp(17,5);
gpp(19,1)=3;
gpp(19,2)=7;
gpp(19,3)=2;
gpp(19,4)=2;
gpp(19,5)=(-((1-params(3))*y(6)*T(58)));
gpp(20,1)=3;
gpp(20,2)=7;
gpp(20,3)=2;
gpp(20,4)=3;
gpp(20,5)=y(6)*T(37);
gpp(21,1)=3;
gpp(21,2)=7;
gpp(21,3)=3;
gpp(21,4)=2;
gpp(21,5)=gpp(20,5);
gpp(22,1)=5;
gpp(22,2)=5;
gpp(22,3)=1;
gpp(22,4)=1;
gpp(22,5)=T(67);
gpp(23,1)=5;
gpp(23,2)=8;
gpp(23,3)=1;
gpp(23,4)=1;
gpp(23,5)=(-(log(T(7))*T(35)));
gpp(24,1)=6;
gpp(24,2)=5;
gpp(24,3)=1;
gpp(24,4)=1;
gpp(24,5)=(-(y(8)*T(144)));
gpp(25,1)=6;
gpp(25,2)=8;
gpp(25,3)=1;
gpp(25,4)=1;
gpp(25,5)=(-T(66));
gpp(26,1)=7;
gpp(26,2)=1;
gpp(26,3)=8;
gpp(26,4)=8;
gpp(26,5)=(-T(130));
gpp(27,1)=7;
gpp(27,2)=2;
gpp(27,3)=8;
gpp(27,4)=8;
gpp(27,5)=(-T(134));
gpp(28,1)=7;
gpp(28,2)=3;
gpp(28,3)=8;
gpp(28,4)=8;
gpp(28,5)=(-T(137));
end
if nargout >= 5
hp = zeros(35,5);
hp(1,1)=1;
hp(1,2)=1;
hp(1,3)=1;
hp(1,4)=8;
hp(1,5)=y(6)*(T(155)/(T(33)*T(33))*T(108)+T(78)*T(205)+T(77)*T(156)*T(105)+T(77)*(T(156)*T(105)+T(77)*T(208)));
hp(2,1)=1;
hp(2,2)=1;
hp(2,3)=2;
hp(2,4)=8;
hp(2,5)=y(6)*(T(160)*T(108)+T(78)*T(213)+T(85)*T(156)*T(105)+T(77)*(T(156)*T(111)+T(85)*T(208)));
hp(3,1)=1;
hp(3,2)=2;
hp(3,3)=1;
hp(3,4)=8;
hp(3,5)=hp(2,5);
hp(4,1)=1;
hp(4,2)=1;
hp(4,3)=3;
hp(4,4)=8;
hp(4,5)=y(6)*((T(33)*T(166)-T(76)*T(167))/(T(33)*T(33))*T(108)+T(78)*T(218)+T(93)*T(156)*T(105)+T(77)*(T(156)*T(114)+T(93)*T(208)));
hp(5,1)=1;
hp(5,2)=3;
hp(5,3)=1;
hp(5,4)=8;
hp(5,5)=hp(4,5);
hp(6,1)=1;
hp(6,2)=1;
hp(6,3)=6;
hp(6,4)=8;
hp(6,5)=T(78)*T(105)+T(77)*T(108);
hp(7,1)=1;
hp(7,2)=6;
hp(7,3)=1;
hp(7,4)=8;
hp(7,5)=hp(6,5);
hp(8,1)=1;
hp(8,2)=2;
hp(8,3)=2;
hp(8,4)=2;
hp(8,5)=(-(T(170)*T(37)));
hp(9,1)=1;
hp(9,2)=2;
hp(9,3)=2;
hp(9,4)=8;
hp(9,5)=y(6)*(T(85)*T(156)*T(111)+T(85)*(T(156)*T(111)+T(85)*T(208))+T(169)/(T(33)*T(33))*T(108)+T(78)*T(221));
hp(10,1)=1;
hp(10,2)=2;
hp(10,3)=2;
hp(10,4)=10;
hp(10,5)=(-((1-T(4))*(((-params(10))-1)*(-params(10))*(-log(y(2)-T(3)))*T(248)+T(248)*(-((-params(10))-1-params(10))))+T(10)*(-T(6))*(((-params(10))-1)*(-params(10))*(-log(y(2)-T(5)))*T(249)+(-((-params(10))-1-params(10)))*T(249))));
hp(11,1)=1;
hp(11,2)=2;
hp(11,3)=3;
hp(11,4)=8;
hp(11,5)=y(6)*(T(93)*T(156)*T(111)+T(85)*(T(156)*T(114)+T(93)*T(208))+(T(33)*T(173)-T(84)*T(167))/(T(33)*T(33))*T(108)+T(78)*T(225));
hp(12,1)=1;
hp(12,2)=3;
hp(12,3)=2;
hp(12,4)=8;
hp(12,5)=hp(11,5);
hp(13,1)=1;
hp(13,2)=2;
hp(13,3)=6;
hp(13,4)=8;
hp(13,5)=T(85)*T(108)+T(78)*T(111);
hp(14,1)=1;
hp(14,2)=6;
hp(14,3)=2;
hp(14,4)=8;
hp(14,5)=hp(13,5);
hp(15,1)=1;
hp(15,2)=3;
hp(15,3)=3;
hp(15,4)=8;
hp(15,5)=y(6)*(T(93)*T(156)*T(114)+T(93)*(T(156)*T(114)+T(93)*T(208))+T(178)*T(108)+T(78)*T(229));
hp(16,1)=1;
hp(16,2)=3;
hp(16,3)=6;
hp(16,4)=8;
hp(16,5)=T(93)*T(108)+T(78)*T(114);
hp(17,1)=1;
hp(17,2)=6;
hp(17,3)=3;
hp(17,4)=8;
hp(17,5)=hp(16,5);
hp(18,1)=2;
hp(18,2)=1;
hp(18,3)=1;
hp(18,4)=8;
hp(18,5)=y(6)*(T(180)/T(55)*T(119)+T(81)*T(232)+T(80)*T(181)*T(116)+T(80)*(T(181)*T(116)+T(80)*T(235)));
hp(19,1)=2;
hp(19,2)=1;
hp(19,3)=2;
hp(19,4)=8;
hp(19,5)=y(6)*(T(183)/T(55)*T(119)+T(81)*T(238)+T(87)*T(181)*T(116)+T(80)*(T(181)*T(120)+T(87)*T(235)));
hp(20,1)=2;
hp(20,2)=2;
hp(20,3)=1;
hp(20,4)=8;
hp(20,5)=hp(19,5);
hp(21,1)=2;
hp(21,2)=1;
hp(21,3)=3;
hp(21,4)=8;
hp(21,5)=y(6)*(T(186)/T(55)*T(119)+T(81)*T(241)+T(95)*T(181)*T(116)+T(80)*(T(181)*T(121)+T(95)*T(235)));
hp(22,1)=2;
hp(22,2)=3;
hp(22,3)=1;
hp(22,4)=8;
hp(22,5)=hp(21,5);
hp(23,1)=2;
hp(23,2)=1;
hp(23,3)=6;
hp(23,4)=8;
hp(23,5)=T(81)*T(116)+T(80)*T(119);
hp(24,1)=2;
hp(24,2)=6;
hp(24,3)=1;
hp(24,4)=8;
hp(24,5)=hp(23,5);
hp(25,1)=2;
hp(25,2)=2;
hp(25,3)=2;
hp(25,4)=8;
hp(25,5)=y(6)*(T(87)*T(181)*T(120)+T(87)*(T(181)*T(120)+T(87)*T(235))+T(187)/T(55)*T(119)+T(81)*T(243));
hp(26,1)=2;
hp(26,2)=2;
hp(26,3)=3;
hp(26,4)=8;
hp(26,5)=y(6)*(T(95)*T(181)*T(120)+T(87)*(T(181)*T(121)+T(95)*T(235))+T(189)*T(119)+T(81)*T(245));
hp(27,1)=2;
hp(27,2)=3;
hp(27,3)=2;
hp(27,4)=8;
hp(27,5)=hp(26,5);
hp(28,1)=2;
hp(28,2)=2;
hp(28,3)=6;
hp(28,4)=8;
hp(28,5)=T(87)*T(119)+T(81)*T(120);
hp(29,1)=2;
hp(29,2)=6;
hp(29,3)=2;
hp(29,4)=8;
hp(29,5)=hp(28,5);
hp(30,1)=2;
hp(30,2)=3;
hp(30,3)=3;
hp(30,4)=8;
hp(30,5)=y(6)*(T(95)*T(181)*T(121)+T(95)*(T(181)*T(121)+T(95)*T(235))+T(191)*T(119)+T(81)*T(247));
hp(31,1)=2;
hp(31,2)=3;
hp(31,3)=6;
hp(31,4)=8;
hp(31,5)=T(95)*T(119)+T(81)*T(121);
hp(32,1)=2;
hp(32,2)=6;
hp(32,3)=3;
hp(32,4)=8;
hp(32,5)=hp(31,5);
hp(33,1)=2;
hp(33,2)=6;
hp(33,3)=7;
hp(33,4)=2;
hp(33,5)=(-(T(17)*T(16)*T(37)));
hp(34,1)=2;
hp(34,2)=7;
hp(34,3)=6;
hp(34,4)=2;
hp(34,5)=hp(33,5);
hp(35,1)=3;
hp(35,2)=4;
hp(35,3)=6;
hp(35,4)=2;
hp(35,5)=(-T(37));
hp(36,1)=3;
hp(36,2)=6;
hp(36,3)=4;
hp(36,4)=2;
hp(36,5)=hp(35,5);
hp(37,1)=3;
hp(37,2)=6;
hp(37,3)=7;
hp(37,4)=2;
hp(37,5)=(-((1-params(3))*T(37)));
hp(38,1)=3;
hp(38,2)=7;
hp(38,3)=6;
hp(38,4)=2;
hp(38,5)=hp(37,5);
hp(39,1)=3;
hp(39,2)=6;
hp(39,3)=7;
hp(39,4)=3;
hp(39,5)=T(10);
hp(40,1)=3;
hp(40,2)=7;
hp(40,3)=6;
hp(40,4)=3;
hp(40,5)=hp(39,5);
hp(41,1)=5;
hp(41,2)=5;
hp(41,3)=5;
hp(41,4)=1;
hp(41,5)=(-(y(8)*((params(1)-1)*params(1)*log(T(7))*T(192)+T(192)*(params(1)+params(1)-1))));
hp(42,1)=5;
hp(42,2)=5;
hp(42,3)=8;
hp(42,4)=1;
hp(42,5)=(-(T(32)+params(1)*T(32)*log(T(7))));
hp(43,1)=5;
hp(43,2)=8;
hp(43,3)=5;
hp(43,4)=1;
hp(43,5)=hp(42,5);
hp(44,1)=6;
hp(44,2)=5;
hp(44,3)=5;
hp(44,4)=1;
hp(44,5)=(-(y(8)*(getPowerDeriv(T(7),params(1)-1,2)+params(1)*T(194))));
hp(45,1)=6;
hp(45,2)=5;
hp(45,3)=8;
hp(45,4)=1;
hp(45,5)=(-T(97));
hp(46,1)=6;
hp(46,2)=8;
hp(46,3)=5;
hp(46,4)=1;
hp(46,5)=hp(45,5);
hp(47,1)=7;
hp(47,2)=1;
hp(47,3)=1;
hp(47,4)=8;
hp(47,5)=(-T(202));
hp(48,1)=7;
hp(48,2)=1;
hp(48,3)=2;
hp(48,4)=8;
hp(48,5)=(-T(210));
hp(49,1)=7;
hp(49,2)=2;
hp(49,3)=1;
hp(49,4)=8;
hp(49,5)=hp(48,5);
hp(50,1)=7;
hp(50,2)=1;
hp(50,3)=3;
hp(50,4)=8;
hp(50,5)=(-T(215));
hp(51,1)=7;
hp(51,2)=3;
hp(51,3)=1;
hp(51,4)=8;
hp(51,5)=hp(50,5);
hp(52,1)=7;
hp(52,2)=2;
hp(52,3)=2;
hp(52,4)=8;
hp(52,5)=(-T(219));
hp(53,1)=7;
hp(53,2)=2;
hp(53,3)=3;
hp(53,4)=8;
hp(53,5)=(-T(223));
hp(54,1)=7;
hp(54,2)=3;
hp(54,3)=2;
hp(54,4)=8;
hp(54,5)=hp(53,5);
hp(55,1)=7;
hp(55,2)=3;
hp(55,3)=3;
hp(55,4)=8;
hp(55,5)=(-T(227));
hp(56,1)=8;
hp(56,2)=8;
hp(56,3)=8;
hp(56,4)=6;
hp(56,5)=(-((-1)/(y(8)*y(8))));
end
end
