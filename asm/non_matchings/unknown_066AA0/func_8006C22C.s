glabel func_8006C22C
/* 06CE2C 8006C22C 3C08800E */  lui   $t0, %hi(D_800DD328) # $t0, 0x800e
/* 06CE30 8006C230 2508D328 */  addiu $t0, %lo(D_800DD328) # addiu $t0, $t0, -0x2cd8
/* 06CE34 8006C234 850E0000 */  lh    $t6, ($t0)
/* 06CE38 8006C238 3C098012 */  lui   $t1, %hi(D_801211C8) # $t1, 0x8012
/* 06CE3C 8006C23C 25CFFFFF */  addiu $t7, $t6, -1
/* 06CE40 8006C240 A50F0000 */  sh    $t7, ($t0)
/* 06CE44 8006C244 85180000 */  lh    $t8, ($t0)
/* 06CE48 8006C248 252911C8 */  addiu $t1, %lo(D_801211C8) # addiu $t1, $t1, 0x11c8
/* 06CE4C 8006C24C 0018C840 */  sll   $t9, $t8, 1
/* 06CE50 8006C250 01395021 */  addu  $t2, $t1, $t9
/* 06CE54 8006C254 854B0000 */  lh    $t3, ($t2)
/* 06CE58 8006C258 2401FFFF */  li    $at, -1
/* 06CE5C 8006C25C ACEB0000 */  sw    $t3, ($a3)
/* 06CE60 8006C260 850C0000 */  lh    $t4, ($t0)
/* 06CE64 8006C264 00000000 */  nop   
/* 06CE68 8006C268 258DFFFF */  addiu $t5, $t4, -1
/* 06CE6C 8006C26C A50D0000 */  sh    $t5, ($t0)
/* 06CE70 8006C270 85020000 */  lh    $v0, ($t0)
/* 06CE74 8006C274 00000000 */  nop   
/* 06CE78 8006C278 00027040 */  sll   $t6, $v0, 1
/* 06CE7C 8006C27C 012E7821 */  addu  $t7, $t1, $t6
/* 06CE80 8006C280 85E30000 */  lh    $v1, ($t7)
/* 06CE84 8006C284 2458FFFF */  addiu $t8, $v0, -1
/* 06CE88 8006C288 A5180000 */  sh    $t8, ($t0)
/* 06CE8C 8006C28C 85190000 */  lh    $t9, ($t0)
/* 06CE90 8006C290 00000000 */  nop   
/* 06CE94 8006C294 00195040 */  sll   $t2, $t9, 1
/* 06CE98 8006C298 012A5821 */  addu  $t3, $t1, $t2
/* 06CE9C 8006C29C 856C0000 */  lh    $t4, ($t3)
/* 06CEA0 8006C2A0 240B0001 */  li    $t3, 1
/* 06CEA4 8006C2A4 ACAC0000 */  sw    $t4, ($a1)
/* 06CEA8 8006C2A8 850D0000 */  lh    $t5, ($t0)
/* 06CEAC 8006C2AC 00000000 */  nop   
/* 06CEB0 8006C2B0 25AEFFFF */  addiu $t6, $t5, -1
/* 06CEB4 8006C2B4 A50E0000 */  sh    $t6, ($t0)
/* 06CEB8 8006C2B8 850F0000 */  lh    $t7, ($t0)
/* 06CEBC 8006C2BC 00000000 */  nop   
/* 06CEC0 8006C2C0 000FC040 */  sll   $t8, $t7, 1
/* 06CEC4 8006C2C4 0138C821 */  addu  $t9, $t1, $t8
/* 06CEC8 8006C2C8 872A0000 */  lh    $t2, ($t9)
/* 06CECC 8006C2CC 10610002 */  beq   $v1, $at, .L8006C2D8
/* 06CED0 8006C2D0 AC8A0000 */   sw    $t2, ($a0)
/* 06CED4 8006C2D4 ACC30000 */  sw    $v1, ($a2)
.L8006C2D8:
/* 06CED8 8006C2D8 3C01800E */  lui   $at, 0x800e
/* 06CEDC 8006C2DC 03E00008 */  jr    $ra
/* 06CEE0 8006C2E0 A42BD32C */   sh    $t3, -0x2cd4($at)
