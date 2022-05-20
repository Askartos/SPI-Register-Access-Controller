module registers(
  input        clk,
  input        rst,
  input        we,
  input  [7:0] dataw,
  input  [5:0] addr,
  output [7:0] datar,
  input  [3:0] regr_0,
  input  [6:0] regr_1,
  input  [7:0] regr_2,
  input  [7:0] regr_3,
  input  [7:0] regr_4,
  input  [7:0] regr_5,
  output [7:0] regwr_0,
  output [7:0] regwr_1,
  output [7:0] regwr_2,
  output [7:0] regwr_3,
  output [2:0] regwr_4,
  output [7:0] regwr_5,
  output [3:0] regwr_6,
  output [1:0] regwr_7,
  output [4:0] regwr_8,
  output [4:0] regwr_9,
  output [4:0] regwr_10,
  output [4:0] regwr_11,
  output       regwr_12,
  output       regwr_13,
  output       regwr_14,
  output [2:0] regwr_15,
  output [2:0] regwr_16,
  output [1:0] regwr_17,
  output [1:0] regwr_18,
  output       regwr_19,
  output       regwr_20,
  output [1:0] regwr_21,
  output       regwr_22,
  output [6:0] regwr_23,
  output       regwr_24,
  output       regwr_25,
  output       regwr_26,
  output [3:0] regwr_27,
  output [3:0] regwr_28,
  output       regwr_29,
  output       regwr_30,
  output       regwr_31,
  output [2:0] regwr_32,
  output [2:0] regwr_33,
  output [2:0] regwr_34,
  output       regwr_35,
  output       regwr_36,
  output       regwr_37,
  output       regwr_38,
  output       regwr_39,
  output [7:0] regwr_40,
  output [7:0] regwr_41
);
  reg [7:0] _T; // @[registers.scala 40:43]
  reg [31:0] _RAND_0;
  wire  _T_1 = addr == 6'h0; // @[registers.scala 41:39]
  wire  _T_2 = we & _T_1; // @[registers.scala 41:33]
  reg [7:0] _T_3; // @[registers.scala 40:43]
  reg [31:0] _RAND_1;
  wire  _T_4 = addr == 6'h1; // @[registers.scala 41:39]
  wire  _T_5 = we & _T_4; // @[registers.scala 41:33]
  reg [7:0] _T_6; // @[registers.scala 40:43]
  reg [31:0] _RAND_2;
  wire  _T_7 = addr == 6'h2; // @[registers.scala 41:39]
  wire  _T_8 = we & _T_7; // @[registers.scala 41:33]
  reg [7:0] _T_9; // @[registers.scala 40:43]
  reg [31:0] _RAND_3;
  wire  _T_10 = addr == 6'h3; // @[registers.scala 41:39]
  wire  _T_11 = we & _T_10; // @[registers.scala 41:33]
  reg [2:0] _T_12; // @[registers.scala 40:43]
  reg [31:0] _RAND_4;
  wire  _T_13 = addr == 6'h4; // @[registers.scala 41:39]
  wire  _T_14 = we & _T_13; // @[registers.scala 41:33]
  wire [7:0] _GEN_4 = _T_14 ? dataw : {{5'd0}, _T_12}; // @[registers.scala 41:46]
  reg [7:0] _T_15; // @[registers.scala 40:43]
  reg [31:0] _RAND_5;
  wire  _T_16 = addr == 6'h5; // @[registers.scala 41:39]
  wire  _T_17 = we & _T_16; // @[registers.scala 41:33]
  reg [3:0] _T_18; // @[registers.scala 40:43]
  reg [31:0] _RAND_6;
  wire  _T_19 = addr == 6'h6; // @[registers.scala 41:39]
  wire  _T_20 = we & _T_19; // @[registers.scala 41:33]
  wire [7:0] _GEN_6 = _T_20 ? dataw : {{4'd0}, _T_18}; // @[registers.scala 41:46]
  reg [1:0] _T_21; // @[registers.scala 40:43]
  reg [31:0] _RAND_7;
  wire  _T_22 = addr == 6'h7; // @[registers.scala 41:39]
  wire  _T_23 = we & _T_22; // @[registers.scala 41:33]
  wire [7:0] _GEN_7 = _T_23 ? dataw : {{6'd0}, _T_21}; // @[registers.scala 41:46]
  reg [4:0] _T_24; // @[registers.scala 40:43]
  reg [31:0] _RAND_8;
  wire  _T_25 = addr == 6'h8; // @[registers.scala 41:39]
  wire  _T_26 = we & _T_25; // @[registers.scala 41:33]
  wire [7:0] _GEN_8 = _T_26 ? dataw : {{3'd0}, _T_24}; // @[registers.scala 41:46]
  reg [4:0] _T_27; // @[registers.scala 40:43]
  reg [31:0] _RAND_9;
  wire  _T_28 = addr == 6'h9; // @[registers.scala 41:39]
  wire  _T_29 = we & _T_28; // @[registers.scala 41:33]
  wire [7:0] _GEN_9 = _T_29 ? dataw : {{3'd0}, _T_27}; // @[registers.scala 41:46]
  reg [4:0] _T_30; // @[registers.scala 40:43]
  reg [31:0] _RAND_10;
  wire  _T_31 = addr == 6'ha; // @[registers.scala 41:39]
  wire  _T_32 = we & _T_31; // @[registers.scala 41:33]
  wire [7:0] _GEN_10 = _T_32 ? dataw : {{3'd0}, _T_30}; // @[registers.scala 41:46]
  reg [4:0] _T_33; // @[registers.scala 40:43]
  reg [31:0] _RAND_11;
  wire  _T_34 = addr == 6'hb; // @[registers.scala 41:39]
  wire  _T_35 = we & _T_34; // @[registers.scala 41:33]
  wire [7:0] _GEN_11 = _T_35 ? dataw : {{3'd0}, _T_33}; // @[registers.scala 41:46]
  reg  _T_36; // @[registers.scala 40:43]
  reg [31:0] _RAND_12;
  wire  _T_37 = addr == 6'hc; // @[registers.scala 41:39]
  wire  _T_38 = we & _T_37; // @[registers.scala 41:33]
  wire [7:0] _GEN_12 = _T_38 ? dataw : {{7'd0}, _T_36}; // @[registers.scala 41:46]
  reg  _T_39; // @[registers.scala 40:43]
  reg [31:0] _RAND_13;
  wire  _T_40 = addr == 6'hd; // @[registers.scala 41:39]
  wire  _T_41 = we & _T_40; // @[registers.scala 41:33]
  wire [7:0] _GEN_13 = _T_41 ? dataw : {{7'd0}, _T_39}; // @[registers.scala 41:46]
  reg  _T_42; // @[registers.scala 40:43]
  reg [31:0] _RAND_14;
  wire  _T_43 = addr == 6'he; // @[registers.scala 41:39]
  wire  _T_44 = we & _T_43; // @[registers.scala 41:33]
  wire [7:0] _GEN_14 = _T_44 ? dataw : {{7'd0}, _T_42}; // @[registers.scala 41:46]
  reg [2:0] _T_45; // @[registers.scala 40:43]
  reg [31:0] _RAND_15;
  wire  _T_46 = addr == 6'hf; // @[registers.scala 41:39]
  wire  _T_47 = we & _T_46; // @[registers.scala 41:33]
  wire [7:0] _GEN_15 = _T_47 ? dataw : {{5'd0}, _T_45}; // @[registers.scala 41:46]
  reg [2:0] _T_48; // @[registers.scala 40:43]
  reg [31:0] _RAND_16;
  wire  _T_49 = addr == 6'h10; // @[registers.scala 41:39]
  wire  _T_50 = we & _T_49; // @[registers.scala 41:33]
  wire [7:0] _GEN_16 = _T_50 ? dataw : {{5'd0}, _T_48}; // @[registers.scala 41:46]
  reg [1:0] _T_51; // @[registers.scala 40:43]
  reg [31:0] _RAND_17;
  wire  _T_52 = addr == 6'h11; // @[registers.scala 41:39]
  wire  _T_53 = we & _T_52; // @[registers.scala 41:33]
  wire [7:0] _GEN_17 = _T_53 ? dataw : {{6'd0}, _T_51}; // @[registers.scala 41:46]
  reg [1:0] _T_54; // @[registers.scala 40:43]
  reg [31:0] _RAND_18;
  wire  _T_55 = addr == 6'h12; // @[registers.scala 41:39]
  wire  _T_56 = we & _T_55; // @[registers.scala 41:33]
  wire [7:0] _GEN_18 = _T_56 ? dataw : {{6'd0}, _T_54}; // @[registers.scala 41:46]
  reg  _T_57; // @[registers.scala 40:43]
  reg [31:0] _RAND_19;
  wire  _T_58 = addr == 6'h13; // @[registers.scala 41:39]
  wire  _T_59 = we & _T_58; // @[registers.scala 41:33]
  wire [7:0] _GEN_19 = _T_59 ? dataw : {{7'd0}, _T_57}; // @[registers.scala 41:46]
  reg  _T_60; // @[registers.scala 40:43]
  reg [31:0] _RAND_20;
  wire  _T_61 = addr == 6'h14; // @[registers.scala 41:39]
  wire  _T_62 = we & _T_61; // @[registers.scala 41:33]
  wire [7:0] _GEN_20 = _T_62 ? dataw : {{7'd0}, _T_60}; // @[registers.scala 41:46]
  reg [1:0] _T_63; // @[registers.scala 40:43]
  reg [31:0] _RAND_21;
  wire  _T_64 = addr == 6'h15; // @[registers.scala 41:39]
  wire  _T_65 = we & _T_64; // @[registers.scala 41:33]
  wire [7:0] _GEN_21 = _T_65 ? dataw : {{6'd0}, _T_63}; // @[registers.scala 41:46]
  reg  _T_66; // @[registers.scala 40:43]
  reg [31:0] _RAND_22;
  wire  _T_67 = addr == 6'h16; // @[registers.scala 41:39]
  wire  _T_68 = we & _T_67; // @[registers.scala 41:33]
  wire [7:0] _GEN_22 = _T_68 ? dataw : {{7'd0}, _T_66}; // @[registers.scala 41:46]
  reg [6:0] _T_69; // @[registers.scala 40:43]
  reg [31:0] _RAND_23;
  wire  _T_70 = addr == 6'h17; // @[registers.scala 41:39]
  wire  _T_71 = we & _T_70; // @[registers.scala 41:33]
  wire [7:0] _GEN_23 = _T_71 ? dataw : {{1'd0}, _T_69}; // @[registers.scala 41:46]
  reg  _T_72; // @[registers.scala 40:43]
  reg [31:0] _RAND_24;
  wire  _T_73 = addr == 6'h18; // @[registers.scala 41:39]
  wire  _T_74 = we & _T_73; // @[registers.scala 41:33]
  wire [7:0] _GEN_24 = _T_74 ? dataw : {{7'd0}, _T_72}; // @[registers.scala 41:46]
  reg  _T_75; // @[registers.scala 40:43]
  reg [31:0] _RAND_25;
  wire  _T_76 = addr == 6'h19; // @[registers.scala 41:39]
  wire  _T_77 = we & _T_76; // @[registers.scala 41:33]
  wire [7:0] _GEN_25 = _T_77 ? dataw : {{7'd0}, _T_75}; // @[registers.scala 41:46]
  reg  _T_78; // @[registers.scala 40:43]
  reg [31:0] _RAND_26;
  wire  _T_79 = addr == 6'h1a; // @[registers.scala 41:39]
  wire  _T_80 = we & _T_79; // @[registers.scala 41:33]
  wire [7:0] _GEN_26 = _T_80 ? dataw : {{7'd0}, _T_78}; // @[registers.scala 41:46]
  reg [3:0] _T_81; // @[registers.scala 40:43]
  reg [31:0] _RAND_27;
  wire  _T_82 = addr == 6'h1b; // @[registers.scala 41:39]
  wire  _T_83 = we & _T_82; // @[registers.scala 41:33]
  wire [7:0] _GEN_27 = _T_83 ? dataw : {{4'd0}, _T_81}; // @[registers.scala 41:46]
  reg [3:0] _T_84; // @[registers.scala 40:43]
  reg [31:0] _RAND_28;
  wire  _T_85 = addr == 6'h1c; // @[registers.scala 41:39]
  wire  _T_86 = we & _T_85; // @[registers.scala 41:33]
  wire [7:0] _GEN_28 = _T_86 ? dataw : {{4'd0}, _T_84}; // @[registers.scala 41:46]
  reg  _T_87; // @[registers.scala 40:43]
  reg [31:0] _RAND_29;
  wire  _T_88 = addr == 6'h1d; // @[registers.scala 41:39]
  wire  _T_89 = we & _T_88; // @[registers.scala 41:33]
  wire [7:0] _GEN_29 = _T_89 ? dataw : {{7'd0}, _T_87}; // @[registers.scala 41:46]
  reg  _T_90; // @[registers.scala 40:43]
  reg [31:0] _RAND_30;
  wire  _T_91 = addr == 6'h1e; // @[registers.scala 41:39]
  wire  _T_92 = we & _T_91; // @[registers.scala 41:33]
  wire [7:0] _GEN_30 = _T_92 ? dataw : {{7'd0}, _T_90}; // @[registers.scala 41:46]
  reg  _T_93; // @[registers.scala 40:43]
  reg [31:0] _RAND_31;
  wire  _T_94 = addr == 6'h1f; // @[registers.scala 41:39]
  wire  _T_95 = we & _T_94; // @[registers.scala 41:33]
  wire [7:0] _GEN_31 = _T_95 ? dataw : {{7'd0}, _T_93}; // @[registers.scala 41:46]
  reg [2:0] _T_96; // @[registers.scala 40:43]
  reg [31:0] _RAND_32;
  wire  _T_97 = addr == 6'h20; // @[registers.scala 41:39]
  wire  _T_98 = we & _T_97; // @[registers.scala 41:33]
  wire [7:0] _GEN_32 = _T_98 ? dataw : {{5'd0}, _T_96}; // @[registers.scala 41:46]
  reg [2:0] _T_99; // @[registers.scala 40:43]
  reg [31:0] _RAND_33;
  wire  _T_100 = addr == 6'h21; // @[registers.scala 41:39]
  wire  _T_101 = we & _T_100; // @[registers.scala 41:33]
  wire [7:0] _GEN_33 = _T_101 ? dataw : {{5'd0}, _T_99}; // @[registers.scala 41:46]
  reg [2:0] _T_102; // @[registers.scala 40:43]
  reg [31:0] _RAND_34;
  wire  _T_103 = addr == 6'h22; // @[registers.scala 41:39]
  wire  _T_104 = we & _T_103; // @[registers.scala 41:33]
  wire [7:0] _GEN_34 = _T_104 ? dataw : {{5'd0}, _T_102}; // @[registers.scala 41:46]
  reg  _T_105; // @[registers.scala 40:43]
  reg [31:0] _RAND_35;
  wire  _T_106 = addr == 6'h23; // @[registers.scala 41:39]
  wire  _T_107 = we & _T_106; // @[registers.scala 41:33]
  wire [7:0] _GEN_35 = _T_107 ? dataw : {{7'd0}, _T_105}; // @[registers.scala 41:46]
  reg  _T_108; // @[registers.scala 40:43]
  reg [31:0] _RAND_36;
  wire  _T_109 = addr == 6'h24; // @[registers.scala 41:39]
  wire  _T_110 = we & _T_109; // @[registers.scala 41:33]
  wire [7:0] _GEN_36 = _T_110 ? dataw : {{7'd0}, _T_108}; // @[registers.scala 41:46]
  reg  _T_111; // @[registers.scala 40:43]
  reg [31:0] _RAND_37;
  wire  _T_112 = addr == 6'h25; // @[registers.scala 41:39]
  wire  _T_113 = we & _T_112; // @[registers.scala 41:33]
  wire [7:0] _GEN_37 = _T_113 ? dataw : {{7'd0}, _T_111}; // @[registers.scala 41:46]
  reg  _T_114; // @[registers.scala 40:43]
  reg [31:0] _RAND_38;
  wire  _T_115 = addr == 6'h26; // @[registers.scala 41:39]
  wire  _T_116 = we & _T_115; // @[registers.scala 41:33]
  wire [7:0] _GEN_38 = _T_116 ? dataw : {{7'd0}, _T_114}; // @[registers.scala 41:46]
  reg  _T_117; // @[registers.scala 40:43]
  reg [31:0] _RAND_39;
  wire  _T_118 = addr == 6'h27; // @[registers.scala 41:39]
  wire  _T_119 = we & _T_118; // @[registers.scala 41:33]
  wire [7:0] _GEN_39 = _T_119 ? dataw : {{7'd0}, _T_117}; // @[registers.scala 41:46]
  reg [7:0] _T_120; // @[registers.scala 40:43]
  reg [31:0] _RAND_40;
  wire  _T_121 = addr == 6'h28; // @[registers.scala 41:39]
  wire  _T_122 = we & _T_121; // @[registers.scala 41:33]
  reg [7:0] _T_123; // @[registers.scala 40:43]
  reg [31:0] _RAND_41;
  wire  _T_124 = addr == 6'h29; // @[registers.scala 41:39]
  wire  _T_125 = we & _T_124; // @[registers.scala 41:33]
  reg [7:0] _T_128_0; // @[registers.scala 51:39]
  reg [31:0] _RAND_42;
  reg [7:0] _T_128_1; // @[registers.scala 51:39]
  reg [31:0] _RAND_43;
  reg [7:0] _T_128_2; // @[registers.scala 51:39]
  reg [31:0] _RAND_44;
  reg [7:0] _T_128_3; // @[registers.scala 51:39]
  reg [31:0] _RAND_45;
  reg [7:0] _T_128_4; // @[registers.scala 51:39]
  reg [31:0] _RAND_46;
  reg [7:0] _T_128_5; // @[registers.scala 51:39]
  reg [31:0] _RAND_47;
  wire [7:0] _T_126_4 = {{5'd0}, _T_12}; // @[registers.scala 48:37 registers.scala 49:26]
  wire [7:0] _T_126_6 = {{4'd0}, _T_18}; // @[registers.scala 48:37 registers.scala 49:26]
  wire [7:0] _T_126_9 = {{3'd0}, _T_27}; // @[registers.scala 48:37 registers.scala 49:26]
  wire [7:0] _T_126_8 = {{3'd0}, _T_24}; // @[registers.scala 48:37 registers.scala 49:26]
  wire [7:0] _T_126_7 = {{6'd0}, _T_21}; // @[registers.scala 48:37 registers.scala 49:26]
  wire [79:0] _T_143 = {_T_126_9,_T_126_8,_T_126_7,_T_126_6,_T_15,_T_126_4,_T_9,_T_6,_T_3,_T}; // @[registers.scala 61:68]
  wire [7:0] _T_126_11 = {{3'd0}, _T_33}; // @[registers.scala 48:37 registers.scala 49:26]
  wire [7:0] _T_126_10 = {{3'd0}, _T_30}; // @[registers.scala 48:37 registers.scala 49:26]
  wire [7:0] _T_126_14 = {{7'd0}, _T_42}; // @[registers.scala 48:37 registers.scala 49:26]
  wire [7:0] _T_126_13 = {{7'd0}, _T_39}; // @[registers.scala 48:37 registers.scala 49:26]
  wire [7:0] _T_126_12 = {{7'd0}, _T_36}; // @[registers.scala 48:37 registers.scala 49:26]
  wire [39:0] _T_147 = {_T_126_14,_T_126_13,_T_126_12,_T_126_11,_T_126_10}; // @[registers.scala 61:68]
  wire [7:0] _T_126_17 = {{6'd0}, _T_51}; // @[registers.scala 48:37 registers.scala 49:26]
  wire [7:0] _T_126_16 = {{5'd0}, _T_48}; // @[registers.scala 48:37 registers.scala 49:26]
  wire [7:0] _T_126_15 = {{5'd0}, _T_45}; // @[registers.scala 48:37 registers.scala 49:26]
  wire [7:0] _T_126_20 = {{7'd0}, _T_60}; // @[registers.scala 48:37 registers.scala 49:26]
  wire [7:0] _T_126_19 = {{7'd0}, _T_57}; // @[registers.scala 48:37 registers.scala 49:26]
  wire [7:0] _T_126_18 = {{6'd0}, _T_54}; // @[registers.scala 48:37 registers.scala 49:26]
  wire [167:0] _T_154 = {_T_126_20,_T_126_19,_T_126_18,_T_126_17,_T_126_16,_T_126_15,_T_147,_T_143}; // @[registers.scala 61:68]
  wire [7:0] _T_126_22 = {{7'd0}, _T_66}; // @[registers.scala 48:37 registers.scala 49:26]
  wire [7:0] _T_126_21 = {{6'd0}, _T_63}; // @[registers.scala 48:37 registers.scala 49:26]
  wire [7:0] _T_126_25 = {{7'd0}, _T_75}; // @[registers.scala 48:37 registers.scala 49:26]
  wire [7:0] _T_126_24 = {{7'd0}, _T_72}; // @[registers.scala 48:37 registers.scala 49:26]
  wire [7:0] _T_126_23 = {{1'd0}, _T_69}; // @[registers.scala 48:37 registers.scala 49:26]
  wire [7:0] _T_126_27 = {{4'd0}, _T_81}; // @[registers.scala 48:37 registers.scala 49:26]
  wire [7:0] _T_126_26 = {{7'd0}, _T_78}; // @[registers.scala 48:37 registers.scala 49:26]
  wire [7:0] _T_126_30 = {{7'd0}, _T_90}; // @[registers.scala 48:37 registers.scala 49:26]
  wire [7:0] _T_126_29 = {{7'd0}, _T_87}; // @[registers.scala 48:37 registers.scala 49:26]
  wire [7:0] _T_126_28 = {{4'd0}, _T_84}; // @[registers.scala 48:37 registers.scala 49:26]
  wire [79:0] _T_163 = {_T_126_30,_T_126_29,_T_126_28,_T_126_27,_T_126_26,_T_126_25,_T_126_24,_T_126_23,_T_126_22,_T_126_21}; // @[registers.scala 61:68]
  wire [7:0] _T_126_32 = {{5'd0}, _T_96}; // @[registers.scala 48:37 registers.scala 49:26]
  wire [7:0] _T_126_31 = {{7'd0}, _T_93}; // @[registers.scala 48:37 registers.scala 49:26]
  wire [7:0] _T_126_35 = {{7'd0}, _T_105}; // @[registers.scala 48:37 registers.scala 49:26]
  wire [7:0] _T_126_34 = {{5'd0}, _T_102}; // @[registers.scala 48:37 registers.scala 49:26]
  wire [7:0] _T_126_33 = {{5'd0}, _T_99}; // @[registers.scala 48:37 registers.scala 49:26]
  wire [39:0] _T_167 = {_T_126_35,_T_126_34,_T_126_33,_T_126_32,_T_126_31}; // @[registers.scala 61:68]
  wire [7:0] _T_126_38 = {{7'd0}, _T_114}; // @[registers.scala 48:37 registers.scala 49:26]
  wire [7:0] _T_126_37 = {{7'd0}, _T_111}; // @[registers.scala 48:37 registers.scala 49:26]
  wire [7:0] _T_126_36 = {{7'd0}, _T_108}; // @[registers.scala 48:37 registers.scala 49:26]
  wire [7:0] _T_126_39 = {{7'd0}, _T_117}; // @[registers.scala 48:37 registers.scala 49:26]
  wire [335:0] _T_175 = {_T_123,_T_120,_T_126_39,_T_126_38,_T_126_37,_T_126_36,_T_167,_T_163,_T_154}; // @[registers.scala 61:68]
  wire [383:0] _T_176 = {_T_128_5,_T_128_4,_T_128_3,_T_128_2,_T_128_1,_T_128_0,_T_175}; // @[Cat.scala 30:58]
  reg [7:0] _T_227; // @[registers.scala 63:37]
  reg [31:0] _RAND_48;
  assign datar = _T_227; // @[registers.scala 64:22]
  assign regwr_0 = _T; // @[registers.scala 46:33]
  assign regwr_1 = _T_3; // @[registers.scala 46:33]
  assign regwr_2 = _T_6; // @[registers.scala 46:33]
  assign regwr_3 = _T_9; // @[registers.scala 46:33]
  assign regwr_4 = _T_12; // @[registers.scala 46:33]
  assign regwr_5 = _T_15; // @[registers.scala 46:33]
  assign regwr_6 = _T_18; // @[registers.scala 46:33]
  assign regwr_7 = _T_21; // @[registers.scala 46:33]
  assign regwr_8 = _T_24; // @[registers.scala 46:33]
  assign regwr_9 = _T_27; // @[registers.scala 46:33]
  assign regwr_10 = _T_30; // @[registers.scala 46:33]
  assign regwr_11 = _T_33; // @[registers.scala 46:33]
  assign regwr_12 = _T_36; // @[registers.scala 46:33]
  assign regwr_13 = _T_39; // @[registers.scala 46:33]
  assign regwr_14 = _T_42; // @[registers.scala 46:33]
  assign regwr_15 = _T_45; // @[registers.scala 46:33]
  assign regwr_16 = _T_48; // @[registers.scala 46:33]
  assign regwr_17 = _T_51; // @[registers.scala 46:33]
  assign regwr_18 = _T_54; // @[registers.scala 46:33]
  assign regwr_19 = _T_57; // @[registers.scala 46:33]
  assign regwr_20 = _T_60; // @[registers.scala 46:33]
  assign regwr_21 = _T_63; // @[registers.scala 46:33]
  assign regwr_22 = _T_66; // @[registers.scala 46:33]
  assign regwr_23 = _T_69; // @[registers.scala 46:33]
  assign regwr_24 = _T_72; // @[registers.scala 46:33]
  assign regwr_25 = _T_75; // @[registers.scala 46:33]
  assign regwr_26 = _T_78; // @[registers.scala 46:33]
  assign regwr_27 = _T_81; // @[registers.scala 46:33]
  assign regwr_28 = _T_84; // @[registers.scala 46:33]
  assign regwr_29 = _T_87; // @[registers.scala 46:33]
  assign regwr_30 = _T_90; // @[registers.scala 46:33]
  assign regwr_31 = _T_93; // @[registers.scala 46:33]
  assign regwr_32 = _T_96; // @[registers.scala 46:33]
  assign regwr_33 = _T_99; // @[registers.scala 46:33]
  assign regwr_34 = _T_102; // @[registers.scala 46:33]
  assign regwr_35 = _T_105; // @[registers.scala 46:33]
  assign regwr_36 = _T_108; // @[registers.scala 46:33]
  assign regwr_37 = _T_111; // @[registers.scala 46:33]
  assign regwr_38 = _T_114; // @[registers.scala 46:33]
  assign regwr_39 = _T_117; // @[registers.scala 46:33]
  assign regwr_40 = _T_120; // @[registers.scala 46:33]
  assign regwr_41 = _T_123; // @[registers.scala 46:33]
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
  `ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  _T = _RAND_0[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  _T_3 = _RAND_1[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  _T_6 = _RAND_2[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  _T_9 = _RAND_3[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  _T_12 = _RAND_4[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{`RANDOM}};
  _T_15 = _RAND_5[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{`RANDOM}};
  _T_18 = _RAND_6[3:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {1{`RANDOM}};
  _T_21 = _RAND_7[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_8 = {1{`RANDOM}};
  _T_24 = _RAND_8[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_9 = {1{`RANDOM}};
  _T_27 = _RAND_9[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_10 = {1{`RANDOM}};
  _T_30 = _RAND_10[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_11 = {1{`RANDOM}};
  _T_33 = _RAND_11[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_12 = {1{`RANDOM}};
  _T_36 = _RAND_12[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_13 = {1{`RANDOM}};
  _T_39 = _RAND_13[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_14 = {1{`RANDOM}};
  _T_42 = _RAND_14[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_15 = {1{`RANDOM}};
  _T_45 = _RAND_15[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_16 = {1{`RANDOM}};
  _T_48 = _RAND_16[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_17 = {1{`RANDOM}};
  _T_51 = _RAND_17[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_18 = {1{`RANDOM}};
  _T_54 = _RAND_18[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_19 = {1{`RANDOM}};
  _T_57 = _RAND_19[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_20 = {1{`RANDOM}};
  _T_60 = _RAND_20[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_21 = {1{`RANDOM}};
  _T_63 = _RAND_21[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_22 = {1{`RANDOM}};
  _T_66 = _RAND_22[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_23 = {1{`RANDOM}};
  _T_69 = _RAND_23[6:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_24 = {1{`RANDOM}};
  _T_72 = _RAND_24[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_25 = {1{`RANDOM}};
  _T_75 = _RAND_25[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_26 = {1{`RANDOM}};
  _T_78 = _RAND_26[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_27 = {1{`RANDOM}};
  _T_81 = _RAND_27[3:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_28 = {1{`RANDOM}};
  _T_84 = _RAND_28[3:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_29 = {1{`RANDOM}};
  _T_87 = _RAND_29[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_30 = {1{`RANDOM}};
  _T_90 = _RAND_30[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_31 = {1{`RANDOM}};
  _T_93 = _RAND_31[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_32 = {1{`RANDOM}};
  _T_96 = _RAND_32[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_33 = {1{`RANDOM}};
  _T_99 = _RAND_33[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_34 = {1{`RANDOM}};
  _T_102 = _RAND_34[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_35 = {1{`RANDOM}};
  _T_105 = _RAND_35[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_36 = {1{`RANDOM}};
  _T_108 = _RAND_36[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_37 = {1{`RANDOM}};
  _T_111 = _RAND_37[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_38 = {1{`RANDOM}};
  _T_114 = _RAND_38[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_39 = {1{`RANDOM}};
  _T_117 = _RAND_39[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_40 = {1{`RANDOM}};
  _T_120 = _RAND_40[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_41 = {1{`RANDOM}};
  _T_123 = _RAND_41[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_42 = {1{`RANDOM}};
  _T_128_0 = _RAND_42[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_43 = {1{`RANDOM}};
  _T_128_1 = _RAND_43[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_44 = {1{`RANDOM}};
  _T_128_2 = _RAND_44[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_45 = {1{`RANDOM}};
  _T_128_3 = _RAND_45[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_46 = {1{`RANDOM}};
  _T_128_4 = _RAND_46[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_47 = {1{`RANDOM}};
  _T_128_5 = _RAND_47[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_48 = {1{`RANDOM}};
  _T_227 = _RAND_48[7:0];
  `endif // RANDOMIZE_REG_INIT
  if (rst) begin
    _T = 8'h81;
  end
  if (rst) begin
    _T_3 = 8'hff;
  end
  if (rst) begin
    _T_6 = 8'h0;
  end
  if (rst) begin
    _T_9 = 8'h0;
  end
  if (rst) begin
    _T_12 = 3'h4;
  end
  if (rst) begin
    _T_15 = 8'hff;
  end
  if (rst) begin
    _T_18 = 4'h0;
  end
  if (rst) begin
    _T_21 = 2'h0;
  end
  if (rst) begin
    _T_24 = 5'hb;
  end
  if (rst) begin
    _T_27 = 5'h2;
  end
  if (rst) begin
    _T_30 = 5'h0;
  end
  if (rst) begin
    _T_33 = 5'h0;
  end
  if (rst) begin
    _T_36 = 1'h0;
  end
  if (rst) begin
    _T_39 = 1'h0;
  end
  if (rst) begin
    _T_42 = 1'h1;
  end
  if (rst) begin
    _T_45 = 3'h3;
  end
  if (rst) begin
    _T_48 = 3'h1;
  end
  if (rst) begin
    _T_51 = 2'h1;
  end
  if (rst) begin
    _T_54 = 2'h1;
  end
  if (rst) begin
    _T_57 = 1'h0;
  end
  if (rst) begin
    _T_60 = 1'h0;
  end
  if (rst) begin
    _T_63 = 2'h0;
  end
  if (rst) begin
    _T_66 = 1'h1;
  end
  if (rst) begin
    _T_69 = 7'h0;
  end
  if (rst) begin
    _T_72 = 1'h0;
  end
  if (rst) begin
    _T_75 = 1'h0;
  end
  if (rst) begin
    _T_78 = 1'h0;
  end
  if (rst) begin
    _T_81 = 4'h0;
  end
  if (rst) begin
    _T_84 = 4'h8;
  end
  if (rst) begin
    _T_87 = 1'h0;
  end
  if (rst) begin
    _T_90 = 1'h0;
  end
  if (rst) begin
    _T_93 = 1'h0;
  end
  if (rst) begin
    _T_96 = 3'h0;
  end
  if (rst) begin
    _T_99 = 3'h0;
  end
  if (rst) begin
    _T_102 = 3'h0;
  end
  if (rst) begin
    _T_105 = 1'h1;
  end
  if (rst) begin
    _T_108 = 1'h1;
  end
  if (rst) begin
    _T_111 = 1'h1;
  end
  if (rst) begin
    _T_114 = 1'h0;
  end
  if (rst) begin
    _T_117 = 1'h0;
  end
  if (rst) begin
    _T_120 = 8'h0;
  end
  if (rst) begin
    _T_123 = 8'h0;
  end
  if (rst) begin
    _T_128_0 = 8'h0;
  end
  if (rst) begin
    _T_128_1 = 8'h0;
  end
  if (rst) begin
    _T_128_2 = 8'h0;
  end
  if (rst) begin
    _T_128_3 = 8'h0;
  end
  if (rst) begin
    _T_128_4 = 8'h0;
  end
  if (rst) begin
    _T_128_5 = 8'h0;
  end
  `endif // RANDOMIZE
end // initial
`endif // SYNTHESIS
  always @(posedge clk) begin
    if (6'h2f == addr) begin
      _T_227 <= _T_176[383:376];
    end else if (6'h2e == addr) begin
      _T_227 <= _T_176[375:368];
    end else if (6'h2d == addr) begin
      _T_227 <= _T_176[367:360];
    end else if (6'h2c == addr) begin
      _T_227 <= _T_176[359:352];
    end else if (6'h2b == addr) begin
      _T_227 <= _T_176[351:344];
    end else if (6'h2a == addr) begin
      _T_227 <= _T_176[343:336];
    end else if (6'h29 == addr) begin
      _T_227 <= _T_176[335:328];
    end else if (6'h28 == addr) begin
      _T_227 <= _T_176[327:320];
    end else if (6'h27 == addr) begin
      _T_227 <= _T_176[319:312];
    end else if (6'h26 == addr) begin
      _T_227 <= _T_176[311:304];
    end else if (6'h25 == addr) begin
      _T_227 <= _T_176[303:296];
    end else if (6'h24 == addr) begin
      _T_227 <= _T_176[295:288];
    end else if (6'h23 == addr) begin
      _T_227 <= _T_176[287:280];
    end else if (6'h22 == addr) begin
      _T_227 <= _T_176[279:272];
    end else if (6'h21 == addr) begin
      _T_227 <= _T_176[271:264];
    end else if (6'h20 == addr) begin
      _T_227 <= _T_176[263:256];
    end else if (6'h1f == addr) begin
      _T_227 <= _T_176[255:248];
    end else if (6'h1e == addr) begin
      _T_227 <= _T_176[247:240];
    end else if (6'h1d == addr) begin
      _T_227 <= _T_176[239:232];
    end else if (6'h1c == addr) begin
      _T_227 <= _T_176[231:224];
    end else if (6'h1b == addr) begin
      _T_227 <= _T_176[223:216];
    end else if (6'h1a == addr) begin
      _T_227 <= _T_176[215:208];
    end else if (6'h19 == addr) begin
      _T_227 <= _T_176[207:200];
    end else if (6'h18 == addr) begin
      _T_227 <= _T_176[199:192];
    end else if (6'h17 == addr) begin
      _T_227 <= _T_176[191:184];
    end else if (6'h16 == addr) begin
      _T_227 <= _T_176[183:176];
    end else if (6'h15 == addr) begin
      _T_227 <= _T_176[175:168];
    end else if (6'h14 == addr) begin
      _T_227 <= _T_176[167:160];
    end else if (6'h13 == addr) begin
      _T_227 <= _T_176[159:152];
    end else if (6'h12 == addr) begin
      _T_227 <= _T_176[151:144];
    end else if (6'h11 == addr) begin
      _T_227 <= _T_176[143:136];
    end else if (6'h10 == addr) begin
      _T_227 <= _T_176[135:128];
    end else if (6'hf == addr) begin
      _T_227 <= _T_176[127:120];
    end else if (6'he == addr) begin
      _T_227 <= _T_176[119:112];
    end else if (6'hd == addr) begin
      _T_227 <= _T_176[111:104];
    end else if (6'hc == addr) begin
      _T_227 <= _T_176[103:96];
    end else if (6'hb == addr) begin
      _T_227 <= _T_176[95:88];
    end else if (6'ha == addr) begin
      _T_227 <= _T_176[87:80];
    end else if (6'h9 == addr) begin
      _T_227 <= _T_176[79:72];
    end else if (6'h8 == addr) begin
      _T_227 <= _T_176[71:64];
    end else if (6'h7 == addr) begin
      _T_227 <= _T_176[63:56];
    end else if (6'h6 == addr) begin
      _T_227 <= _T_176[55:48];
    end else if (6'h5 == addr) begin
      _T_227 <= _T_176[47:40];
    end else if (6'h4 == addr) begin
      _T_227 <= _T_176[39:32];
    end else if (6'h3 == addr) begin
      _T_227 <= _T_176[31:24];
    end else if (6'h2 == addr) begin
      _T_227 <= _T_176[23:16];
    end else if (6'h1 == addr) begin
      _T_227 <= _T_176[15:8];
    end else begin
      _T_227 <= _T_176[7:0];
    end
  end
  always @(posedge clk or posedge rst) begin
    if (rst) begin
      _T <= 8'h81;
    end else if (_T_2) begin
      _T <= dataw;
    end
  end
  always @(posedge clk or posedge rst) begin
    if (rst) begin
      _T_3 <= 8'hff;
    end else if (_T_5) begin
      _T_3 <= dataw;
    end
  end
  always @(posedge clk or posedge rst) begin
    if (rst) begin
      _T_6 <= 8'h0;
    end else if (_T_8) begin
      _T_6 <= dataw;
    end
  end
  always @(posedge clk or posedge rst) begin
    if (rst) begin
      _T_9 <= 8'h0;
    end else if (_T_11) begin
      _T_9 <= dataw;
    end
  end
  always @(posedge clk or posedge rst) begin
    if (rst) begin
      _T_12 <= 3'h4;
    end else begin
      _T_12 <= _GEN_4[2:0];
    end
  end
  always @(posedge clk or posedge rst) begin
    if (rst) begin
      _T_15 <= 8'hff;
    end else if (_T_17) begin
      _T_15 <= dataw;
    end
  end
  always @(posedge clk or posedge rst) begin
    if (rst) begin
      _T_18 <= 4'h0;
    end else begin
      _T_18 <= _GEN_6[3:0];
    end
  end
  always @(posedge clk or posedge rst) begin
    if (rst) begin
      _T_21 <= 2'h0;
    end else begin
      _T_21 <= _GEN_7[1:0];
    end
  end
  always @(posedge clk or posedge rst) begin
    if (rst) begin
      _T_24 <= 5'hb;
    end else begin
      _T_24 <= _GEN_8[4:0];
    end
  end
  always @(posedge clk or posedge rst) begin
    if (rst) begin
      _T_27 <= 5'h2;
    end else begin
      _T_27 <= _GEN_9[4:0];
    end
  end
  always @(posedge clk or posedge rst) begin
    if (rst) begin
      _T_30 <= 5'h0;
    end else begin
      _T_30 <= _GEN_10[4:0];
    end
  end
  always @(posedge clk or posedge rst) begin
    if (rst) begin
      _T_33 <= 5'h0;
    end else begin
      _T_33 <= _GEN_11[4:0];
    end
  end
  always @(posedge clk or posedge rst) begin
    if (rst) begin
      _T_36 <= 1'h0;
    end else begin
      _T_36 <= _GEN_12[0];
    end
  end
  always @(posedge clk or posedge rst) begin
    if (rst) begin
      _T_39 <= 1'h0;
    end else begin
      _T_39 <= _GEN_13[0];
    end
  end
  always @(posedge clk or posedge rst) begin
    if (rst) begin
      _T_42 <= 1'h1;
    end else begin
      _T_42 <= _GEN_14[0];
    end
  end
  always @(posedge clk or posedge rst) begin
    if (rst) begin
      _T_45 <= 3'h3;
    end else begin
      _T_45 <= _GEN_15[2:0];
    end
  end
  always @(posedge clk or posedge rst) begin
    if (rst) begin
      _T_48 <= 3'h1;
    end else begin
      _T_48 <= _GEN_16[2:0];
    end
  end
  always @(posedge clk or posedge rst) begin
    if (rst) begin
      _T_51 <= 2'h1;
    end else begin
      _T_51 <= _GEN_17[1:0];
    end
  end
  always @(posedge clk or posedge rst) begin
    if (rst) begin
      _T_54 <= 2'h1;
    end else begin
      _T_54 <= _GEN_18[1:0];
    end
  end
  always @(posedge clk or posedge rst) begin
    if (rst) begin
      _T_57 <= 1'h0;
    end else begin
      _T_57 <= _GEN_19[0];
    end
  end
  always @(posedge clk or posedge rst) begin
    if (rst) begin
      _T_60 <= 1'h0;
    end else begin
      _T_60 <= _GEN_20[0];
    end
  end
  always @(posedge clk or posedge rst) begin
    if (rst) begin
      _T_63 <= 2'h0;
    end else begin
      _T_63 <= _GEN_21[1:0];
    end
  end
  always @(posedge clk or posedge rst) begin
    if (rst) begin
      _T_66 <= 1'h1;
    end else begin
      _T_66 <= _GEN_22[0];
    end
  end
  always @(posedge clk or posedge rst) begin
    if (rst) begin
      _T_69 <= 7'h0;
    end else begin
      _T_69 <= _GEN_23[6:0];
    end
  end
  always @(posedge clk or posedge rst) begin
    if (rst) begin
      _T_72 <= 1'h0;
    end else begin
      _T_72 <= _GEN_24[0];
    end
  end
  always @(posedge clk or posedge rst) begin
    if (rst) begin
      _T_75 <= 1'h0;
    end else begin
      _T_75 <= _GEN_25[0];
    end
  end
  always @(posedge clk or posedge rst) begin
    if (rst) begin
      _T_78 <= 1'h0;
    end else begin
      _T_78 <= _GEN_26[0];
    end
  end
  always @(posedge clk or posedge rst) begin
    if (rst) begin
      _T_81 <= 4'h0;
    end else begin
      _T_81 <= _GEN_27[3:0];
    end
  end
  always @(posedge clk or posedge rst) begin
    if (rst) begin
      _T_84 <= 4'h8;
    end else begin
      _T_84 <= _GEN_28[3:0];
    end
  end
  always @(posedge clk or posedge rst) begin
    if (rst) begin
      _T_87 <= 1'h0;
    end else begin
      _T_87 <= _GEN_29[0];
    end
  end
  always @(posedge clk or posedge rst) begin
    if (rst) begin
      _T_90 <= 1'h0;
    end else begin
      _T_90 <= _GEN_30[0];
    end
  end
  always @(posedge clk or posedge rst) begin
    if (rst) begin
      _T_93 <= 1'h0;
    end else begin
      _T_93 <= _GEN_31[0];
    end
  end
  always @(posedge clk or posedge rst) begin
    if (rst) begin
      _T_96 <= 3'h0;
    end else begin
      _T_96 <= _GEN_32[2:0];
    end
  end
  always @(posedge clk or posedge rst) begin
    if (rst) begin
      _T_99 <= 3'h0;
    end else begin
      _T_99 <= _GEN_33[2:0];
    end
  end
  always @(posedge clk or posedge rst) begin
    if (rst) begin
      _T_102 <= 3'h0;
    end else begin
      _T_102 <= _GEN_34[2:0];
    end
  end
  always @(posedge clk or posedge rst) begin
    if (rst) begin
      _T_105 <= 1'h1;
    end else begin
      _T_105 <= _GEN_35[0];
    end
  end
  always @(posedge clk or posedge rst) begin
    if (rst) begin
      _T_108 <= 1'h1;
    end else begin
      _T_108 <= _GEN_36[0];
    end
  end
  always @(posedge clk or posedge rst) begin
    if (rst) begin
      _T_111 <= 1'h1;
    end else begin
      _T_111 <= _GEN_37[0];
    end
  end
  always @(posedge clk or posedge rst) begin
    if (rst) begin
      _T_114 <= 1'h0;
    end else begin
      _T_114 <= _GEN_38[0];
    end
  end
  always @(posedge clk or posedge rst) begin
    if (rst) begin
      _T_117 <= 1'h0;
    end else begin
      _T_117 <= _GEN_39[0];
    end
  end
  always @(posedge clk or posedge rst) begin
    if (rst) begin
      _T_120 <= 8'h0;
    end else if (_T_122) begin
      _T_120 <= dataw;
    end
  end
  always @(posedge clk or posedge rst) begin
    if (rst) begin
      _T_123 <= 8'h0;
    end else if (_T_125) begin
      _T_123 <= dataw;
    end
  end
  always @(posedge clk or posedge rst) begin
    if (rst) begin
      _T_128_0 <= 8'h0;
    end else begin
      _T_128_0 <= {{4'd0}, regr_0};
    end
  end
  always @(posedge clk or posedge rst) begin
    if (rst) begin
      _T_128_1 <= 8'h0;
    end else begin
      _T_128_1 <= {{1'd0}, regr_1};
    end
  end
  always @(posedge clk or posedge rst) begin
    if (rst) begin
      _T_128_2 <= 8'h0;
    end else begin
      _T_128_2 <= regr_2;
    end
  end
  always @(posedge clk or posedge rst) begin
    if (rst) begin
      _T_128_3 <= 8'h0;
    end else begin
      _T_128_3 <= regr_3;
    end
  end
  always @(posedge clk or posedge rst) begin
    if (rst) begin
      _T_128_4 <= 8'h0;
    end else begin
      _T_128_4 <= regr_4;
    end
  end
  always @(posedge clk or posedge rst) begin
    if (rst) begin
      _T_128_5 <= 8'h0;
    end else begin
      _T_128_5 <= regr_5;
    end
  end
endmodule
