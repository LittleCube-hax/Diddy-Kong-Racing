glabel func_8000C604
/* 00D204 8000C604 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 00D208 8000C608 AFBF0024 */  sw    $ra, 0x24($sp)
/* 00D20C 8000C60C AFB30020 */  sw    $s3, 0x20($sp)
/* 00D210 8000C610 AFB2001C */  sw    $s2, 0x1c($sp)
/* 00D214 8000C614 AFB10018 */  sw    $s1, 0x18($sp)
/* 00D218 8000C618 0C0166D3 */  jal   func_80059B4C
/* 00D21C 8000C61C AFB00014 */   sw    $s0, 0x14($sp)
/* 00D220 8000C620 3C10800E */  lui   $s0, %hi(D_800DC71C) # $s0, 0x800e
/* 00D224 8000C624 3C01800E */  lui   $at, %hi(D_800DC748) # $at, 0x800e
/* 00D228 8000C628 2610C71C */  addiu $s0, %lo(D_800DC71C) # addiu $s0, $s0, -0x38e4
/* 00D22C 8000C62C A020C748 */  sb    $zero, %lo(D_800DC748)($at)
/* 00D230 8000C630 820E0000 */  lb    $t6, ($s0)
/* 00D234 8000C634 00000000 */  nop   
/* 00D238 8000C638 11C00003 */  beqz  $t6, .L8000C648
/* 00D23C 8000C63C 00000000 */   nop   
/* 00D240 8000C640 0C01C8A6 */  jal   func_80072298
/* 00D244 8000C644 24040001 */   li    $a0, 1
.L8000C648:
/* 00D248 8000C648 3C11800E */  lui   $s1, %hi(D_800DC744) # $s1, 0x800e
/* 00D24C 8000C64C 2631C744 */  addiu $s1, %lo(D_800DC744) # addiu $s1, $s1, -0x38bc
/* 00D250 8000C650 822F0000 */  lb    $t7, ($s1)
/* 00D254 8000C654 A2000000 */  sb    $zero, ($s0)
/* 00D258 8000C658 11E00007 */  beqz  $t7, .L8000C678
/* 00D25C 8000C65C 00000000 */   nop   
/* 00D260 8000C660 0C027B20 */  jal   func_8009EC80
/* 00D264 8000C664 00000000 */   nop   
/* 00D268 8000C668 10400003 */  beqz  $v0, .L8000C678
/* 00D26C 8000C66C 00000000 */   nop   
/* 00D270 8000C670 0C01BCE6 */  jal   func_8006F398
/* 00D274 8000C674 A2200000 */   sb    $zero, ($s1)
.L8000C678:
/* 00D278 8000C678 0C004013 */  jal   func_8001004C
/* 00D27C 8000C67C 00000000 */   nop   
/* 00D280 8000C680 3C128012 */  lui   $s2, %hi(D_8011AE5C) # $s2, 0x8012
/* 00D284 8000C684 8E52AE5C */  lw    $s2, %lo(D_8011AE5C)($s2)
/* 00D288 8000C688 00008025 */  move  $s0, $zero
/* 00D28C 8000C68C 1A40000C */  blez  $s2, .L8000C6C0
/* 00D290 8000C690 00008825 */   move  $s1, $zero
/* 00D294 8000C694 3C138012 */  lui   $s3, %hi(D_8011AE58) # $s3, 0x8012
/* 00D298 8000C698 2673AE58 */  addiu $s3, %lo(D_8011AE58) # addiu $s3, $s3, -0x51a8
.L8000C69C:
/* 00D29C 8000C69C 8E780000 */  lw    $t8, ($s3)
/* 00D2A0 8000C6A0 24050001 */  li    $a1, 1
/* 00D2A4 8000C6A4 0311C821 */  addu  $t9, $t8, $s1
/* 00D2A8 8000C6A8 8F240000 */  lw    $a0, ($t9)
/* 00D2AC 8000C6AC 0C00406B */  jal   func_800101AC
/* 00D2B0 8000C6B0 00000000 */   nop   
/* 00D2B4 8000C6B4 26100001 */  addiu $s0, $s0, 1
/* 00D2B8 8000C6B8 1612FFF8 */  bne   $s0, $s2, .L8000C69C
/* 00D2BC 8000C6BC 26310004 */   addiu $s1, $s1, 4
.L8000C6C0:
/* 00D2C0 8000C6C0 3C018012 */  lui   $at, %hi(D_8011AEC8) # $at, 0x8012
/* 00D2C4 8000C6C4 AC20AEC8 */  sw    $zero, %lo(D_8011AEC8)($at)
/* 00D2C8 8000C6C8 3C018012 */  lui   $at, %hi(D_8011AE5C) # $at, 0x8012
/* 00D2CC 8000C6CC AC20AE5C */  sw    $zero, %lo(D_8011AE5C)($at)
/* 00D2D0 8000C6D0 3C018012 */  lui   $at, %hi(D_8011AE60) # $at, 0x8012
/* 00D2D4 8000C6D4 0C003118 */  jal   func_8000C460
/* 00D2D8 8000C6D8 AC20AE60 */   sw    $zero, %lo(D_8011AE60)($at)
/* 00D2DC 8000C6DC 3C108012 */  lui   $s0, %hi(D_8011AEB0) # $s0, 0x8012
/* 00D2E0 8000C6E0 2610AEB0 */  addiu $s0, %lo(D_8011AEB0) # addiu $s0, $s0, -0x5150
/* 00D2E4 8000C6E4 8E040000 */  lw    $a0, ($s0)
/* 00D2E8 8000C6E8 0C01C450 */  jal   func_80071140
/* 00D2EC 8000C6EC 00000000 */   nop   
/* 00D2F0 8000C6F0 8E040004 */  lw    $a0, 4($s0)
/* 00D2F4 8000C6F4 0C01C450 */  jal   func_80071140
/* 00D2F8 8000C6F8 00000000 */   nop   
/* 00D2FC 8000C6FC 8FBF0024 */  lw    $ra, 0x24($sp)
/* 00D300 8000C700 8FB00014 */  lw    $s0, 0x14($sp)
/* 00D304 8000C704 8FB10018 */  lw    $s1, 0x18($sp)
/* 00D308 8000C708 8FB2001C */  lw    $s2, 0x1c($sp)
/* 00D30C 8000C70C 8FB30020 */  lw    $s3, 0x20($sp)
/* 00D310 8000C710 03E00008 */  jr    $ra
/* 00D314 8000C714 27BD0028 */   addiu $sp, $sp, 0x28

