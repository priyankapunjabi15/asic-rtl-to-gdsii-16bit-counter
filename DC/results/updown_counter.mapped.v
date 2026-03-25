/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : W-2024.09
// Date      : Mon Jun  2 11:38:08 2025
/////////////////////////////////////////////////////////////


module updown_counter ( Clock, Reset, Enable, UPDN, COUNT );
  output [15:0] COUNT;
  input Clock, Reset, Enable, UPDN;
  wire   n4, n5, n6, n7, n19, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88,
         n89;

  DFFX1_RVT \COUNT_reg[13]  ( .D(n6), .CLK(Clock), .Q(COUNT[13]) );
  DFFX1_RVT \COUNT_reg[12]  ( .D(n7), .CLK(Clock), .Q(COUNT[12]) );
  DFFX1_RVT \COUNT_reg[11]  ( .D(n79), .CLK(Clock), .Q(COUNT[11]) );
  DFFX1_RVT \COUNT_reg[10]  ( .D(n82), .CLK(Clock), .Q(COUNT[10]) );
  DFFX1_RVT \COUNT_reg[9]  ( .D(n81), .CLK(Clock), .Q(COUNT[9]) );
  DFFX1_RVT \COUNT_reg[8]  ( .D(n86), .CLK(Clock), .Q(COUNT[8]) );
  DFFX1_RVT \COUNT_reg[7]  ( .D(n80), .CLK(Clock), .Q(COUNT[7]) );
  DFFX1_RVT \COUNT_reg[6]  ( .D(n85), .CLK(Clock), .Q(COUNT[6]) );
  DFFX1_RVT \COUNT_reg[5]  ( .D(n89), .CLK(Clock), .Q(COUNT[5]) );
  DFFX1_RVT \COUNT_reg[4]  ( .D(n84), .CLK(Clock), .Q(COUNT[4]) );
  DFFX1_RVT \COUNT_reg[3]  ( .D(n88), .CLK(Clock), .Q(COUNT[3]) );
  DFFX1_RVT \COUNT_reg[2]  ( .D(n83), .CLK(Clock), .Q(COUNT[2]) );
  DFFX1_RVT \COUNT_reg[1]  ( .D(n87), .CLK(Clock), .Q(COUNT[1]) );
  DFFX1_RVT \COUNT_reg[0]  ( .D(n19), .CLK(Clock), .Q(COUNT[0]), .QN(n34) );
  DFFARX1_RVT \COUNT_reg[14]  ( .D(n5), .CLK(Clock), .RSTB(1'b1), .Q(COUNT[14]) );
  DFFARX1_RVT \COUNT_reg[15]  ( .D(n4), .CLK(Clock), .RSTB(1'b1), .Q(COUNT[15]) );
  INVX1_RVT U23 ( .A(n32), .Y(n62) );
  INVX1_RVT U24 ( .A(n32), .Y(n59) );
  INVX0_RVT U25 ( .A(Enable), .Y(n21) );
  INVX0_RVT U26 ( .A(n21), .Y(n22) );
  INVX0_RVT U27 ( .A(n29), .Y(n41) );
  INVX0_RVT U28 ( .A(n22), .Y(n30) );
  INVX0_RVT U29 ( .A(n41), .Y(n70) );
  INVX0_RVT U30 ( .A(n41), .Y(n74) );
  INVX0_RVT U31 ( .A(n54), .Y(n52) );
  OR2X1_RVT U32 ( .A1(n22), .A2(Reset), .Y(n54) );
  INVX0_RVT U33 ( .A(n31), .Y(n33) );
  INVX0_RVT U34 ( .A(n54), .Y(n76) );
  INVX0_RVT U35 ( .A(UPDN), .Y(n35) );
  INVX1_RVT U36 ( .A(n27), .Y(n23) );
  NBUFFX2_RVT U37 ( .A(n72), .Y(n24) );
  NBUFFX2_RVT U38 ( .A(n26), .Y(n25) );
  NBUFFX2_RVT U39 ( .A(n35), .Y(n26) );
  NBUFFX2_RVT U40 ( .A(n31), .Y(n27) );
  NBUFFX2_RVT U41 ( .A(n29), .Y(n28) );
  AO22X1_RVT U42 ( .A1(n28), .A2(n60), .A3(COUNT[5]), .A4(n75), .Y(n89) );
  AO22X1_RVT U43 ( .A1(n28), .A2(n48), .A3(COUNT[4]), .A4(n76), .Y(n84) );
  AO22X1_RVT U44 ( .A1(n28), .A2(n57), .A3(COUNT[3]), .A4(n75), .Y(n88) );
  AO22X1_RVT U45 ( .A1(COUNT[0]), .A2(n76), .A3(n28), .A4(n34), .Y(n19) );
  NOR2X0_RVT U46 ( .A1(n30), .A2(Reset), .Y(n29) );
  NBUFFX2_RVT U47 ( .A(UPDN), .Y(n31) );
  INVX0_RVT U48 ( .A(n35), .Y(n32) );
  INVX1_RVT U51 ( .A(n27), .Y(n47) );
  INVX0_RVT U52 ( .A(n27), .Y(n72) );
  AO22X1_RVT U53 ( .A1(n70), .A2(n36), .A3(n52), .A4(COUNT[11]), .Y(n79) );
  FADDX1_RVT U54 ( .A(COUNT[7]), .B(n62), .CI(n37), .CO(n51), .S(n38) );
  AO22X1_RVT U55 ( .A1(n70), .A2(n38), .A3(n52), .A4(COUNT[7]), .Y(n80) );
  FADDX1_RVT U56 ( .A(COUNT[9]), .B(n24), .CI(n39), .CO(n42), .S(n40) );
  AO22X1_RVT U57 ( .A1(n70), .A2(n40), .A3(n52), .A4(COUNT[9]), .Y(n81) );
  FADDX1_RVT U58 ( .A(COUNT[10]), .B(n23), .CI(n42), .CO(n61), .S(n43) );
  AO22X1_RVT U59 ( .A1(n74), .A2(n43), .A3(n52), .A4(COUNT[10]), .Y(n82) );
  FADDX1_RVT U60 ( .A(COUNT[2]), .B(n44), .CI(n26), .CO(n56), .S(n45) );
  AO22X1_RVT U61 ( .A1(COUNT[2]), .A2(n76), .A3(n70), .A4(n45), .Y(n83) );
  FADDX1_RVT U62 ( .A(COUNT[4]), .B(n47), .CI(n46), .CO(n58), .S(n48) );
  FADDX1_RVT U63 ( .A(COUNT[6]), .B(n59), .CI(n49), .CO(n37), .S(n50) );
  AO22X1_RVT U64 ( .A1(n74), .A2(n50), .A3(n76), .A4(COUNT[6]), .Y(n85) );
  FADDX1_RVT U65 ( .A(COUNT[8]), .B(n72), .CI(n51), .CO(n39), .S(n53) );
  AO22X1_RVT U66 ( .A1(n74), .A2(n53), .A3(n52), .A4(COUNT[8]), .Y(n86) );
  INVX0_RVT U67 ( .A(n54), .Y(n75) );
  FADDX1_RVT U68 ( .A(COUNT[1]), .B(COUNT[0]), .CI(n33), .CO(n44), .S(n55) );
  AO22X1_RVT U69 ( .A1(COUNT[1]), .A2(n75), .A3(n74), .A4(n55), .Y(n87) );
  FADDX1_RVT U70 ( .A(COUNT[3]), .B(n25), .CI(n56), .CO(n46), .S(n57) );
  FADDX1_RVT U71 ( .A(COUNT[5]), .B(n59), .CI(n58), .CO(n49), .S(n60) );
  FADDX1_RVT U72 ( .A(COUNT[11]), .B(n62), .CI(n61), .CO(n71), .S(n36) );
  XOR2X1_RVT U73 ( .A1(n62), .A2(COUNT[15]), .Y(n63) );
  XOR2X1_RVT U74 ( .A1(n64), .A2(n63), .Y(n65) );
  AO22X1_RVT U75 ( .A1(COUNT[15]), .A2(n76), .A3(n65), .A4(n70), .Y(n4) );
  FADDX1_RVT U76 ( .A(COUNT[14]), .B(n23), .CI(n66), .CO(n64), .S(n67) );
  AO22X1_RVT U77 ( .A1(COUNT[14]), .A2(n75), .A3(n74), .A4(n67), .Y(n5) );
  FADDX1_RVT U78 ( .A(COUNT[13]), .B(n23), .CI(n68), .CO(n66), .S(n69) );
  AO22X1_RVT U79 ( .A1(COUNT[13]), .A2(n76), .A3(n70), .A4(n69), .Y(n6) );
  FADDX1_RVT U80 ( .A(COUNT[12]), .B(n24), .CI(n71), .CO(n68), .S(n73) );
  AO22X1_RVT U81 ( .A1(COUNT[12]), .A2(n75), .A3(n74), .A4(n73), .Y(n7) );
endmodule

