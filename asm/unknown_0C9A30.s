.include "globals.inc"
.include "macros.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # dont insert nops after branches
.set gp=64     # 64-bit instructions are used

glabel func_800C8E30
/* 0C9A30 800C8E30 27BDFFC8 */  addiu $sp, $sp, -0x38
/* 0C9A34 800C8E34 AFBF0024 */  sw    $ra, 0x24($sp)
/* 0C9A38 800C8E38 AFA40038 */  sw    $a0, 0x38($sp)
/* 0C9A3C 800C8E3C AFA5003C */  sw    $a1, 0x3c($sp)
/* 0C9A40 800C8E40 AFA60040 */  sw    $a2, 0x40($sp)
/* 0C9A44 800C8E44 AFB20020 */  sw    $s2, 0x20($sp)
/* 0C9A48 800C8E48 AFB1001C */  sw    $s1, 0x1c($sp)
/* 0C9A4C 800C8E4C 0C034958 */  jal   __osDisableInt
/* 0C9A50 800C8E50 AFB00018 */   sw    $s0, 0x18($sp)
/* 0C9A54 800C8E54 8FAE0038 */  lw    $t6, 0x38($sp)
/* 0C9A58 800C8E58 00408025 */  move  $s0, $v0
/* 0C9A5C 800C8E5C 8DCF0008 */  lw    $t7, 8($t6)
/* 0C9A60 800C8E60 8DD80010 */  lw    $t8, 0x10($t6)
/* 0C9A64 800C8E64 01F8082A */  slt   $at, $t7, $t8
/* 0C9A68 800C8E68 14200018 */  bnez  $at, .L800C8ECC
/* 0C9A6C 800C8E6C 00000000 */   nop   
.L800C8E70:
/* 0C9A70 800C8E70 8FB90040 */  lw    $t9, 0x40($sp)
/* 0C9A74 800C8E74 24010001 */  li    $at, 1
/* 0C9A78 800C8E78 1721000A */  bne   $t9, $at, .L800C8EA4
/* 0C9A7C 800C8E7C 00000000 */   nop   
/* 0C9A80 800C8E80 3C09800E */  lui   $t1, %hi(D_800E4890) # $t1, 0x800e
/* 0C9A84 800C8E84 8D294890 */  lw    $t1, %lo(D_800E4890)($t1)
/* 0C9A88 800C8E88 24080008 */  li    $t0, 8
/* 0C9A8C 800C8E8C A5280010 */  sh    $t0, 0x10($t1)
/* 0C9A90 800C8E90 8FA40038 */  lw    $a0, 0x38($sp)
/* 0C9A94 800C8E94 0C034CB3 */  jal   __osEnqueueAndYield
/* 0C9A98 800C8E98 24840004 */   addiu $a0, $a0, 4
/* 0C9A9C 800C8E9C 10000005 */  b     .L800C8EB4
/* 0C9AA0 800C8EA0 00000000 */   nop   
.L800C8EA4:
/* 0C9AA4 800C8EA4 0C034960 */  jal   __osRestoreInt
/* 0C9AA8 800C8EA8 02002025 */   move  $a0, $s0
/* 0C9AAC 800C8EAC 1000002D */  b     .L800C8F64
/* 0C9AB0 800C8EB0 2402FFFF */   li    $v0, -1
.L800C8EB4:
/* 0C9AB4 800C8EB4 8FAA0038 */  lw    $t2, 0x38($sp)
/* 0C9AB8 800C8EB8 8D4B0008 */  lw    $t3, 8($t2)
/* 0C9ABC 800C8EBC 8D4C0010 */  lw    $t4, 0x10($t2)
/* 0C9AC0 800C8EC0 016C082A */  slt   $at, $t3, $t4
/* 0C9AC4 800C8EC4 1020FFEA */  beqz  $at, .L800C8E70
/* 0C9AC8 800C8EC8 00000000 */   nop   
.L800C8ECC:
/* 0C9ACC 800C8ECC 8FAD0038 */  lw    $t5, 0x38($sp)
/* 0C9AD0 800C8ED0 8FA8003C */  lw    $t0, 0x3c($sp)
/* 0C9AD4 800C8ED4 8DAE000C */  lw    $t6, 0xc($t5)
/* 0C9AD8 800C8ED8 8DAF0008 */  lw    $t7, 8($t5)
/* 0C9ADC 800C8EDC 8DB90010 */  lw    $t9, 0x10($t5)
/* 0C9AE0 800C8EE0 8DA90014 */  lw    $t1, 0x14($t5)
/* 0C9AE4 800C8EE4 01CFC021 */  addu  $t8, $t6, $t7
/* 0C9AE8 800C8EE8 0319001A */  div   $zero, $t8, $t9
/* 0C9AEC 800C8EEC 00008810 */  mfhi  $s1
/* 0C9AF0 800C8EF0 00115080 */  sll   $t2, $s1, 2
/* 0C9AF4 800C8EF4 012A5821 */  addu  $t3, $t1, $t2
/* 0C9AF8 800C8EF8 AD680000 */  sw    $t0, ($t3)
/* 0C9AFC 800C8EFC 8FAC0038 */  lw    $t4, 0x38($sp)
/* 0C9B00 800C8F00 17200002 */  bnez  $t9, .L800C8F0C
/* 0C9B04 800C8F04 00000000 */   nop   
/* 0C9B08 800C8F08 0007000D */  break 7
.L800C8F0C:
/* 0C9B0C 800C8F0C 2401FFFF */  li    $at, -1
/* 0C9B10 800C8F10 17210004 */  bne   $t9, $at, .L800C8F24
/* 0C9B14 800C8F14 3C018000 */   lui   $at, 0x8000
/* 0C9B18 800C8F18 17010002 */  bne   $t8, $at, .L800C8F24
/* 0C9B1C 800C8F1C 00000000 */   nop   
/* 0C9B20 800C8F20 0006000D */  break 6
.L800C8F24:
/* 0C9B24 800C8F24 8D8E0008 */  lw    $t6, 8($t4)
/* 0C9B28 800C8F28 25CF0001 */  addiu $t7, $t6, 1
/* 0C9B2C 800C8F2C AD8F0008 */  sw    $t7, 8($t4)
/* 0C9B30 800C8F30 8FB80038 */  lw    $t8, 0x38($sp)
/* 0C9B34 800C8F34 8F190000 */  lw    $t9, ($t8)
/* 0C9B38 800C8F38 8F2D0000 */  lw    $t5, ($t9)
/* 0C9B3C 800C8F3C 11A00006 */  beqz  $t5, .L800C8F58
/* 0C9B40 800C8F40 00000000 */   nop   
/* 0C9B44 800C8F44 0C034D05 */  jal   __osPopThread
/* 0C9B48 800C8F48 03002025 */   move  $a0, $t8
/* 0C9B4C 800C8F4C 00409025 */  move  $s2, $v0
/* 0C9B50 800C8F50 0C032268 */  jal   osStartThread
/* 0C9B54 800C8F54 02402025 */   move  $a0, $s2
.L800C8F58:
/* 0C9B58 800C8F58 0C034960 */  jal   __osRestoreInt
/* 0C9B5C 800C8F5C 02002025 */   move  $a0, $s0
/* 0C9B60 800C8F60 00001025 */  move  $v0, $zero
.L800C8F64:
/* 0C9B64 800C8F64 8FBF0024 */  lw    $ra, 0x24($sp)
/* 0C9B68 800C8F68 8FB00018 */  lw    $s0, 0x18($sp)
/* 0C9B6C 800C8F6C 8FB1001C */  lw    $s1, 0x1c($sp)
/* 0C9B70 800C8F70 8FB20020 */  lw    $s2, 0x20($sp)
/* 0C9B74 800C8F74 03E00008 */  jr    $ra
/* 0C9B78 800C8F78 27BD0038 */   addiu $sp, $sp, 0x38

/* 0C9B7C 800C8F7C 00000000 */  nop   
