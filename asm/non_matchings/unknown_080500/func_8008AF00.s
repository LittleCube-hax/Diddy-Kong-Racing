glabel func_8008AF00
/* 08BB00 8008AF00 3C0E8012 */  lui   $t6, 0x8012
/* 08BB04 8008AF04 24060001 */  li    $a2, 1
/* 08BB08 8008AF08 3C01800E */  lui   $at, %hi(D_800DF4BC) # $at, 0x800e
/* 08BB0C 8008AF0C 25C563E8 */  addiu $a1, $t6, 0x63e8
/* 08BB10 8008AF10 3C028012 */  lui   $v0, %hi(D_801263F0) # $v0, 0x8012
/* 08BB14 8008AF14 AC26F4BC */  sw    $a2, %lo(D_800DF4BC)($at)
/* 08BB18 8008AF18 244263F0 */  addiu $v0, %lo(D_801263F0) # addiu $v0, $v0, 0x63f0
/* 08BB1C 8008AF1C 00851821 */  addu  $v1, $a0, $a1
/* 08BB20 8008AF20 2407FFFF */  li    $a3, -1
.L8008AF24:
/* 08BB24 8008AF24 14A30003 */  bne   $a1, $v1, .L8008AF34
/* 08BB28 8008AF28 00000000 */   nop   
/* 08BB2C 8008AF2C 10000002 */  b     .L8008AF38
/* 08BB30 8008AF30 A0A60000 */   sb    $a2, ($a1)
.L8008AF34:
/* 08BB34 8008AF34 A0A70000 */  sb    $a3, ($a1)
.L8008AF38:
/* 08BB38 8008AF38 24A50001 */  addiu $a1, $a1, 1
/* 08BB3C 8008AF3C 00A2082B */  sltu  $at, $a1, $v0
/* 08BB40 8008AF40 1420FFF8 */  bnez  $at, .L8008AF24
/* 08BB44 8008AF44 00000000 */   nop   
/* 08BB48 8008AF48 14800005 */  bnez  $a0, .L8008AF60
/* 08BB4C 8008AF4C 3C018012 */   lui   $at, 0x8012
/* 08BB50 8008AF50 240F0001 */  li    $t7, 1
/* 08BB54 8008AF54 3C018012 */  lui   $at, %hi(D_801263D4) # $at, 0x8012
/* 08BB58 8008AF58 10000002 */  b     .L8008AF64
/* 08BB5C 8008AF5C A02F63D4 */   sb    $t7, %lo(D_801263D4)($at)
.L8008AF60:
/* 08BB60 8008AF60 A02063D4 */  sb    $zero, %lo(D_801263D4)($at)
.L8008AF64:
/* 08BB64 8008AF64 24010001 */  li    $at, 1
/* 08BB68 8008AF68 14810004 */  bne   $a0, $at, .L8008AF7C
/* 08BB6C 8008AF6C 24180001 */   li    $t8, 1
/* 08BB70 8008AF70 3C018012 */  lui   $at, %hi(D_801263D5) # $at, 0x8012
/* 08BB74 8008AF74 10000003 */  b     .L8008AF84
/* 08BB78 8008AF78 A03863D5 */   sb    $t8, %lo(D_801263D5)($at)
.L8008AF7C:
/* 08BB7C 8008AF7C 3C018012 */  lui   $at, %hi(D_801263D5) # $at, 0x8012
/* 08BB80 8008AF80 A02063D5 */  sb    $zero, %lo(D_801263D5)($at)
.L8008AF84:
/* 08BB84 8008AF84 24010002 */  li    $at, 2
/* 08BB88 8008AF88 14810004 */  bne   $a0, $at, .L8008AF9C
/* 08BB8C 8008AF8C 24190001 */   li    $t9, 1
/* 08BB90 8008AF90 3C018012 */  lui   $at, %hi(D_801263D6) # $at, 0x8012
/* 08BB94 8008AF94 10000003 */  b     .L8008AFA4
/* 08BB98 8008AF98 A03963D6 */   sb    $t9, %lo(D_801263D6)($at)
.L8008AF9C:
/* 08BB9C 8008AF9C 3C018012 */  lui   $at, %hi(D_801263D6) # $at, 0x8012
/* 08BBA0 8008AFA0 A02063D6 */  sb    $zero, %lo(D_801263D6)($at)
.L8008AFA4:
/* 08BBA4 8008AFA4 24010003 */  li    $at, 3
/* 08BBA8 8008AFA8 14810004 */  bne   $a0, $at, .L8008AFBC
/* 08BBAC 8008AFAC 24080001 */   li    $t0, 1
/* 08BBB0 8008AFB0 3C018012 */  lui   $at, 0x8012
/* 08BBB4 8008AFB4 03E00008 */  jr    $ra
/* 08BBB8 8008AFB8 A02863D7 */   sb    $t0, 0x63d7($at)

.L8008AFBC:
/* 08BBBC 8008AFBC 3C018012 */  lui   $at, %hi(D_801263D7) # $at, 0x8012
/* 08BBC0 8008AFC0 A02063D7 */  sb    $zero, %lo(D_801263D7)($at)
/* 08BBC4 8008AFC4 03E00008 */  jr    $ra
/* 08BBC8 8008AFC8 00000000 */   nop   
