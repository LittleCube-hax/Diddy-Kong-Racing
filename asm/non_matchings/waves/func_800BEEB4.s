glabel func_800BEEB4
/* 0BFAB4 800BEEB4 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0BFAB8 800BEEB8 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0BFABC 800BEEBC 948E0004 */  lhu   $t6, 4($a0)
/* 0BFAC0 800BEEC0 94830006 */  lhu   $v1, 6($a0)
/* 0BFAC4 800BEEC4 01C57821 */  addu  $t7, $t6, $a1
/* 0BFAC8 800BEEC8 31E2FFFF */  andi  $v0, $t7, 0xffff
/* 0BFACC 800BEECC 0043082A */  slt   $at, $v0, $v1
/* 0BFAD0 800BEED0 00803825 */  move  $a3, $a0
/* 0BFAD4 800BEED4 14200006 */  bnez  $at, .L800BEEF0
/* 0BFAD8 800BEED8 A48F0004 */   sh    $t7, 4($a0)
.L800BEEDC:
/* 0BFADC 800BEEDC 0043C023 */  subu  $t8, $v0, $v1
/* 0BFAE0 800BEEE0 3302FFFF */  andi  $v0, $t8, 0xffff
/* 0BFAE4 800BEEE4 0043082A */  slt   $at, $v0, $v1
/* 0BFAE8 800BEEE8 1020FFFC */  beqz  $at, .L800BEEDC
/* 0BFAEC 800BEEEC A4F80004 */   sh    $t8, 4($a3)
.L800BEEF0:
/* 0BFAF0 800BEEF0 0002C843 */  sra   $t9, $v0, 1
/* 0BFAF4 800BEEF4 00F92021 */  addu  $a0, $a3, $t9
/* 0BFAF8 800BEEF8 8088000E */  lb    $t0, 0xe($a0)
/* 0BFAFC 800BEEFC 30490001 */  andi  $t1, $v0, 1
/* 0BFB00 800BEF00 11200012 */  beqz  $t1, .L800BEF4C
/* 0BFB04 800BEF04 244A0001 */   addiu $t2, $v0, 1
/* 0BFB08 800BEF08 0143082A */  slt   $at, $t2, $v1
/* 0BFB0C 800BEF0C 14200004 */  bnez  $at, .L800BEF20
/* 0BFB10 800BEF10 00000000 */   nop   
/* 0BFB14 800BEF14 80EB000E */  lb    $t3, 0xe($a3)
/* 0BFB18 800BEF18 10000004 */  b     .L800BEF2C
/* 0BFB1C 800BEF1C 010B4021 */   addu  $t0, $t0, $t3
.L800BEF20:
/* 0BFB20 800BEF20 808C000F */  lb    $t4, 0xf($a0)
/* 0BFB24 800BEF24 00000000 */  nop   
/* 0BFB28 800BEF28 010C4021 */  addu  $t0, $t0, $t4
.L800BEF2C:
/* 0BFB2C 800BEF2C 90E20002 */  lbu   $v0, 2($a3)
/* 0BFB30 800BEF30 00087043 */  sra   $t6, $t0, 1
/* 0BFB34 800BEF34 18400003 */  blez  $v0, .L800BEF44
/* 0BFB38 800BEF38 244D001F */   addiu $t5, $v0, 0x1f
/* 0BFB3C 800BEF3C 10000006 */  b     .L800BEF58
/* 0BFB40 800BEF40 01A84004 */   sllv  $t0, $t0, $t5
.L800BEF44:
/* 0BFB44 800BEF44 10000004 */  b     .L800BEF58
/* 0BFB48 800BEF48 01C04025 */   move  $t0, $t6
.L800BEF4C:
/* 0BFB4C 800BEF4C 90EF0002 */  lbu   $t7, 2($a3)
/* 0BFB50 800BEF50 00000000 */  nop   
/* 0BFB54 800BEF54 01E84004 */  sllv  $t0, $t0, $t7
.L800BEF58:
/* 0BFB58 800BEF58 44882000 */  mtc1  $t0, $f4
/* 0BFB5C 800BEF5C 84F80000 */  lh    $t8, ($a3)
/* 0BFB60 800BEF60 468021A0 */  cvt.s.w $f6, $f4
/* 0BFB64 800BEF64 3C013FB0 */  li    $at, 0x3FB00000 # 1.375000
/* 0BFB68 800BEF68 44815800 */  mtc1  $at, $f11
/* 0BFB6C 800BEF6C 44805000 */  mtc1  $zero, $f10
/* 0BFB70 800BEF70 44989000 */  mtc1  $t8, $f18
/* 0BFB74 800BEF74 46003221 */  cvt.d.s $f8, $f6
/* 0BFB78 800BEF78 462A4402 */  mul.d $f16, $f8, $f10
/* 0BFB7C 800BEF7C 46809120 */  cvt.s.w $f4, $f18
/* 0BFB80 800BEF80 3C018013 */  lui   $at, %hi(D_80129FC8 + 64) # $at, 0x8013
/* 0BFB84 800BEF84 C42AA008 */  lwc1  $f10, %lo(D_80129FC8 + 64)($at)
/* 0BFB88 800BEF88 94E4000C */  lhu   $a0, 0xc($a3)
/* 0BFB8C 800BEF8C 460021A1 */  cvt.d.s $f6, $f4
/* 0BFB90 800BEF90 46268200 */  add.d $f8, $f16, $f6
/* 0BFB94 800BEF94 94E50008 */  lhu   $a1, 8($a3)
/* 0BFB98 800BEF98 462040A0 */  cvt.s.d $f2, $f8
/* 0BFB9C 800BEF9C 94E6000A */  lhu   $a2, 0xa($a3)
/* 0BFBA0 800BEFA0 460A1082 */  mul.s $f2, $f2, $f10
/* 0BFBA4 800BEFA4 0C02FBF1 */  jal   func_800BEFC4
/* 0BFBA8 800BEFA8 E7A20018 */   swc1  $f2, 0x18($sp)
/* 0BFBAC 800BEFAC C7A20018 */  lwc1  $f2, 0x18($sp)
/* 0BFBB0 800BEFB0 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0BFBB4 800BEFB4 46001080 */  add.s $f2, $f2, $f0
/* 0BFBB8 800BEFB8 27BD0020 */  addiu $sp, $sp, 0x20
/* 0BFBBC 800BEFBC 03E00008 */  jr    $ra
/* 0BFBC0 800BEFC0 46001006 */   mov.s $f0, $f2

