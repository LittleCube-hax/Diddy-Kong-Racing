.late_rodata
glabel D_800E8414
.float 0.1

.text
glabel func_80086A48
/* 087648 80086A48 3C0E8012 */  lui   $t6, %hi(D_80126BD4) # $t6, 0x8012
/* 08764C 80086A4C 8DCE6BD4 */  lw    $t6, %lo(D_80126BD4)($t6)
/* 087650 80086A50 3C0F8012 */  lui   $t7, %hi(D_80126BE4) # $t7, 0x8012
/* 087654 80086A54 448E9000 */  mtc1  $t6, $f18
/* 087658 80086A58 8DEF6BE4 */  lw    $t7, %lo(D_80126BE4)($t7)
/* 08765C 80086A5C 46809020 */  cvt.s.w $f0, $f18
/* 087660 80086A60 448F9000 */  mtc1  $t7, $f18
/* 087664 80086A64 18800023 */  blez  $a0, .L80086AF4
/* 087668 80086A68 468090A0 */   cvt.s.w $f2, $f18
/* 08766C 80086A6C 3C028012 */  lui   $v0, %hi(D_80126A08) # $v0, 0x8012
/* 087670 80086A70 3C038012 */  lui   $v1, %hi(D_801263E0) # $v1, 0x8012
/* 087674 80086A74 3C01800F */  lui   $at, %hi(D_800E8414) # $at, 0x800f
/* 087678 80086A78 3C078012 */  lui   $a3, %hi(D_80126BEC) # $a3, 0x8012
/* 08767C 80086A7C 3C068012 */  lui   $a2, %hi(D_80126A00) # $a2, 0x8012
/* 087680 80086A80 3C058012 */  lui   $a1, %hi(D_80126BDC) # $a1, 0x8012
/* 087684 80086A84 C4308414 */  lwc1  $f16, %lo(D_800E8414)($at)
/* 087688 80086A88 8C6363E0 */  lw    $v1, %lo(D_801263E0)($v1)
/* 08768C 80086A8C 8C426A08 */  lw    $v0, %lo(D_80126A08)($v0)
/* 087690 80086A90 24A56BDC */  addiu $a1, %lo(D_80126BDC) # addiu $a1, $a1, 0x6bdc
/* 087694 80086A94 24C66A00 */  addiu $a2, %lo(D_80126A00) # addiu $a2, $a2, 0x6a00
/* 087698 80086A98 24E76BEC */  addiu $a3, %lo(D_80126BEC) # addiu $a3, $a3, 0x6bec
.L80086A9C:
/* 08769C 80086A9C 18400007 */  blez  $v0, .L80086ABC
/* 0876A0 80086AA0 2484FFFF */   addiu $a0, $a0, -1
/* 0876A4 80086AA4 C4AE0000 */  lwc1  $f14, ($a1)
/* 0876A8 80086AA8 00000000 */  nop   
/* 0876AC 80086AAC 460E0301 */  sub.s $f12, $f0, $f14
/* 0876B0 80086AB0 460C8202 */  mul.s $f8, $f16, $f12
/* 0876B4 80086AB4 46087280 */  add.s $f10, $f14, $f8
/* 0876B8 80086AB8 E4AA0000 */  swc1  $f10, ($a1)
.L80086ABC:
/* 0876BC 80086ABC 1860000B */  blez  $v1, .L80086AEC
/* 0876C0 80086AC0 00000000 */   nop   
/* 0876C4 80086AC4 8CD80000 */  lw    $t8, ($a2)
/* 0876C8 80086AC8 00000000 */  nop   
/* 0876CC 80086ACC 1B000007 */  blez  $t8, .L80086AEC
/* 0876D0 80086AD0 00000000 */   nop   
/* 0876D4 80086AD4 C4EE0000 */  lwc1  $f14, ($a3)
/* 0876D8 80086AD8 00000000 */  nop   
/* 0876DC 80086ADC 460E1301 */  sub.s $f12, $f2, $f14
/* 0876E0 80086AE0 460C8482 */  mul.s $f18, $f16, $f12
/* 0876E4 80086AE4 46127100 */  add.s $f4, $f14, $f18
/* 0876E8 80086AE8 E4E40000 */  swc1  $f4, ($a3)
.L80086AEC:
/* 0876EC 80086AEC 1C80FFEB */  bgtz  $a0, .L80086A9C
/* 0876F0 80086AF0 00000000 */   nop   
.L80086AF4:
/* 0876F4 80086AF4 03E00008 */  jr    $ra
/* 0876F8 80086AF8 00000000 */   nop   
