//
// Copyright (c) 2013 by 1801BM1@gmail.com
//______________________________________________________________________________
//
`timescale 1ns / 100ps

module vp_037
(
   input       PIN_CLK,       //
   input       PIN_R,         //
   input       PIN_C,         //
                              //
   inout[15:0] PIN_nAD,       // Address/Data inverted bus
   input       PIN_nSYNC,     //
   input       PIN_nDIN,      //
   input       PIN_nDOUT,     //
   input       PIN_nWTBT,     //
   output      PIN_nRPLY,     //
                              //
   output[6:0] PIN_A,         //
   output[1:0] PIN_nCAS,      //
   output      PIN_nRAS,      //
   output      PIN_nWE,       //
                              //
   output      PIN_nE,        //
   output      PIN_nBS,       //
   output      PIN_WTI,       //
   output      PIN_WTD,       //
   output      PIN_nVSYNC     //
);

//______________________________________________________________________________
//
// Autogenerated netlist
//
wire GND = 1'b0;

wire nRA1;
wire nRA3;
wire nRA4;
wire nRA5;
wire nRA6;

wire RWR;
wire nROE;
wire nNVA1;
wire nNVA2;
wire nVA10;

wire nPC1;
wire nALOAD;
wire PC1;
wire PC2;
wire nNPC0;
wire nNPC2;
wire nPC2;
wire VA11;

wire nL0;
wire nL1;
wire nL2;
wire nL3;
wire L4;
wire L5;
wire FREEZ;

wire nVA3;
wire nVA4;
wire nVA5;
wire nVA6;

wire DOUT;
wire nRASEL;
wire DIN;
wire VA10;
wire nRA7;
wire VA4;
wire nVA11;
wire VA5;
wire nVA12;
wire RPLY;
wire nA6;
wire nA14;
wire nVASEL;
wire nA0;
wire A5;
wire VA6;
wire nAMUXSEL;
wire VA3;
wire nVA2;
wire VA1;
wire nL4;
wire nVA7;
wire VA12;
wire nCLK;
wire RESET;
wire nL5;
wire nRA2;
wire nNVA4;
wire A2;
wire nA1;
wire A0;
wire nVA8;
wire nVA9;
wire nNVA5;
wire nVGATE;
wire RASEL;
wire nDOUT;
wire CAS;
wire nDINOUT;
wire nWTBT;
wire PC0;
wire nL6;
wire NPC1;
wire SYNC2;
wire M256;
wire nPC190;
wire nNPC1;
wire nPC0;
wire nHGATE;
wire L2;
wire L1;
wire L0;
wire NPC2;
wire L3;
wire nA9;
wire nA15;
wire VA2;
wire nTV51;
wire nRA0;
wire nA5;
wire A4;
wire nA13;
wire nVA13;
wire nTV52;
wire nA2;
wire A1;
wire nA10;
wire nL7;
wire VGATE;
wire nM256;
wire VA7;
wire SYNC5;
wire nA7;
wire A15;
wire nA12;
wire nA4;
wire A3;
wire PC190;
wire nA8;
wire nA11;
wire A6;
wire CLKIN;
wire nNVA3;
wire VA8;
wire VA9;
wire HGATE;
wire nVA1;
wire VA13;
wire nA3;
wire nSYNC;

wire NET00000;
wire NET00001;
wire NET00002;
wire NET00003;
wire NET00004;
wire NET00260;
wire NET00006;
wire NET00007;
wire NET00009;
wire NET00438;
wire NET00013;
wire NET00014;
wire NET00015;
wire NET00016;
wire NET00017;
wire NET00022;
wire NET00024;
wire NET00025;
wire NET00026;
wire NET00027;
wire NET00030;
wire NET00032;
wire NET00033;
wire NET00034;
wire NET00035;
wire NET00207;
wire NET00038;
wire NET00041;
wire NET00042;
wire NET00043;
wire NET00044;
wire NET00045;
wire NET00046;
wire NET00048;
wire NET00053;
wire NET00055;
wire NET00057;
wire NET00058;
wire NET00059;
wire NET00065;
wire NET00070;
wire NET00071;
wire NET00073;
wire NET00075;
wire NET00076;
wire NET00077;
wire NET00081;
wire NET00082;
wire NET00084;
wire NET00085;
wire NET00086;
wire NET00090;
wire NET00011;
wire NET00093;
wire NET00037;
wire NET00096;
wire NET00097;
wire NET00098;
wire NET00099;
wire NET00100;
wire NET00102;
wire NET00103;
wire NET00109;
wire NET00110;
wire NET00111;
wire NET00114;
wire NET00115;
wire NET00116;
wire NET00117;
wire NET00118;
wire NET00119;
wire NET00121;
wire NET00122;
wire NET00123;
wire NET00124;
wire NET00127;
wire NET00128;
wire NET00129;
wire NET00130;
wire NET00131;
wire NET00134;
wire NET00135;
wire NET00136;
wire NET00137;
wire NET00139;
wire NET00140;
wire NET00141;
wire NET00143;
wire NET00144;
wire NET00146;
wire NET00150;
wire NET00151;
wire NET00152;
wire NET00153;
wire NET00155;
wire NET00157;
wire NET00158;
wire NET00159;
wire NET00161;
wire NET00162;
wire NET00164;
wire NET00165;
wire NET00170;
wire NET00171;
wire NET00172;
wire NET00173;
wire NET00174;
wire NET00175;
wire NET00176;
wire NET00177;
wire NET00178;
wire NET00179;
wire NET00180;
wire NET00181;
wire NET00182;
wire NET00183;
wire NET00184;
wire NET00186;
wire NET00187;
wire NET00188;
wire NET00189;
wire NET00191;
wire NET00193;
wire NET00194;
wire NET00196;
wire NET00197;
wire NET00201;
wire NET00202;
wire NET00206;
wire NET00208;
wire NET00209;
wire NET00210;
wire NET00212;
wire NET00214;
wire NET00215;
wire NET00216;
wire NET00217;
wire NET00222;
wire NET00223;
wire NET00224;
wire NET00225;
wire NET00227;
wire NET00228;
wire NET00229;
wire NET00230;
wire NET00232;
wire NET00233;
wire NET00234;
wire NET00235;
wire NET00236;
wire NET00237;
wire NET00238;
wire NET00239;
wire NET00240;
wire NET00241;
wire NET00242;
wire NET00244;
wire NET00245;
wire NET00249;
wire NET00254;
wire NET00255;
wire NET00256;
wire NET00257;
wire NET00259;
wire NET00262;
wire NET00266;
wire NET00267;
wire NET00268;
wire NET00271;
wire NET00273;
wire NET00274;
wire NET00275;
wire NET00278;
wire NET00281;
wire NET00282;
wire NET00283;
wire NET00284;
wire NET00285;
wire NET00286;
wire NET00287;
wire NET00288;
wire NET00289;
wire NET00290;
wire NET00291;
wire NET00296;
wire NET00297;
wire NET00298;
wire NET00299;
wire NET00322;
wire NET00411;
wire NET00304;
wire NET00305;
wire NET00306;
wire NET00307;
wire NET00308;
wire NET00310;
wire NET00311;
wire NET00312;
wire NET00313;
wire NET00314;
wire NET00315;
wire NET00316;
wire NET00317;
wire NET00318;
wire NET00319;
wire NET00320;
wire NET00321;
wire NET00323;
wire NET00324;
wire NET00326;
wire NET00328;
wire NET00329;
wire NET00330;
wire NET00332;
wire NET00333;
wire NET00336;
wire NET00337;
wire NET00338;
wire NET00339;
wire NET00340;
wire NET00341;
wire NET00342;
wire NET00343;
wire NET00344;
wire NET00345;
wire NET00346;
wire NET00347;
wire NET00348;
wire NET00351;
wire NET00354;
wire NET00355;
wire NET00357;
wire NET00358;
wire NET00360;
wire NET00361;
wire NET00362;
wire NET00364;
wire NET00365;
wire NET00366;
wire NET00367;
wire NET00371;
wire NET00372;
wire NET00373;
wire NET00375;
wire NET00376;
wire NET00377;
wire NET00378;
wire NET00379;
wire NET00381;
wire NET00382;
wire NET00383;
wire NET00384;
wire NET00385;
wire NET00386;
wire NET00387;
wire NET00390;
wire NET00391;
wire NET00392;
wire NET00393;
wire NET00394;
wire NET00396;
wire NET00397;
wire NET00399;
wire NET00400;
wire NET00402;
wire NET00405;
wire NET00406;
wire NET00407;
wire NET00409;
wire NET00412;
wire NET00413;
wire NET00417;
wire NET00419;
wire NET00421;
wire NET00422;
wire NET00425;
wire NET00426;
wire NET00428;
wire NET00429;
wire NET00430;
wire NET00431;
wire NET00432;
wire NET00433;
wire NET00434;
wire NET00435;
wire NET00436;


//______________________________________________________________________________
//
// t428 cell_E16(.x2(NET00109), .y3(nALOAD));
//
// R input will load the address counter for simulation purposes
//
t428 cell_E16(.x2(NET00109 & ~(RESET & RWR)), .y3(nALOAD));

//______________________________________________________________________________
//
// Autogenerated cell instantiations
//
tOUTPUT_OE  cell_PIN2_OUT( .x1(nRA0),  .x2(nROE), .y1(PIN_nAD[0]));
tOUTPUT_OE  cell_PIN3_OUT( .x1(nRA1),  .x2(nROE), .y1(PIN_nAD[1]));
tOUTPUT_OE  cell_PIN4_OUT( .x1(nRA2),  .x2(nROE), .y1(PIN_nAD[2]));
tOUTPUT_OE  cell_PIN5_OUT( .x1(nRA3),  .x2(nROE), .y1(PIN_nAD[3]));
tOUTPUT_OE  cell_PIN6_OUT( .x1(nRA4),  .x2(nROE), .y1(PIN_nAD[4]));
tOUTPUT_OE  cell_PIN7_OUT( .x1(nRA5),  .x2(nROE), .y1(PIN_nAD[5]));
tOUTPUT_OE  cell_PIN8_OUT( .x1(nRA6),  .x2(nROE), .y1(PIN_nAD[6]));
tOUTPUT_OE  cell_PIN9_OUT( .x1(nRA7),  .x2(nROE), .y1(PIN_nAD[7]));
tOUTPUT_OE  cell_PIN11_OUT(.x1(nM256), .x2(nROE), .y1(PIN_nAD[9]));
tOUTPUT_OE  cell_PIN17_OUT(.x1(GND),   .x2(NET00244), .y1(PIN_nAD[15]));

tINPUT      cell_PIN2(  .y2(NET00146), .x1(PIN_nAD[0]));
tINPUT      cell_PIN3(  .y2(NET00131), .x1(PIN_nAD[1]));
tINPUT      cell_PIN4(  .y2(NET00358), .x1(PIN_nAD[2]));
tINPUT      cell_PIN5(  .y2(NET00351), .x1(PIN_nAD[3]));
tINPUT      cell_PIN6(  .y2(NET00009), .x1(PIN_nAD[4]));
tINPUT      cell_PIN7(  .y2(NET00093), .x1(PIN_nAD[5]));
tINPUT      cell_PIN8(  .y2(NET00417), .x1(PIN_nAD[6]));
tINPUT      cell_PIN9(  .y2(NET00212), .x1(PIN_nAD[7]));
tINPUT      cell_PIN10( .y2(NET00278), .x1(PIN_nAD[8]));
tINPUT      cell_PIN11( .y2(NET00360), .x1(PIN_nAD[9]));
tINPUT      cell_PIN12( .y2(NET00348), .x1(PIN_nAD[10]));
tINPUT      cell_PIN13( .y2(NET00262), .x1(PIN_nAD[11]));
tINPUT      cell_PIN14( .y2(NET00090), .x1(PIN_nAD[12]));
tINPUT      cell_PIN15( .y2(NET00357), .x1(PIN_nAD[13]));
tINPUT      cell_PIN16( .y2(NET00249), .x1(PIN_nAD[14]));
tINPUT      cell_PIN17( .y2(NET00333), .x1(PIN_nAD[15]));

tINPUT      cell_PIN33( .y1(CLKIN),    .x1(PIN_CLK));
tINPUT      cell_PIN26( .y2(NET00275), .x1(PIN_R));
tINPUT      cell_PIN27( .y2(NET00224), .x1(PIN_C));
tINPUT      cell_PIN1(  .y2(NET00419), .x1(PIN_nSYNC));
tINPUT      cell_PIN39( .y2(NET00130), .x1(PIN_nWTBT));
tINPUT      cell_PIN40( .y2(NET00055), .x1(PIN_nDOUT));
tINPUT      cell_PIN41( .y2(NET00065), .x1(PIN_nDIN));

tOUTPUT_OC  cell_PIN34(.x1(NET00111),  .y1(PIN_nRPLY));
tOUTPUT     cell_PIN37(.x1(NET00116),  .y1(PIN_nE));
tOUTPUT     cell_PIN38(.x1(NET00129),  .y1(PIN_nBS));
tOUTPUT     cell_PIN31(.x1(NET00118),  .y1(PIN_WTI));
tOUTPUT     cell_PIN29(.x1(NET00285),  .y1(PIN_WTD));
tOUTPUT     cell_PIN18(.x1(NET00283),  .y1(PIN_A[0]));
tOUTPUT     cell_PIN19(.x1(NET00371),  .y1(PIN_A[1]));
tOUTPUT     cell_PIN20(.x1(NET00281),  .y1(PIN_A[2]));
tOUTPUT     cell_PIN22(.x1(NET00268),  .y1(PIN_A[3]));
tOUTPUT     cell_PIN23(.x1(NET00085),  .y1(PIN_A[4]));
tOUTPUT     cell_PIN24(.x1(NET00037),  .y1(PIN_A[5]));
tOUTPUT     cell_PIN25(.x1(NET00255),  .y1(PIN_A[6]));
tOUTPUT     cell_PIN32(.x1(NET00119),  .y1(PIN_nRAS));
tOUTPUT     cell_PIN36(.x1(NET00115),  .y1(PIN_nCAS[0]));
tOUTPUT     cell_PIN35(.x1(NET00114),  .y1(PIN_nCAS[1]));
tOUTPUT     cell_PIN30(.x1(NET00117),  .y1(PIN_nWE));
tOUTPUT     cell_PIN28(.x1(NET00202),  .y1(PIN_nVSYNC));

t370 cell_D17(.y2(NET00170), .x5(nL5));
t416 cell_A5(.c1(nSYNC), .q3(nA15), .q4(A15), .d5(NET00333));
t383 cell_B5(.x1(nA14), .y2(NET00373), .x3(nA15), .x4(nA12), .x5(nA11), .x6(nA13));
t419 cell_H2(.x1(nA4), .y2(NET00266), .x4(nRASEL), .x5(NET00086), .x6(nA11), .x10(NET00082));
t373 cell_G3(.x1(NET00084), .x3(NET00081), .y4(NET00085));
t379 cell_D9(.x1(NET00257), .y2(NET00070), .x3(NET00073), .y4(NET00071), .x5(NET00075), .x6(VA12), .x8(NET00070));
t376 cell_C11(.x1(nALOAD), .x3(nRA7), .y4(NET00176), .x6(NET00174), .x8(NET00175), .y9(NET00173));
t390 cell_D37(.x1(RPLY), .y4(NET00381), .x5(DIN), .x6(nVASEL), .y9(NET00117), .x10(DOUT));
t370 cell_D39(.y2(NET00285), .x5(NET00381));
t379 cell_F15(.x1(NET00043), .y2(NET00048), .x3(nL4), .y4(nL4), .x5(RESET), .x6(NET00048), .x8(NET00046));
t379 cell_F16(.x1(NET00043), .y2(NET00046), .x3(NET00042), .y4(NET00042), .x5(NET00045), .x6(NET00046), .x8(nL4));
t370 cell_G34(.y2(NET00329), .x5(NET00326));
t402 cell_G39(.r1(nVASEL), .q4(NET00322), .s6(nPC2));
t379 cell_I8(.x1(NET00344), .y2(NET00347), .x3(NET00346), .y4(NET00346), .x5(NET00345), .x6(NET00343), .x8(nALOAD));
t376 cell_I9(.x1(nALOAD), .x3(nRA2), .y4(NET00343), .x6(NET00341), .x8(NET00342), .y9(NET00344));
t383 cell_J27(.x1(nVA2), .y2(NET00121), .x3(HGATE), .x4(nVA3), .x5(nVA4), .x6(nVA1));
t379 cell_J28(.x1(NET00122), .y2(NET00124), .x3(NET00123), .y4(NET00123), .x5(NET00121), .x6(NET00124), .x8(nNVA5));
t429 cell_K17(.y3(nVA2), .x5(VA2));
t429 cell_K19(.y3(nVA1), .x5(VA1));
t379 cell_M8(.x1(NET00364), .y2(NET00366), .x3(NET00273), .y4(NET00367), .x5(NET00365), .x6(VA7), .x8(NET00366));
t379 cell_M9(.x1(NET00273), .y2(NET00364), .x3(NET00362), .y4(VA7), .x5(NET00361), .x6(NET00364), .x8(NET00367));
t370 cell_M34(.y2(NET00206), .x5(nCLK));
t374 cell_O30(.x1(DIN), .x2(DOUT), .x3(DOUT), .y4(nDINOUT), .y8(nDOUT));
t373 cell_H3(.x1(NET00266), .x3(NET00267), .y4(NET00268));
t419 cell_G4(.x1(nVA5), .y2(NET00081), .x4(nVASEL), .x5(NET00086), .x6(nVA12), .x10(NET00082));
t379 cell_D11(.x1(NET00053), .y2(NET00174), .x3(NET00173), .y4(NET00175), .x5(NET00172), .x6(VA13), .x8(NET00174));
t387 cell_H39(.x1(NET00322), .y2(NET00299), .x3(NET00323), .y4(NET00119), .x5(NPC1), .x6(NET00324));
t429 cell_E9(.y3(nVA11), .x5(VA11));
t379 cell_F19(.x1(NET00057), .y2(NET00058), .x3(nL3), .y4(nL3), .x5(RESET), .x6(NET00058), .x8(NET00059));
t416 cell_H6(.c1(RWR), .q3(nRA5), .d5(NET00093));
t416 cell_I6(.c1(RWR), .q3(nRA2), .d5(NET00358));
t379 cell_I10(.x1(NET00431), .y2(NET00435), .x3(NET00436), .y4(NET00436), .x5(NET00430), .x6(NET00434), .x8(nALOAD));
t376 cell_I11(.x1(nALOAD), .x3(nRA3), .y4(NET00434), .x6(NET00432), .x8(NET00433), .y9(NET00431));
t379 cell_J30(.x1(NET00122), .y2(VA5), .x3(nNVA5), .y4(nNVA5), .x5(RESET), .x6(VA5), .x8(NET00124));
t428 cell_K21(.x2(NET00065), .y3(DIN));
t429 cell_K22(.y3(nVA3), .x5(VA3));
t379 cell_M11(.x1(NET00409), .y2(NET00391), .x3(NET00394), .y4(VA6), .x5(NET00393), .x6(NET00391), .x8(NET00397));
t416 cell_O33(.c1(nDOUT), .q3(nWTBT), .d5(NET00130));
t416 cell_I0(.c1(nSYNC), .q3(nA3), .q4(A3), .d5(NET00351));
t379 cell_C18(.x1(NET00186), .y2(NET00127), .x3(nL5), .y4(nL5), .x5(RESET), .x6(NET00127), .x8(NET00188));
t429 cell_E11(.y3(nVA10), .x5(VA10));
t379 cell_F21(.x1(NET00237), .y2(NET00238), .x3(NET00057), .y4(NET00057), .x5(RESET), .x6(NET00238), .x8(NET00236));
t381 cell_F22(.x1(L1), .y2(NET00236), .x3(L0), .x4(L2), .x6(nTV52));
t376 cell_H8(.x1(NET00103), .x3(NET00100), .y4(NET00102), .x6(nALOAD), .x8(nRA5), .y9(NET00098));
t379 cell_H9(.x1(NET00099), .y2(NET00096), .x3(NET00259), .y4(NET00259), .x5(NET00102), .x6(NET00098), .x8(nALOAD));
t379 cell_J9(.x1(NET00271), .y2(NET00341), .x3(NET00344), .y4(NET00342), .x5(NET00345), .x6(VA8), .x8(NET00341));
t379 cell_J32(.x1(NET00289), .y2(NET00291), .x3(NET00288), .y4(NET00288), .x5(NET00287), .x6(NET00291), .x8(NET00438));
t379 cell_J33(.x1(NET00288), .y2(NET00290), .x3(NET00289), .y4(NET00289), .x5(RESET), .x6(NET00290), .x8(NET00287));
t429 cell_K23(.y3(nPC2), .x5(PC2));
t429 cell_K24(.y3(NPC2), .x5(nNPC2));
t379 cell_M16(.x1(NET00402), .y2(NET00405), .x3(NET00406), .y4(NET00406), .x5(NET00400), .x6(NET00405), .x8(nNVA2));
t379 cell_M17(.x1(NET00406), .y2(NET00407), .x3(NET00402), .y4(NET00402), .x5(RESET), .x6(NET00407), .x8(NET00400));
t419 cell_I2(.x1(nA3), .y2(NET00354), .x4(nRASEL), .x5(NET00086), .x6(nA10), .x10(NET00082));
t379 cell_C20(.x1(NET00305), .y2(NET00307), .x3(NET00304), .y4(NET00304), .x5(NET00191), .x6(NET00307), .x8(nL6));
t379 cell_C21(.x1(NET00304), .y2(NET00306), .x3(NET00305), .y4(NET00305), .x5(RESET), .x6(NET00306), .x8(NET00191));
t379 cell_F23(.x1(NET00228), .y2(NET00239), .x3(nL2), .y4(nL2), .x5(RESET), .x6(NET00239), .x8(NET00230));
t379 cell_F24(.x1(NET00228), .y2(NET00230), .x3(NET00229), .y4(NET00229), .x5(NET00227), .x6(NET00230), .x8(nL2));
t379 cell_G9(.x1(NET00097), .y2(NET00099), .x3(NET00098), .y4(VA11), .x5(NET00096), .x6(NET00099), .x8(NET00100));
t379 cell_J10(.x1(NET00435), .y2(NET00430), .x3(NET00413), .y4(VA9), .x5(NET00434), .x6(NET00433), .x8(NET00430));
t379 cell_J11(.x1(NET00413), .y2(NET00432), .x3(NET00431), .y4(NET00433), .x5(NET00430), .x6(VA9), .x8(NET00432));
t379 cell_J34(.x1(NET00289), .y2(NET00256), .x3(NET00438), .y4(NET00438), .x5(RESET), .x6(NET00256), .x8(NET00291));
t429 cell_K8(.y3(nVA8), .x5(VA8));
t429 cell_K26(.y3(nVA4), .x5(VA4));
t429 cell_K27(.y3(nPC1), .x5(PC1));
t370 cell_M18(.y2(NET00400), .x5(nVA1));
t379 cell_M19(.x1(NET00033), .y2(VA1), .x3(nNVA1), .y4(nNVA1), .x5(RESET), .x6(VA1), .x8(NET00035));
t419 cell_I4(.x1(nVA3), .y2(NET00355), .x4(nVASEL), .x5(NET00086), .x6(nVA10), .x10(NET00082));
t378 cell_C23(.x1(L4), .y2(NET00308), .x3(L5), .x5(nL6));
t378 cell_F26(.x1(L1), .y2(NET00227), .x3(L0), .x5(nTV52));
t379 cell_F27(.x1(NET00233), .y2(NET00234), .x3(nL1), .y4(nL1), .x5(RESET), .x6(NET00234), .x8(NET00235));
t387 cell_H21(.x1(SYNC2), .y2(NET00196), .x3(SYNC2), .y4(NET00197), .x5(SYNC5), .x6(SYNC5));
t370 cell_H22(.y2(NET00193), .x5(SYNC2));
t384 cell_J16(.x1(DIN), .y3(NET00244), .x5(NET00378));
t384 cell_M4(.x1(NET00373), .y3(NET00139), .x5(NET00372));
t429 cell_K10(.y3(nVA9), .x5(VA9));
t428 cell_K29(.x2(NET00055), .y3(DOUT));
t379 cell_M21(.x1(NET00032), .y2(NET00034), .x3(NET00033), .y4(NET00033), .x5(RESET), .x6(NET00034), .x8(NET00030));
t381 cell_M22(.x1(nPC1), .y2(NET00030), .x3(nPC0), .x4(nPC2), .x6(nCLK));
t416 cell_J1(.c1(nSYNC), .q3(nA9), .d5(NET00360));
t379 cell_C25(.x1(NET00311), .y2(NET00313), .x3(NET00312), .y4(NET00312), .x5(RESET), .x6(NET00313), .x8(NET00308));
t379 cell_C26(.x1(NET00312), .y2(NET00316), .x3(nL7), .y4(nL7), .x5(RESET), .x6(NET00316), .x8(NET00314));
t429 cell_E19(.y3(L3), .x5(NET00058));
t379 cell_F28(.x1(NET00233), .y2(NET00235), .x3(NET00241), .y4(NET00241), .x5(NET00240), .x6(NET00235), .x8(nL1));
t379 cell_F29(.x1(NET00241), .y2(NET00242), .x3(NET00233), .y4(NET00233), .x5(RESET), .x6(NET00242), .x8(NET00240));
t417 cell_H23(.x1(NET00194), .y4(SYNC5), .x5(SYNC2), .x6(NET00183), .x10(NET00193));
t373 cell_H24(.x1(NET00181), .x3(nHGATE), .y4(NET00194));
t390 cell_N4(.x1(A2), .y4(NET00376), .x5(A1), .x6(A2), .y9(NET00429), .x10(nA1));
t383 cell_N5(.x1(nSYNC), .y2(NET00157), .x3(NET00141), .x4(NET00143), .x5(NET00139), .x6(NET00429));
t429 cell_K14(.y3(nSYNC), .x5(NET00419));
t429 cell_K30(.y3(nVA5), .x5(VA5));
t429 cell_K31(.y3(nPC0), .x5(PC0));
t376 cell_N8(.x1(NET00366), .x3(NET00367), .y4(NET00365), .x6(nALOAD), .x8(nRA1), .y9(NET00362));
t379 cell_J8(.x1(NET00347), .y2(NET00345), .x3(NET00271), .y4(VA8), .x5(NET00343), .x6(NET00342), .x8(NET00345));
t373 cell_J3(.x1(NET00425), .x3(NET00426), .y4(NET00371));
t370 cell_C12(.y2(NET00184), .x5(L4));
t379 cell_C16(.x1(NET00186), .y2(NET00188), .x3(NET00187), .y4(NET00187), .x5(NET00184), .x6(NET00188), .x8(nL5));
t429 cell_E23(.y3(L2), .x5(NET00239));
t379 cell_F31(.x1(NET00336), .y2(NET00337), .x3(nL0), .y4(nL0), .x5(RESET), .x6(NET00337), .x8(NET00338));
t381 cell_H33(.x1(nCLK), .y2(NET00326), .x3(NPC1), .x4(nPC190), .x6(nPC2));
t381 cell_O5(.x1(NET00139), .y2(NET00140), .x3(NET00141), .x4(NET00143), .x6(A2));
t429 cell_K16(.y3(NET00086), .x5(nAMUXSEL));
t429 cell_K33(.y3(HGATE), .x5(NET00438));
t416 cell_O10(.c1(RWR), .q3(nRA0), .d5(NET00146));
t416 cell_D0(.c1(nSYNC), .q3(nA7), .d5(NET00212));
t416 cell_B8(.c1(RWR), .q3(nM256), .q4(M256), .d5(NET00360));
t419 cell_J4(.x1(nVA2), .y2(NET00426), .x4(nVASEL), .x5(NET00086), .x6(nVA9), .x10(NET00082));
t416 cell_L0(.c1(nSYNC), .q3(nA1), .q4(A1), .d5(NET00131));
t378 cell_C19(.x1(L4), .y2(NET00191), .x3(L5), .x5(VGATE));
t421 cell_C27(.x1(nL6), .y2(NET00315), .x3(L5), .x4(L4), .x5(nVGATE), .x6(nVGATE), .x10(nL7));
t429 cell_E27(.y3(L1), .x5(NET00234));
t429 cell_E29(.y3(VGATE), .x5(NET00284));
t379 cell_F32(.x1(NET00336), .y2(NET00338), .x3(NET00339), .y4(NET00339), .x5(NET00332), .x6(NET00338), .x8(nL0));
t379 cell_F33(.x1(NET00339), .y2(NET00340), .x3(NET00336), .y4(NET00336), .x5(RESET), .x6(NET00340), .x8(NET00332));
t373 cell_H34(.x1(nAMUXSEL), .x3(nPC1), .y4(NET00328));
t376 cell_H38(.x1(PC190), .x3(nRASEL), .y4(NET00323), .x6(PC190), .x8(NPC2), .y9(NET00324));
t381 cell_I19(.x1(NET00411), .y2(NET00182), .x3(nPC2), .x4(NET00412), .x6(NET00180));
t402 cell_I21(.r1(NET00179), .q3(NET00181), .q4(NET00183), .s6(NET00182));
t429 cell_K34(.y3(nHGATE), .x5(NET00256));
t428 cell_K35(.x2(NET00158), .y3(nROE));
t376 cell_N10(.x1(NET00396), .x3(NET00397), .y4(NET00390), .x6(nALOAD), .x8(nRA0), .y9(NET00394));
t379 cell_N9(.x1(NET00364), .y2(NET00361), .x3(NET00428), .y4(NET00428), .x5(NET00365), .x6(NET00362), .x8(nALOAD));
t419 cell_D2(.x1(nA7), .y2(NET00254), .x4(nRASEL), .x5(NET00086), .x6(nA14), .x10(NET00082));
t373 cell_D3(.x1(NET00254), .x3(NET00245), .y4(NET00255));
t416 cell_B11(.c1(RWR), .q3(nRA7), .d5(NET00212));
t416 cell_L1(.c1(nSYNC), .q3(nA8), .d5(NET00278));
t419 cell_L2(.x1(nA1), .y2(NET00282), .x4(nRASEL), .x5(NET00086), .x6(nA8), .x10(NET00082));
t379 cell_C28(.x1(NET00318), .y2(NET00320), .x3(NET00317), .y4(NET00317), .x5(NET00315), .x6(NET00320), .x8(NET00321));
t379 cell_C29(.x1(NET00317), .y2(NET00319), .x3(NET00318), .y4(NET00318), .x5(RESET), .x6(NET00319), .x8(NET00315));
t429 cell_E30(.y3(nVGATE), .x5(NET00321));
t429 cell_E31(.y3(L0), .x5(NET00337));
t379 cell_G8(.x1(NET00099), .y2(NET00103), .x3(NET00097), .y4(NET00100), .x5(NET00102), .x6(VA11), .x8(NET00103));
t385 cell_I39(.x1(NET00299), .x2(NET00297), .y3(CAS), .x5(NET00298), .y8(NET00298));
t371 cell_I22(.x1(nNVA3), .y3(NET00180), .y4(NET00178), .x6(nNVA4));
t378 cell_I23(.x1(nVA1), .y2(NET00179), .x3(nVA3), .x5(NET00178));
t429 cell_K39(.y3(nCLK), .x5(CLKIN));
t381 cell_L8(.x1(nVA6), .y2(NET00271), .x3(nTV51), .x4(nVA7), .x6(FREEZ));
t383 cell_O12(.x1(NET00376), .y2(NET00378), .x3(NET00377), .x4(NET00379), .x5(NET00139), .x6(nSYNC));
t419 cell_D4(.x1(nVA7), .y2(NET00245), .x4(nVASEL), .x5(NET00086), .x6(GND), .x10(NET00082));
t419 cell_F2(.x1(nA6), .y2(NET00422), .x4(nRASEL), .x5(NET00086), .x6(nA13), .x10(NET00082));
t373 cell_L3(.x1(NET00282), .x3(NET00274), .y4(NET00283));
t419 cell_L4(.x1(nVA1), .y2(NET00274), .x4(nVASEL), .x5(NET00086), .x6(nVA8), .x10(NET00082));
t402 cell_C31(.r1(nDINOUT), .q4(NET00399), .s6(nVASEL));
t429 cell_E32(.y3(nTV51), .x5(NET00225));
t429 cell_E34(.y3(nTV52), .x5(NET00225));
t379 cell_G10(.x1(NET00001), .y2(NET00006), .x3(NET00038), .y4(NET00007), .x5(NET00000), .x6(VA10), .x8(NET00006));
t379 cell_G11(.x1(NET00038), .y2(NET00001), .x3(NET00004), .y4(VA10), .x5(NET00003), .x6(NET00001), .x8(NET00007));
t416 cell_I33(.c1(CLKIN), .q4(nAMUXSEL), .d5(nPC190));
t378 cell_L9(.x1(nVA6), .y2(NET00273), .x3(nTV51), .x5(FREEZ));
t383 cell_L10(.x1(nVA6), .y2(NET00413), .x3(nTV51), .x4(nVA7), .x5(nVA8), .x6(FREEZ));
t379 cell_M23(.x1(NET00025), .y2(PC2), .x3(nNPC2), .y4(nNPC2), .x5(RESET), .x6(PC2), .x8(NET00027));
t379 cell_M24(.x1(NET00025), .y2(NET00027), .x3(NET00024), .y4(NET00024), .x5(NET00022), .x6(NET00027), .x8(nNPC2));
t373 cell_F3(.x1(NET00422), .x3(NET00421), .y4(NET00037));
t419 cell_F4(.x1(nVA6), .y2(NET00421), .x4(nVASEL), .x5(NET00086), .x6(nVA13), .x10(NET00082));
t381 cell_M1(.x1(nA9), .y2(NET00372), .x3(nA8), .x4(nA7), .x6(nA10));
t379 cell_D8(.x1(NET00077), .y2(NET00075), .x3(NET00257), .y4(VA12), .x5(NET00260), .x6(NET00071), .x8(NET00075));
t384 cell_D16(.x1(NET00171), .y3(NET00109), .x5(FREEZ));
t429 cell_E35(.y3(nRASEL), .x5(RASEL));
t429 cell_E36(.y3(nVASEL), .x5(nRASEL));
t370 cell_G19(.y2(NET00041), .x5(nL3));
t378 cell_G20(.x1(L2), .y2(NET00217), .x3(NET00041), .x5(NET00215));
t373 cell_J19(.x1(nVA2), .x3(nVA1), .y4(NET00134));
t379 cell_J20(.x1(NET00135), .y2(NET00137), .x3(NET00136), .y4(NET00136), .x5(NET00134), .x6(NET00137), .x8(nNVA3));
t371 cell_L17(.x1(nNVA2), .y3(NET00411), .y4(NET00412), .x6(nNVA1));
t370 cell_L32(.y2(NPC1), .x5(nNPC1));
t379 cell_M25(.x1(NET00024), .y2(NET00026), .x3(NET00025), .y4(NET00025), .x5(RESET), .x6(NET00026), .x8(NET00022));
t378 cell_M26(.x1(nPC1), .y2(NET00022), .x3(nPC0), .x5(nCLK));
t416 cell_G0(.c1(nSYNC), .q3(nA5), .q4(A5), .d5(NET00093));
t416 cell_H0(.c1(nSYNC), .q3(nA4), .q4(A4), .d5(NET00009));
t376 cell_C9(.x1(nALOAD), .x3(nRA6), .y4(NET00260), .x6(NET00070), .x8(NET00071), .y9(NET00073));
t379 cell_C10(.x1(NET00173), .y2(NET00177), .x3(NET00011), .y4(NET00011), .x5(NET00172), .x6(NET00176), .x8(nALOAD));
t392 cell_D26(.x1(nL7), .x3(M256), .y4(NET00296), .x5(nL6));
t381 cell_F8(.x1(nVA10), .y2(NET00257), .x3(nVA9), .x4(nVA11), .x6(FREEZ));
t378 cell_F9(.x1(nVA10), .y2(NET00097), .x3(nVA9), .x5(FREEZ));
t378 cell_G22(.x1(nVGATE), .y2(NET00216), .x3(NET00170), .x5(L4));
t383 cell_G23(.x1(nVGATE), .y2(NET00110), .x3(NET00170), .x4(L2), .x5(L4), .x6(NET00041));
t379 cell_J21(.x1(NET00136), .y2(NET00144), .x3(NET00135), .y4(NET00135), .x5(RESET), .x6(NET00144), .x8(NET00134));
t379 cell_J22(.x1(NET00135), .y2(VA3), .x3(nNVA3), .y4(nNVA3), .x5(RESET), .x6(VA3), .x8(NET00137));
t418 cell_L37(.x1(nCLK), .x2(NET00224), .y3(NET00223), .y4(NET00225), .x5(NET00223), .x6(nVA5), .x10(NET00224));
t371 cell_L38(.x1(NET00158), .y3(NET00222), .y4(RWR), .x6(NET00159));
t379 cell_M28(.x1(NET00014), .y2(NET00017), .x3(NET00013), .y4(NET00013), .x5(NET00016), .x6(NET00017), .x8(nNPC1));
t379 cell_M29(.x1(NET00013), .y2(NET00015), .x3(NET00014), .y4(NET00014), .x5(RESET), .x6(NET00015), .x8(NET00016));
t416 cell_G1(.c1(nSYNC), .q3(nA12), .d5(NET00090));
t416 cell_H1(.c1(nSYNC), .q3(nA11), .d5(NET00262));
t381 cell_D32(.x1(RPLY), .y2(NET00387), .x3(nSYNC), .x4(A15), .x6(nDINOUT));
t379 cell_D33(.x1(NET00382), .y2(NET00384), .x3(NET00385), .y4(NET00385), .x5(NET00329), .x6(NET00384), .x8(NET00387));
t373 cell_G27(.x1(NET00214), .x3(NET00171), .y4(NET00215));
t371 cell_G28(.x1(nL1), .y3(NET00171), .y4(NET00214), .x6(nL0));
t379 cell_J24(.x1(NET00151), .y2(NET00153), .x3(NET00152), .y4(NET00152), .x5(NET00150), .x6(NET00153), .x8(nNVA4));
t378 cell_L39(.x1(RWR), .y2(NET00111), .x3(NET00222), .x5(RPLY));
t390 cell_O39(.x1(CAS), .y4(NET00114), .x5(NET00161), .x6(CAS), .y9(NET00115), .x10(NET00162));
t373 cell_M30(.x1(nCLK), .x3(nPC0), .y4(NET00016));
t379 cell_M31(.x1(NET00207), .y2(PC0), .x3(nNPC0), .y4(nNPC0), .x5(RESET), .x6(PC0), .x8(NET00209));
t419 cell_G2(.x1(nA5), .y2(NET00084), .x4(nRASEL), .x5(NET00086), .x6(nA12), .x10(NET00082));
t379 cell_D35(.x1(NET00382), .y2(RASEL), .x3(NET00383), .y4(NET00383), .x5(NET00328), .x6(RASEL), .x8(NET00384));
t383 cell_F18(.x1(L1), .y2(NET00045), .x3(L0), .x4(L2), .x5(L3), .x6(nTV52));
t383 cell_G33(.x1(NET00296), .y2(NET00118), .x3(NET00330), .x4(nPC190), .x5(NPC2), .x6(nPC1));
t379 cell_J26(.x1(NET00151), .y2(VA4), .x3(nNVA4), .y4(nNVA4), .x5(RESET), .x6(VA4), .x8(NET00153));
t385 cell_O36(.x1(NET00165), .x2(NET00140), .y3(NET00116), .x5(DIN), .y8(NET00129));
t379 cell_M33(.x1(NET00208), .y2(NET00210), .x3(NET00207), .y4(NET00207), .x5(RESET), .x6(NET00210), .x8(NET00206));
t419 cell_H4(.x1(nVA4), .y2(NET00267), .x4(nVASEL), .x5(NET00086), .x6(nVA11), .x10(NET00082));
t416 cell_I1(.c1(nSYNC), .q3(nA10), .d5(NET00348));
t373 cell_I3(.x1(NET00354), .x3(NET00355), .y4(NET00281));
t379 cell_C17(.x1(NET00187), .y2(NET00189), .x3(NET00186), .y4(NET00186), .x5(RESET), .x6(NET00189), .x8(NET00184));
t379 cell_C22(.x1(NET00305), .y2(NET00310), .x3(nL6), .y4(nL6), .x5(RESET), .x6(NET00310), .x8(NET00307));
t429 cell_E8(.y3(nVA12), .x5(VA12));
t429 cell_E10(.y3(nVA13), .x5(VA13));
t429 cell_E15(.y3(L4), .x5(NET00048));
t428 cell_E17(.x2(NET00110), .y3(FREEZ));
t379 cell_F17(.x1(NET00042), .y2(NET00044), .x3(NET00043), .y4(NET00043), .x5(RESET), .x6(NET00044), .x8(NET00045));
t379 cell_F20(.x1(NET00057), .y2(NET00059), .x3(NET00237), .y4(NET00237), .x5(NET00236), .x6(NET00059), .x8(nL3));
t379 cell_F25(.x1(NET00229), .y2(NET00232), .x3(NET00228), .y4(NET00228), .x5(RESET), .x6(NET00232), .x8(NET00227));
t376 cell_H10(.x1(NET00006), .x3(NET00007), .y4(NET00000), .x6(nALOAD), .x8(nRA4), .y9(NET00004));
t416 cell_H13(.c1(RWR), .q3(nRA4), .d5(NET00009));
t416 cell_I13(.c1(RWR), .q3(nRA3), .d5(NET00351));
t379 cell_H11(.x1(NET00001), .y2(NET00003), .x3(NET00002), .y4(NET00002), .x5(NET00000), .x6(NET00004), .x8(nALOAD));
t379 cell_J29(.x1(NET00123), .y2(NET00128), .x3(NET00122), .y4(NET00122), .x5(RESET), .x6(NET00128), .x8(NET00121));
t383 cell_J31(.x1(nVA2), .y2(NET00287), .x3(NET00286), .x4(nVA3), .x5(nVA4), .x6(nVA1));
t429 cell_K9(.y3(nVA7), .x5(VA7));
t379 cell_M10(.x1(NET00391), .y2(NET00396), .x3(NET00409), .y4(NET00397), .x5(NET00390), .x6(VA6), .x8(NET00396));
t379 cell_M15(.x1(NET00402), .y2(VA2), .x3(nNVA2), .y4(nNVA2), .x5(RESET), .x6(VA2), .x8(NET00405));
t379 cell_M20(.x1(NET00033), .y2(NET00035), .x3(NET00032), .y4(NET00032), .x5(NET00030), .x6(NET00035), .x8(nNVA1));
t390 cell_O32(.x1(nA0), .y4(NET00161), .x5(NET00164), .x6(A0), .y9(NET00162), .x10(NET00164));
t373 cell_O34(.x1(nPC2), .x3(nWTBT), .y4(NET00164));
t416 cell_J0(.c1(nSYNC), .q3(nA2), .q4(A2), .d5(NET00358));
t419 cell_J2(.x1(nA2), .y2(NET00425), .x4(nRASEL), .x5(NET00086), .x6(nA9), .x10(NET00082));
t379 cell_C24(.x1(NET00312), .y2(NET00314), .x3(NET00311), .y4(NET00311), .x5(NET00308), .x6(NET00314), .x8(nL7));
t429 cell_E18(.y3(L5), .x5(NET00127));
t429 cell_E20(.y3(RESET), .x5(NET00275));
t373 cell_F30(.x1(nTV52), .x3(L0), .y4(NET00240));
t385 cell_H25(.x1(NET00196), .x2(NET00197), .y3(NET00202), .x5(NET00201), .y8(NET00201));
t390 cell_M5(.x1(nA6), .y4(NET00141), .x5(A5), .x6(nA3), .y9(NET00143), .x10(A4));
t429 cell_K11(.y3(nVA6), .x5(VA6));
t429 cell_K15(.y3(NET00082), .x5(NET00086));
t416 cell_O8(.c1(RWR), .q3(nRA1), .d5(NET00131));
t416 cell_D1(.c1(nSYNC), .q3(nA14), .d5(NET00249));
t416 cell_B9(.c1(RWR), .q3(nRA6), .d5(NET00417));
t416 cell_F0(.c1(nSYNC), .q3(nA6), .q4(A6), .d5(NET00417));
t416 cell_F1(.c1(nSYNC), .q3(nA13), .d5(NET00357));
t379 cell_D10(.x1(NET00177), .y2(NET00172), .x3(NET00053), .y4(VA13), .x5(NET00176), .x6(NET00175), .x8(NET00172));
t379 cell_C30(.x1(NET00318), .y2(NET00284), .x3(NET00321), .y4(NET00321), .x5(RESET), .x6(NET00284), .x8(NET00320));
t373 cell_C32(.x1(NET00399), .x3(nVASEL), .y4(RPLY));
t370 cell_F34(.y2(NET00332), .x5(nTV52));
t379 cell_C8(.x1(NET00073), .y2(NET00077), .x3(NET00076), .y4(NET00076), .x5(NET00075), .x6(NET00260), .x8(nALOAD));
t384 cell_G21(.x1(NET00217), .y3(SYNC2), .x5(NET00216));
t381 cell_I38(.x1(VGATE), .y2(NET00297), .x3(NPC2), .x4(nPC1), .x6(HGATE));
t373 cell_I30(.x1(HGATE), .x3(VA5), .y4(NET00286));
t416 cell_I34(.c1(PC0), .q3(PC190), .q4(nPC190), .d5(nPC1));
t373 cell_L11(.x1(FREEZ), .x3(nTV51), .y4(NET00409));
t390 cell_N12(.x1(nA5), .y4(NET00377), .x5(A6), .x6(A3), .y9(NET00379), .x10(nA4));
t374 cell_O15(.x1(nSYNC), .x2(NET00139), .x3(NET00375), .y4(NET00165), .y8(NET00375));
t379 cell_M27(.x1(NET00014), .y2(PC1), .x3(nNPC1), .y4(nNPC1), .x5(RESET), .x6(PC1), .x8(NET00017));
t379 cell_D34(.x1(NET00385), .y2(NET00386), .x3(NET00382), .y4(NET00382), .x5(NET00328), .x6(NET00386), .x8(NET00329));
t383 cell_F10(.x1(nVA10), .y2(NET00053), .x3(nVA9), .x4(nVA11), .x5(nVA12), .x6(FREEZ));
t373 cell_F11(.x1(FREEZ), .x3(nVA9), .y4(NET00038));
t384 cell_G32(.x1(nVGATE), .y3(NET00330), .x5(nHGATE));
t378 cell_J23(.x1(nVA2), .y2(NET00150), .x3(nVA3), .x5(nVA1));
t379 cell_J25(.x1(NET00152), .y2(NET00155), .x3(NET00151), .y4(NET00151), .x5(RESET), .x6(NET00155), .x8(NET00150));
t390 cell_O38(.x1(NET00157), .y4(NET00158), .x5(DIN), .x6(NET00157), .y9(NET00159), .x10(DOUT));
t379 cell_M32(.x1(NET00207), .y2(NET00209), .x3(NET00208), .y4(NET00208), .x5(NET00206), .x6(NET00209), .x8(nNPC0));
t416 cell_O4(.c1(nSYNC), .q3(nA0), .q4(A0), .d5(NET00146));
t379 cell_N11(.x1(NET00391), .y2(NET00393), .x3(NET00392), .y4(NET00392), .x5(NET00390), .x6(NET00394), .x8(nALOAD));

endmodule
//______________________________________________________________________________
//
