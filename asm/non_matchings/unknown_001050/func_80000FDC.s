glabel func_80000FDC
/* 001BDC 80000FDC 44866000 */  mtc1  $a2, $f12
/* 001BE0 80000FE0 3C06800E */  lui   $a2, %hi(D_800DC658) # $a2, 0x800e
/* 001BE4 80000FE4 24C6C658 */  addiu $a2, %lo(D_800DC658) # addiu $a2, $a2, -0x39a8
/* 001BE8 80000FE8 8CC20000 */  lw    $v0, ($a2)
/* 001BEC 80000FEC AFA40000 */  sw    $a0, ($sp)
/* 001BF0 80000FF0 28410008 */  slti  $at, $v0, 8
/* 001BF4 80000FF4 10200014 */  beqz  $at, .L80001048
/* 001BF8 80000FF8 308EFFFF */   andi  $t6, $a0, 0xffff
/* 001BFC 80000FFC 3C014270 */  li    $at, 0x42700000 # 60.000000
/* 001C00 80001000 44812000 */  mtc1  $at, $f4
/* 001C04 80001004 3C188011 */  lui   $t8, %hi(D_80115D48) # $t8, 0x8011
/* 001C08 80001008 46046182 */  mul.s $f6, $f12, $f4
/* 001C0C 8000100C 27185D48 */  addiu $t8, %lo(D_80115D48) # addiu $t8, $t8, 0x5d48
/* 001C10 80001010 000278C0 */  sll   $t7, $v0, 3
/* 001C14 80001014 01F81821 */  addu  $v1, $t7, $t8
/* 001C18 80001018 4459F800 */  cfc1  $t9, $31
/* 001C1C 8000101C 24490001 */  addiu $t1, $v0, 1
/* 001C20 80001020 37210003 */  ori   $at, $t9, 3
/* 001C24 80001024 38210002 */  xori  $at, $at, 2
/* 001C28 80001028 44C1F800 */  ctc1  $at, $31
/* 001C2C 8000102C A46E0000 */  sh    $t6, ($v1)
/* 001C30 80001030 46003224 */  cvt.w.s $f8, $f6
/* 001C34 80001034 AC650004 */  sw    $a1, 4($v1)
/* 001C38 80001038 44084000 */  mfc1  $t0, $f8
/* 001C3C 8000103C 44D9F800 */  ctc1  $t9, $31
/* 001C40 80001040 ACC90000 */  sw    $t1, ($a2)
/* 001C44 80001044 A4680002 */  sh    $t0, 2($v1)
.L80001048:
/* 001C48 80001048 03E00008 */  jr    $ra
/* 001C4C 8000104C 00000000 */   nop   
