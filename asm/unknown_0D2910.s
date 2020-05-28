.include "globals.inc"
.include "macros.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # dont insert nops after branches
.set gp=64     # 64-bit instructions are used

glabel func_800D1D10
/* 0D2910 800D1D10 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 0D2914 800D1D14 AFBF001C */  sw    $ra, 0x1c($sp)
/* 0D2918 800D1D18 AFA40028 */  sw    $a0, 0x28($sp)
/* 0D291C 800D1D1C 0C034958 */  jal   __osDisableInt
/* 0D2920 800D1D20 AFB00018 */   sw    $s0, 0x18($sp)
/* 0D2924 800D1D24 93AE002B */  lbu   $t6, 0x2b($sp)
/* 0D2928 800D1D28 00408025 */  move  $s0, $v0
/* 0D292C 800D1D2C 11C00007 */  beqz  $t6, .L800D1D4C
/* 0D2930 800D1D30 00000000 */   nop   
/* 0D2934 800D1D34 3C0F800E */  lui   $t7, %hi(D_800E4874) # $t7, 0x800e
/* 0D2938 800D1D38 8DEF4874 */  lw    $t7, %lo(D_800E4874)($t7)
/* 0D293C 800D1D3C 95F80000 */  lhu   $t8, ($t7)
/* 0D2940 800D1D40 37190020 */  ori   $t9, $t8, 0x20
/* 0D2944 800D1D44 10000007 */  b     .L800D1D64
/* 0D2948 800D1D48 A5F90000 */   sh    $t9, ($t7)
.L800D1D4C:
/* 0D294C 800D1D4C 3C08800E */  lui   $t0, %hi(D_800E4874) # $t0, 0x800e
/* 0D2950 800D1D50 8D084874 */  lw    $t0, %lo(D_800E4874)($t0)
/* 0D2954 800D1D54 2401FFDF */  li    $at, -33
/* 0D2958 800D1D58 95090000 */  lhu   $t1, ($t0)
/* 0D295C 800D1D5C 01215024 */  and   $t2, $t1, $at
/* 0D2960 800D1D60 A50A0000 */  sh    $t2, ($t0)
.L800D1D64:
/* 0D2964 800D1D64 0C034960 */  jal   __osRestoreInt
/* 0D2968 800D1D68 02002025 */   move  $a0, $s0
/* 0D296C 800D1D6C 8FBF001C */  lw    $ra, 0x1c($sp)
/* 0D2970 800D1D70 8FB00018 */  lw    $s0, 0x18($sp)
/* 0D2974 800D1D74 27BD0028 */  addiu $sp, $sp, 0x28
/* 0D2978 800D1D78 03E00008 */  jr    $ra
/* 0D297C 800D1D7C 00000000 */   nop   
