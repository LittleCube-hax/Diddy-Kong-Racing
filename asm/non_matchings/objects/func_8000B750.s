.late_rodata
glabel D_800E5130
.float 1.09
glabel D_800E5134
.float 1.18

.text
glabel func_8000B750
/* 00C350 8000B750 27BDFF80 */  addiu $sp, $sp, -0x80
/* 00C354 8000B754 AFB00028 */  sw    $s0, 0x28($sp)
/* 00C358 8000B758 2401FFFF */  li    $at, -1
/* 00C35C 8000B75C 00A08025 */  move  $s0, $a1
/* 00C360 8000B760 AFBF002C */  sw    $ra, 0x2c($sp)
/* 00C364 8000B764 AFA40080 */  sw    $a0, 0x80($sp)
/* 00C368 8000B768 14A10007 */  bne   $a1, $at, .L8000B788
/* 00C36C 8000B76C AFA7008C */   sw    $a3, 0x8c($sp)
/* 00C370 8000B770 3C03800E */  lui   $v1, %hi(D_800DC760) # $v1, 0x800e
/* 00C374 8000B774 2463C760 */  addiu $v1, %lo(D_800DC760) # addiu $v1, $v1, -0x38a0
/* 00C378 8000B778 8C700000 */  lw    $s0, ($v1)
/* 00C37C 8000B77C 00000000 */  nop   
/* 00C380 8000B780 260EFFFF */  addiu $t6, $s0, -1
/* 00C384 8000B784 AC6E0000 */  sw    $t6, ($v1)
.L8000B788:
/* 00C388 8000B788 3C03800E */  lui   $v1, %hi(D_800DC760) # $v1, 0x800e
/* 00C38C 8000B78C 2463C760 */  addiu $v1, %lo(D_800DC760) # addiu $v1, $v1, -0x38a0
/* 00C390 8000B790 8C6F0000 */  lw    $t7, ($v1)
/* 00C394 8000B794 2A01000A */  slti  $at, $s0, 0xa
/* 00C398 8000B798 05E10002 */  bgez  $t7, .L8000B7A4
/* 00C39C 8000B79C 00000000 */   nop   
/* 00C3A0 8000B7A0 AC600000 */  sw    $zero, ($v1)
.L8000B7A4:
/* 00C3A4 8000B7A4 060000CA */  bltz  $s0, .L8000BAD0
/* 00C3A8 8000B7A8 8FBF002C */   lw    $ra, 0x2c($sp)
/* 00C3AC 8000B7AC 102000C7 */  beqz  $at, .L8000BACC
/* 00C3B0 8000B7B0 24040014 */   li    $a0, 20
/* 00C3B4 8000B7B4 0C0078A7 */  jal   get_misc_asset
/* 00C3B8 8000B7B8 AFA60088 */   sw    $a2, 0x88($sp)
/* 00C3BC 8000B7BC 3C0E8012 */  lui   $t6, %hi(D_8011B020) # $t6, 0x8012
/* 00C3C0 8000B7C0 25CEB020 */  addiu $t6, %lo(D_8011B020) # addiu $t6, $t6, -0x4fe0
/* 00C3C4 8000B7C4 00106880 */  sll   $t5, $s0, 2
/* 00C3C8 8000B7C8 8FA5008C */  lw    $a1, 0x8c($sp)
/* 00C3CC 8000B7CC 01AE5021 */  addu  $t2, $t5, $t6
/* 00C3D0 8000B7D0 8D470000 */  lw    $a3, ($t2)
/* 00C3D4 8000B7D4 0010C9C0 */  sll   $t9, $s0, 7
/* 00C3D8 8000B7D8 8FA60088 */  lw    $a2, 0x88($sp)
/* 00C3DC 8000B7DC 03221821 */  addu  $v1, $t9, $v0
/* 00C3E0 8000B7E0 0005C1C0 */  sll   $t8, $a1, 7
/* 00C3E4 8000B7E4 03026021 */  addu  $t4, $t8, $v0
/* 00C3E8 8000B7E8 10E000B8 */  beqz  $a3, .L8000BACC
/* 00C3EC 8000B7EC 00605825 */   move  $t3, $v1
/* 00C3F0 8000B7F0 10C00009 */  beqz  $a2, .L8000B818
/* 00C3F4 8000B7F4 24010001 */   li    $at, 1
/* 00C3F8 8000B7F8 10C10009 */  beq   $a2, $at, .L8000B820
/* 00C3FC 8000B7FC 24010002 */   li    $at, 2
/* 00C400 8000B800 10C10009 */  beq   $a2, $at, .L8000B828
/* 00C404 8000B804 2401000D */   li    $at, 13
/* 00C408 8000B808 10C10009 */  beq   $a2, $at, .L8000B830
/* 00C40C 8000B80C 24620048 */   addiu $v0, $v1, 0x48
/* 00C410 8000B810 10000007 */  b     .L8000B830
/* 00C414 8000B814 00001025 */   move  $v0, $zero
.L8000B818:
/* 00C418 8000B818 10000005 */  b     .L8000B830
/* 00C41C 8000B81C 00601025 */   move  $v0, $v1
.L8000B820:
/* 00C420 8000B820 10000003 */  b     .L8000B830
/* 00C424 8000B824 24620024 */   addiu $v0, $v1, 0x24
.L8000B828:
/* 00C428 8000B828 10000001 */  b     .L8000B830
/* 00C42C 8000B82C 24620048 */   addiu $v0, $v1, 0x48
.L8000B830:
/* 00C430 8000B830 104000A1 */  beqz  $v0, .L8000BAB8
/* 00C434 8000B834 3C018012 */   lui   $at, %hi(D_8011B048) # $at, 0x8012
/* 00C438 8000B838 00300821 */  addu  $at, $at, $s0
/* 00C43C 8000B83C A026B048 */  sb    $a2, %lo(D_8011B048)($at)
/* 00C440 8000B840 3C018012 */  lui   $at, %hi(D_8011B058) # $at, 0x8012
/* 00C444 8000B844 00300821 */  addu  $at, $at, $s0
/* 00C448 8000B848 A025B058 */  sb    $a1, %lo(D_8011B058)($at)
/* 00C44C 8000B84C 906F0070 */  lbu   $t7, 0x70($v1)
/* 00C450 8000B850 24010002 */  li    $at, 2
/* 00C454 8000B854 15E10070 */  bne   $t7, $at, .L8000BA18
/* 00C458 8000B858 8FA40080 */   lw    $a0, 0x80($sp)
/* 00C45C 8000B85C 91780072 */  lbu   $t8, 0x72($t3)
/* 00C460 8000B860 AFAC0048 */  sw    $t4, 0x48($sp)
/* 00C464 8000B864 0018CF00 */  sll   $t9, $t8, 0x1c
/* 00C468 8000B868 00192403 */  sra   $a0, $t9, 0x10
/* 00C46C 8000B86C AFAB004C */  sw    $t3, 0x4c($sp)
/* 00C470 8000B870 AFAA0038 */  sw    $t2, 0x38($sp)
/* 00C474 8000B874 0C01C1FE */  jal   coss_f
/* 00C478 8000B878 AFA20044 */   sw    $v0, 0x44($sp)
/* 00C47C 8000B87C 8FA20044 */  lw    $v0, 0x44($sp)
/* 00C480 8000B880 8FAB004C */  lw    $t3, 0x4c($sp)
/* 00C484 8000B884 C4460018 */  lwc1  $f6, 0x18($v0)
/* 00C488 8000B888 C4440014 */  lwc1  $f4, 0x14($v0)
/* 00C48C 8000B88C 46060202 */  mul.s $f8, $f0, $f6
/* 00C490 8000B890 C56C0074 */  lwc1  $f12, 0x74($t3)
/* 00C494 8000B894 C4520020 */  lwc1  $f18, 0x20($v0)
/* 00C498 8000B898 C450001C */  lwc1  $f16, 0x1c($v0)
/* 00C49C 8000B89C 46082280 */  add.s $f10, $f4, $f8
/* 00C4A0 8000B8A0 8FA5008C */  lw    $a1, 0x8c($sp)
/* 00C4A4 8000B8A4 460C5082 */  mul.s $f2, $f10, $f12
/* 00C4A8 8000B8A8 8FAA0038 */  lw    $t2, 0x38($sp)
/* 00C4AC 8000B8AC 8FAC0048 */  lw    $t4, 0x48($sp)
/* 00C4B0 8000B8B0 24010001 */  li    $at, 1
/* 00C4B4 8000B8B4 46120182 */  mul.s $f6, $f0, $f18
/* 00C4B8 8000B8B8 3C088012 */  lui   $t0, %hi(D_8011AFFC) # $t0, 0x8012
/* 00C4BC 8000B8BC 3C098012 */  lui   $t1, %hi(D_8011B004) # $t1, 0x8012
/* 00C4C0 8000B8C0 30A30003 */  andi  $v1, $a1, 3
/* 00C4C4 8000B8C4 46068100 */  add.s $f4, $f16, $f6
/* 00C4C8 8000B8C8 2529B004 */  addiu $t1, %lo(D_8011B004) # addiu $t1, $t1, -0x4ffc
/* 00C4CC 8000B8CC 460C2382 */  mul.s $f14, $f4, $f12
/* 00C4D0 8000B8D0 14610008 */  bne   $v1, $at, .L8000B8F4
/* 00C4D4 8000B8D4 2508AFFC */   addiu $t0, %lo(D_8011AFFC) # addiu $t0, $t0, -0x5004
/* 00C4D8 8000B8D8 3C01800E */  lui   $at, %hi(D_800E5130) # $at, 0x800e
/* 00C4DC 8000B8DC C4205130 */  lwc1  $f0, %lo(D_800E5130)($at)
/* 00C4E0 8000B8E0 00000000 */  nop   
/* 00C4E4 8000B8E4 46001082 */  mul.s $f2, $f2, $f0
/* 00C4E8 8000B8E8 00000000 */  nop   
/* 00C4EC 8000B8EC 46007382 */  mul.s $f14, $f14, $f0
/* 00C4F0 8000B8F0 00000000 */  nop   
.L8000B8F4:
/* 00C4F4 8000B8F4 28610002 */  slti  $at, $v1, 2
/* 00C4F8 8000B8F8 14200008 */  bnez  $at, .L8000B91C
/* 00C4FC 8000B8FC 240E8000 */   li    $t6, -32768
/* 00C500 8000B900 3C01800E */  lui   $at, %hi(D_800E5134) # $at, 0x800e
/* 00C504 8000B904 C4205134 */  lwc1  $f0, %lo(D_800E5134)($at)
/* 00C508 8000B908 00000000 */  nop   
/* 00C50C 8000B90C 46001082 */  mul.s $f2, $f2, $f0
/* 00C510 8000B910 00000000 */  nop   
/* 00C514 8000B914 46007382 */  mul.s $f14, $f14, $f0
/* 00C518 8000B918 00000000 */  nop   
.L8000B91C:
/* 00C51C 8000B91C C4480000 */  lwc1  $f8, ($v0)
/* 00C520 8000B920 3C038012 */  lui   $v1, %hi(D_8011B008) # $v1, 0x8012
/* 00C524 8000B924 E7A8005C */  swc1  $f8, 0x5c($sp)
/* 00C528 8000B928 C44A0004 */  lwc1  $f10, 4($v0)
/* 00C52C 8000B92C 8C63B008 */  lw    $v1, %lo(D_8011B008)($v1)
/* 00C530 8000B930 E7AA0060 */  swc1  $f10, 0x60($sp)
/* 00C534 8000B934 C4520008 */  lwc1  $f18, 8($v0)
/* 00C538 8000B938 8D190000 */  lw    $t9, ($t0)
/* 00C53C 8000B93C 3C18800E */  lui   $t8, %hi(D_800DC74C) # $t8, 0x800e
/* 00C540 8000B940 00037880 */  sll   $t7, $v1, 2
/* 00C544 8000B944 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 00C548 8000B948 030FC021 */  addu  $t8, $t8, $t7
/* 00C54C 8000B94C 00196880 */  sll   $t5, $t9, 2
/* 00C550 8000B950 44818000 */  mtc1  $at, $f16
/* 00C554 8000B954 8F18C74C */  lw    $t8, %lo(D_800DC74C)($t8)
/* 00C558 8000B958 01B96821 */  addu  $t5, $t5, $t9
/* 00C55C 8000B95C A7AE0050 */  sh    $t6, 0x50($sp)
/* 00C560 8000B960 000D6840 */  sll   $t5, $t5, 1
/* 00C564 8000B964 A7A00052 */  sh    $zero, 0x52($sp)
/* 00C568 8000B968 A7A00054 */  sh    $zero, 0x54($sp)
/* 00C56C 8000B96C 3C0E800E */  lui   $t6, %hi(D_800DC754) # $t6, 0x800e
/* 00C570 8000B970 E7AE0010 */  swc1  $f14, 0x10($sp)
/* 00C574 8000B974 E7B20064 */  swc1  $f18, 0x64($sp)
/* 00C578 8000B978 E7B00058 */  swc1  $f16, 0x58($sp)
/* 00C57C 8000B97C 030D2021 */  addu  $a0, $t8, $t5
/* 00C580 8000B980 91780072 */  lbu   $t8, 0x72($t3)
/* 00C584 8000B984 01CF7021 */  addu  $t6, $t6, $t7
/* 00C588 8000B988 01E01825 */  move  $v1, $t7
/* 00C58C 8000B98C 8D2F0000 */  lw    $t7, ($t1)
/* 00C590 8000B990 00186B00 */  sll   $t5, $t8, 0xc
/* 00C594 8000B994 AFAD0014 */  sw    $t5, 0x14($sp)
/* 00C598 8000B998 000FC900 */  sll   $t9, $t7, 4
/* 00C59C 8000B99C 8D8F007C */  lw    $t7, 0x7c($t4)
/* 00C5A0 8000B9A0 8DCEC754 */  lw    $t6, %lo(D_800DC754)($t6)
/* 00C5A4 8000B9A4 44071000 */  mfc1  $a3, $f2
/* 00C5A8 8000B9A8 AFAA0038 */  sw    $t2, 0x38($sp)
/* 00C5AC 8000B9AC AFA20044 */  sw    $v0, 0x44($sp)
/* 00C5B0 8000B9B0 27A60050 */  addiu $a2, $sp, 0x50
/* 00C5B4 8000B9B4 AFAF0018 */  sw    $t7, 0x18($sp)
/* 00C5B8 8000B9B8 0C002CE3 */  jal   func_8000B38C
/* 00C5BC 8000B9BC 01D92821 */   addu  $a1, $t6, $t9
/* 00C5C0 8000B9C0 3C088012 */  lui   $t0, %hi(D_8011AFFC) # $t0, 0x8012
/* 00C5C4 8000B9C4 2508AFFC */  addiu $t0, %lo(D_8011AFFC) # addiu $t0, $t0, -0x5004
/* 00C5C8 8000B9C8 8D190000 */  lw    $t9, ($t0)
/* 00C5CC 8000B9CC 3C098012 */  lui   $t1, %hi(D_8011B004) # $t1, 0x8012
/* 00C5D0 8000B9D0 8FAA0038 */  lw    $t2, 0x38($sp)
/* 00C5D4 8000B9D4 2529B004 */  addiu $t1, %lo(D_8011B004) # addiu $t1, $t1, -0x4ffc
/* 00C5D8 8000B9D8 00107700 */  sll   $t6, $s0, 0x1c
/* 00C5DC 8000B9DC 0019C380 */  sll   $t8, $t9, 0xe
/* 00C5E0 8000B9E0 8D2F0000 */  lw    $t7, ($t1)
/* 00C5E4 8000B9E4 01D86825 */  or    $t5, $t6, $t8
/* 00C5E8 8000B9E8 8D4E0000 */  lw    $t6, ($t2)
/* 00C5EC 8000B9EC 8FA20044 */  lw    $v0, 0x44($sp)
/* 00C5F0 8000B9F0 01AFC825 */  or    $t9, $t5, $t7
/* 00C5F4 8000B9F4 ADD9007C */  sw    $t9, 0x7c($t6)
/* 00C5F8 8000B9F8 8D180000 */  lw    $t8, ($t0)
/* 00C5FC 8000B9FC 8D2F0000 */  lw    $t7, ($t1)
/* 00C600 8000BA00 270D0009 */  addiu $t5, $t8, 9
/* 00C604 8000BA04 25F90008 */  addiu $t9, $t7, 8
/* 00C608 8000BA08 8D470000 */  lw    $a3, ($t2)
/* 00C60C 8000BA0C AD0D0000 */  sw    $t5, ($t0)
/* 00C610 8000BA10 AD390000 */  sw    $t9, ($t1)
/* 00C614 8000BA14 8FA40080 */  lw    $a0, 0x80($sp)
.L8000BA18:
/* 00C618 8000BA18 44800000 */  mtc1  $zero, $f0
/* 00C61C 8000BA1C ACE40078 */  sw    $a0, 0x78($a3)
/* 00C620 8000BA20 8D4E0000 */  lw    $t6, ($t2)
/* 00C624 8000BA24 27A50074 */  addiu $a1, $sp, 0x74
/* 00C628 8000BA28 E5C0000C */  swc1  $f0, 0xc($t6)
/* 00C62C 8000BA2C 8D580000 */  lw    $t8, ($t2)
/* 00C630 8000BA30 00000000 */  nop   
/* 00C634 8000BA34 E7000010 */  swc1  $f0, 0x10($t8)
/* 00C638 8000BA38 8D4D0000 */  lw    $t5, ($t2)
/* 00C63C 8000BA3C 00000000 */  nop   
/* 00C640 8000BA40 E5A00014 */  swc1  $f0, 0x14($t5)
/* 00C644 8000BA44 C4460000 */  lwc1  $f6, ($v0)
/* 00C648 8000BA48 00000000 */  nop   
/* 00C64C 8000BA4C E7A60074 */  swc1  $f6, 0x74($sp)
/* 00C650 8000BA50 C4440004 */  lwc1  $f4, 4($v0)
/* 00C654 8000BA54 00000000 */  nop   
/* 00C658 8000BA58 E7A40078 */  swc1  $f4, 0x78($sp)
/* 00C65C 8000BA5C C4480008 */  lwc1  $f8, 8($v0)
/* 00C660 8000BA60 AFAA0038 */  sw    $t2, 0x38($sp)
/* 00C664 8000BA64 0C01C0C8 */  jal   f32_vec3_apply_object_rotation
/* 00C668 8000BA68 E7A8007C */   swc1  $f8, 0x7c($sp)
/* 00C66C 8000BA6C 0C004558 */  jal   ignore_bounds_check
/* 00C670 8000BA70 00000000 */   nop   
/* 00C674 8000BA74 8FA20080 */  lw    $v0, 0x80($sp)
/* 00C678 8000BA78 C7AA0074 */  lwc1  $f10, 0x74($sp)
/* 00C67C 8000BA7C C452000C */  lwc1  $f18, 0xc($v0)
/* 00C680 8000BA80 C7A60078 */  lwc1  $f6, 0x78($sp)
/* 00C684 8000BA84 46125400 */  add.s $f16, $f10, $f18
/* 00C688 8000BA88 C7AA007C */  lwc1  $f10, 0x7c($sp)
/* 00C68C 8000BA8C C4520014 */  lwc1  $f18, 0x14($v0)
/* 00C690 8000BA90 C4440010 */  lwc1  $f4, 0x10($v0)
/* 00C694 8000BA94 44058000 */  mfc1  $a1, $f16
/* 00C698 8000BA98 8FAA0038 */  lw    $t2, 0x38($sp)
/* 00C69C 8000BA9C 46125400 */  add.s $f16, $f10, $f18
/* 00C6A0 8000BAA0 8D440000 */  lw    $a0, ($t2)
/* 00C6A4 8000BAA4 46043200 */  add.s $f8, $f6, $f4
/* 00C6A8 8000BAA8 44078000 */  mfc1  $a3, $f16
/* 00C6AC 8000BAAC 44064000 */  mfc1  $a2, $f8
/* 00C6B0 8000BAB0 0C00455C */  jal   move_object
/* 00C6B4 8000BAB4 00000000 */   nop   
.L8000BAB8:
/* 00C6B8 8000BAB8 8FAF0090 */  lw    $t7, 0x90($sp)
/* 00C6BC 8000BABC 3C018012 */  lui   $at, %hi(D_8011B068) # $at, 0x8012
/* 00C6C0 8000BAC0 11E00002 */  beqz  $t7, .L8000BACC
/* 00C6C4 8000BAC4 00300821 */   addu  $at, $at, $s0
/* 00C6C8 8000BAC8 A020B068 */  sb    $zero, %lo(D_8011B068)($at)
.L8000BACC:
/* 00C6CC 8000BACC 8FBF002C */  lw    $ra, 0x2c($sp)
.L8000BAD0:
/* 00C6D0 8000BAD0 8FB00028 */  lw    $s0, 0x28($sp)
/* 00C6D4 8000BAD4 03E00008 */  jr    $ra
/* 00C6D8 8000BAD8 27BD0080 */   addiu $sp, $sp, 0x80

