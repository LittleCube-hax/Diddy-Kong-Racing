glabel func_80052188
/* 052D88 80052188 3C038012 */  lui   $v1, %hi(D_8011D582) # $v1, 0x8012
/* 052D8C 8005218C 2463D582 */  addiu $v1, %lo(D_8011D582) # addiu $v1, $v1, -0x2a7e
/* 052D90 80052190 806E0000 */  lb    $t6, ($v1)
/* 052D94 80052194 24010002 */  li    $at, 2
/* 052D98 80052198 15C10004 */  bne   $t6, $at, .L800521AC
/* 052D9C 8005219C 240F0001 */   li    $t7, 1
/* 052DA0 800521A0 A06F0000 */  sb    $t7, ($v1)
/* 052DA4 800521A4 03E00008 */  jr    $ra
/* 052DA8 800521A8 24020001 */   li    $v0, 1

.L800521AC:
/* 052DAC 800521AC 00001025 */  move  $v0, $zero
/* 052DB0 800521B0 03E00008 */  jr    $ra
/* 052DB4 800521B4 00000000 */   nop   
