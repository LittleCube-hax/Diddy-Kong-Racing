glabel func_8000114C
/* 001D4C 8000114C 3C0E800E */  lui   $t6, %hi(D_800DC630) # $t6, 0x800e
/* 001D50 80001150 8DCEC630 */  lw    $t6, %lo(D_800DC630)($t6)
/* 001D54 80001154 24180001 */  li    $t8, 1
/* 001D58 80001158 95CF0030 */  lhu   $t7, 0x30($t6)
/* 001D5C 8000115C 0098C804 */  sllv  $t9, $t8, $a0
/* 001D60 80001160 01F91024 */  and   $v0, $t7, $t9
/* 001D64 80001164 2C480001 */  sltiu $t0, $v0, 1
/* 001D68 80001168 03E00008 */  jr    $ra
/* 001D6C 8000116C 01001025 */   move  $v0, $t0
