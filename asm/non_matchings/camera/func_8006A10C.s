glabel func_8006A10C
/* 06AD0C 8006A10C 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 06AD10 8006A110 AFBF0014 */  sw    $ra, 0x14($sp)
/* 06AD14 8006A114 3C048012 */  lui   $a0, %hi(D_801210E0) # $a0, 0x8012
/* 06AD18 8006A118 3C058012 */  lui   $a1, %hi(D_801210F8) # $a1, 0x8012
/* 06AD1C 8006A11C 24A510F8 */  addiu $a1, %lo(D_801210F8) # addiu $a1, $a1, 0x10f8
/* 06AD20 8006A120 248410E0 */  addiu $a0, %lo(D_801210E0) # addiu $a0, $a0, 0x10e0
/* 06AD24 8006A124 0C032208 */  jal   osCreateMesgQueue
/* 06AD28 8006A128 24060001 */   li    $a2, 1
/* 06AD2C 8006A12C 3C068012 */  lui   $a2, %hi(D_801210FC) # $a2, 0x8012
/* 06AD30 8006A130 8CC610FC */  lw    $a2, %lo(D_801210FC)($a2)
/* 06AD34 8006A134 3C058012 */  lui   $a1, %hi(D_801210E0) # $a1, 0x8012
/* 06AD38 8006A138 24A510E0 */  addiu $a1, %lo(D_801210E0) # addiu $a1, $a1, 0x10e0
/* 06AD3C 8006A13C 0C0332EC */  jal   osSetEventMesg
/* 06AD40 8006A140 24040005 */   li    $a0, 5
/* 06AD44 8006A144 3C048012 */  lui   $a0, %hi(D_801210E0) # $a0, 0x8012
/* 06AD48 8006A148 3C068012 */  lui   $a2, %hi(D_80121100) # $a2, 0x8012
/* 06AD4C 8006A14C 24C61100 */  addiu $a2, %lo(D_80121100) # addiu $a2, $a2, 0x1100
/* 06AD50 8006A150 248410E0 */  addiu $a0, %lo(D_801210E0) # addiu $a0, $a0, 0x10e0
/* 06AD54 8006A154 0C033308 */  jal   osContInit
/* 06AD58 8006A158 27A50023 */   addiu $a1, $sp, 0x23
/* 06AD5C 8006A15C 3C048012 */  lui   $a0, %hi(D_801210E0) # $a0, 0x8012
/* 06AD60 8006A160 0C0333F8 */  jal   osContStartReadData
/* 06AD64 8006A164 248410E0 */   addiu $a0, %lo(D_801210E0) # addiu $a0, $a0, 0x10e0
/* 06AD68 8006A168 0C01A90D */  jal   func_8006A434
/* 06AD6C 8006A16C 00000000 */   nop   
/* 06AD70 8006A170 93A20023 */  lbu   $v0, 0x23($sp)
/* 06AD74 8006A174 3C03800E */  lui   $v1, %hi(D_800DD300) # $v1, 0x800e
/* 06AD78 8006A178 2463D300 */  addiu $v1, %lo(D_800DD300) # addiu $v1, $v1, -0x2d00
/* 06AD7C 8006A17C 304E0001 */  andi  $t6, $v0, 1
/* 06AD80 8006A180 11C00009 */  beqz  $t6, .L8006A1A8
/* 06AD84 8006A184 AC600000 */   sw    $zero, ($v1)
/* 06AD88 8006A188 3C0F8012 */  lui   $t7, %hi(D_80121100+3) # $t7, 0x8012
/* 06AD8C 8006A18C 91EF1103 */  lbu   $t7, %lo(D_80121100+3)($t7)
/* 06AD90 8006A190 00000000 */  nop   
/* 06AD94 8006A194 31F80008 */  andi  $t8, $t7, 8
/* 06AD98 8006A198 17000004 */  bnez  $t8, .L8006A1AC
/* 06AD9C 8006A19C 24190001 */   li    $t9, 1
/* 06ADA0 8006A1A0 10000004 */  b     .L8006A1B4
/* 06ADA4 8006A1A4 00001025 */   move  $v0, $zero
.L8006A1A8:
/* 06ADA8 8006A1A8 24190001 */  li    $t9, 1
.L8006A1AC:
/* 06ADAC 8006A1AC AC790000 */  sw    $t9, ($v1)
/* 06ADB0 8006A1B0 2402FFFF */  li    $v0, -1
.L8006A1B4:
/* 06ADB4 8006A1B4 8FBF0014 */  lw    $ra, 0x14($sp)
/* 06ADB8 8006A1B8 27BD0028 */  addiu $sp, $sp, 0x28
/* 06ADBC 8006A1BC 03E00008 */  jr    $ra
/* 06ADC0 8006A1C0 00000000 */   nop   

