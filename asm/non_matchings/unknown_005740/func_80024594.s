glabel func_80024594
/* 025194 80024594 3C0E800E */  lui   $t6, %hi(D_800DC700) # $t6, 0x800e
/* 025198 80024598 8DCEC700 */  lw    $t6, %lo(D_800DC700)($t6)
/* 02519C 8002459C 240F0080 */  li    $t7, 128
/* 0251A0 800245A0 3C028012 */  lui   $v0, 0x8012
/* 0251A4 800245A4 AC8E0000 */  sw    $t6, ($a0)
/* 0251A8 800245A8 ACAF0000 */  sw    $t7, ($a1)
/* 0251AC 800245AC 03E00008 */  jr    $ra
/* 0251B0 800245B0 2442AC20 */   addiu $v0, $v0, -0x53e0

