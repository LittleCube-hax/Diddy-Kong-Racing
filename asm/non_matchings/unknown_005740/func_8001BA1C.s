glabel func_8001BA1C
/* 01C61C 8001BA1C 2406003C */  li    $a2, 60
/* 01C620 8001BA20 00860019 */  multu $a0, $a2
/* 01C624 8001BA24 3C028012 */  lui   $v0, %hi(D_8011AECC) # $v0, 0x8012
/* 01C628 8001BA28 8C42AECC */  lw    $v0, %lo(D_8011AECC)($v0)
/* 01C62C 8001BA2C 00007012 */  mflo  $t6
/* 01C630 8001BA30 01C21821 */  addu  $v1, $t6, $v0
/* 01C634 8001BA34 10A00009 */  beqz  $a1, .L8001BA5C
/* 01C638 8001BA38 00000000 */   nop   
/* 01C63C 8001BA3C 8064003A */  lb    $a0, 0x3a($v1)
/* 01C640 8001BA40 2401FFFF */  li    $at, -1
/* 01C644 8001BA44 10810005 */  beq   $a0, $at, .L8001BA5C
/* 01C648 8001BA48 00000000 */   nop   
/* 01C64C 8001BA4C 00860019 */  multu $a0, $a2
/* 01C650 8001BA50 00007812 */  mflo  $t7
/* 01C654 8001BA54 01E21821 */  addu  $v1, $t7, $v0
/* 01C658 8001BA58 00000000 */  nop   
.L8001BA5C:
/* 01C65C 8001BA5C 03E00008 */  jr    $ra
/* 01C660 8001BA60 00601025 */   move  $v0, $v1

