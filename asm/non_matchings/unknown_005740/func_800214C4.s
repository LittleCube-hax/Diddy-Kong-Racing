glabel func_800214C4
/* 0220C4 800214C4 3C0E8012 */  lui   $t6, %hi(D_8011AD21) # $t6, 0x8012
/* 0220C8 800214C8 81CEAD21 */  lb    $t6, %lo(D_8011AD21)($t6)
/* 0220CC 800214CC 3C028012 */  lui   $v0, 0x8012
/* 0220D0 800214D0 000E7823 */  negu  $t7, $t6
/* 0220D4 800214D4 004F1021 */  addu  $v0, $v0, $t7
/* 0220D8 800214D8 8042AD23 */  lb    $v0, -0x52dd($v0)
/* 0220DC 800214DC 03E00008 */  jr    $ra
/* 0220E0 800214E0 00000000 */   nop   

