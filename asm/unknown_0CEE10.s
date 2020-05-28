.include "globals.inc"
.include "macros.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # dont insert nops after branches
.set gp=64     # 64-bit instructions are used

glabel func_800CE210
/* 0CEE10 800CE210 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0CEE14 800CE214 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0CEE18 800CE218 AFA40020 */  sw    $a0, 0x20($sp)
/* 0CEE1C 800CE21C 0C033594 */  jal   func_800CD650
/* 0CEE20 800CE220 AFA0001C */   sw    $zero, 0x1c($sp)
/* 0CEE24 800CE224 8FA40020 */  lw    $a0, 0x20($sp)
/* 0CEE28 800CE228 0C033A0F */  jal   func_800CE83C
/* 0CEE2C 800CE22C 27A50018 */   addiu $a1, $sp, 0x18
/* 0CEE30 800CE230 AFA2001C */  sw    $v0, 0x1c($sp)
/* 0CEE34 800CE234 8FAE001C */  lw    $t6, 0x1c($sp)
/* 0CEE38 800CE238 15C00008 */  bnez  $t6, .L800CE25C
/* 0CEE3C 800CE23C 00000000 */   nop   
/* 0CEE40 800CE240 97AF0018 */  lhu   $t7, 0x18($sp)
/* 0CEE44 800CE244 31F88000 */  andi  $t8, $t7, 0x8000
/* 0CEE48 800CE248 13000004 */  beqz  $t8, .L800CE25C
/* 0CEE4C 800CE24C 00000000 */   nop   
/* 0CEE50 800CE250 24190001 */  li    $t9, 1
/* 0CEE54 800CE254 10000002 */  b     .L800CE260
/* 0CEE58 800CE258 AFB9001C */   sw    $t9, 0x1c($sp)
.L800CE25C:
/* 0CEE5C 800CE25C AFA0001C */  sw    $zero, 0x1c($sp)
.L800CE260:
/* 0CEE60 800CE260 0C0335A5 */  jal   func_800CD694
/* 0CEE64 800CE264 00000000 */   nop   
/* 0CEE68 800CE268 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0CEE6C 800CE26C 8FA2001C */  lw    $v0, 0x1c($sp)
/* 0CEE70 800CE270 27BD0020 */  addiu $sp, $sp, 0x20
/* 0CEE74 800CE274 03E00008 */  jr    $ra
/* 0CEE78 800CE278 00000000 */   nop   

/* 0CEE7C 800CE27C 00000000 */  nop   
