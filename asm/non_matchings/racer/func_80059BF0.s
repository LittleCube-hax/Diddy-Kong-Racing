glabel func_80059BF0
/* 05A7F0 80059BF0 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 05A7F4 80059BF4 AFBF0014 */  sw    $ra, 0x14($sp)
/* 05A7F8 80059BF8 AFA5002C */  sw    $a1, 0x2c($sp)
/* 05A7FC 80059BFC 8C880064 */  lw    $t0, 0x64($a0)
/* 05A800 80059C00 00803025 */  move  $a2, $a0
/* 05A804 80059C04 85040164 */  lh    $a0, 0x164($t0)
/* 05A808 80059C08 AFA60028 */  sw    $a2, 0x28($sp)
/* 05A80C 80059C0C 0C01C1FE */  jal   coss_f
/* 05A810 80059C10 AFA80020 */   sw    $t0, 0x20($sp)
/* 05A814 80059C14 8FA80020 */  lw    $t0, 0x20($sp)
/* 05A818 80059C18 E7A00018 */  swc1  $f0, 0x18($sp)
/* 05A81C 80059C1C 850F0166 */  lh    $t7, 0x166($t0)
/* 05A820 80059C20 850E0162 */  lh    $t6, 0x162($t0)
/* 05A824 80059C24 00000000 */  nop   
/* 05A828 80059C28 01CF2023 */  subu  $a0, $t6, $t7
/* 05A82C 80059C2C 0004C400 */  sll   $t8, $a0, 0x10
/* 05A830 80059C30 0C01C1FE */  jal   coss_f
/* 05A834 80059C34 00182403 */   sra   $a0, $t8, 0x10
/* 05A838 80059C38 C7A40018 */  lwc1  $f4, 0x18($sp)
/* 05A83C 80059C3C 44803000 */  mtc1  $zero, $f6
/* 05A840 80059C40 46040302 */  mul.s $f12, $f0, $f4
/* 05A844 80059C44 8FA60028 */  lw    $a2, 0x28($sp)
/* 05A848 80059C48 8FA80020 */  lw    $t0, 0x20($sp)
/* 05A84C 80059C4C 3C098012 */  lui   $t1, %hi(D_8011D59E) # $t1, 0x8012
/* 05A850 80059C50 4606603C */  c.lt.s $f12, $f6
/* 05A854 80059C54 46006086 */  mov.s $f2, $f12
/* 05A858 80059C58 45000007 */  bc1f  .L80059C78
/* 05A85C 80059C5C 2529D59E */   addiu $t1, %lo(D_8011D59E) # addiu $t1, $t1, -0x2a62
/* 05A860 80059C60 3C013FE0 */  li    $at, 0x3FE00000 # 1.750000
/* 05A864 80059C64 44815800 */  mtc1  $at, $f11
/* 05A868 80059C68 44805000 */  mtc1  $zero, $f10
/* 05A86C 80059C6C 46006221 */  cvt.d.s $f8, $f12
/* 05A870 80059C70 462A4402 */  mul.d $f16, $f8, $f10
/* 05A874 80059C74 462080A0 */  cvt.s.d $f2, $f16
.L80059C78:
/* 05A878 80059C78 852E0000 */  lh    $t6, ($t1)
/* 05A87C 80059C7C 8FAF002C */  lw    $t7, 0x2c($sp)
/* 05A880 80059C80 3C014188 */  li    $at, 0x41880000 # 17.000000
/* 05A884 80059C84 44810000 */  mtc1  $at, $f0
/* 05A888 80059C88 01CFC023 */  subu  $t8, $t6, $t7
/* 05A88C 80059C8C 46001482 */  mul.s $f18, $f2, $f0
/* 05A890 80059C90 A5380000 */  sh    $t8, ($t1)
/* 05A894 80059C94 85240000 */  lh    $a0, ($t1)
/* 05A898 80059C98 00000000 */  nop   
/* 05A89C 80059C9C 1C80005C */  bgtz  $a0, .L80059E10
/* 05A8A0 80059CA0 46120081 */   sub.s $f2, $f0, $f18
/* 05A8A4 80059CA4 1C80005A */  bgtz  $a0, .L80059E10
/* 05A8A8 80059CA8 3C058012 */   lui   $a1, %hi(D_8011D59C) # $a1, 0x8012
/* 05A8AC 80059CAC 80A5D59C */  lb    $a1, %lo(D_8011D59C)($a1)
/* 05A8B0 80059CB0 3C0E8012 */  lui   $t6, %hi(D_8011D5A0) # $t6, 0x8012
/* 05A8B4 80059CB4 25CED5A0 */  addiu $t6, %lo(D_8011D5A0) # addiu $t6, $t6, -0x2a60
/* 05A8B8 80059CB8 3C0D8012 */  lui   $t5, %hi(D_8011D5A0) # $t5, 0x8012
/* 05A8BC 80059CBC 3C0C8012 */  lui   $t4, %hi(gGhostData) # $t4, 0x8012
/* 05A8C0 80059CC0 3C0A8012 */  lui   $t2, %hi(D_8011D59C) # $t2, 0x8012
/* 05A8C4 80059CC4 0005C840 */  sll   $t9, $a1, 1
/* 05A8C8 80059CC8 032E1821 */  addu  $v1, $t9, $t6
/* 05A8CC 80059CCC 254AD59C */  addiu $t2, %lo(D_8011D59C) # addiu $t2, $t2, -0x2a64
/* 05A8D0 80059CD0 258CD590 */  addiu $t4, %lo(gGhostData) # addiu $t4, $t4, -0x2a70
/* 05A8D4 80059CD4 25ADD5A0 */  addiu $t5, %lo(D_8011D5A0) # addiu $t5, $t5, -0x2a60
/* 05A8D8 80059CD8 240B000C */  li    $t3, 12
.L80059CDC:
/* 05A8DC 80059CDC 84670000 */  lh    $a3, ($v1)
/* 05A8E0 80059CE0 248F001E */  addiu $t7, $a0, 0x1e
/* 05A8E4 80059CE4 28E10168 */  slti  $at, $a3, 0x168
/* 05A8E8 80059CE8 1420000D */  bnez  $at, .L80059D20
/* 05A8EC 80059CEC A52F0000 */   sh    $t7, ($t1)
/* 05A8F0 80059CF0 0C01BAAC */  jal   is_postrace_viewport_active
/* 05A8F4 80059CF4 00000000 */   nop   
/* 05A8F8 80059CF8 3C0A8012 */  lui   $t2, %hi(D_8011D59C) # $t2, 0x8012
/* 05A8FC 80059CFC 14400044 */  bnez  $v0, .L80059E10
/* 05A900 80059D00 254AD59C */   addiu $t2, %lo(D_8011D59C) # addiu $t2, $t2, -0x2a64
/* 05A904 80059D04 81590000 */  lb    $t9, ($t2)
/* 05A908 80059D08 3C018012 */  lui   $at, %hi(D_8011D5A8) # $at, 0x8012
/* 05A90C 80059D0C 00197040 */  sll   $t6, $t9, 1
/* 05A910 80059D10 002E0821 */  addu  $at, $at, $t6
/* 05A914 80059D14 24180001 */  li    $t8, 1
/* 05A918 80059D18 1000003D */  b     .L80059E10
/* 05A91C 80059D1C A438D5A8 */   sh    $t8, %lo(D_8011D5A8)($at)
.L80059D20:
/* 05A920 80059D20 00EB0019 */  multu $a3, $t3
/* 05A924 80059D24 0005C880 */  sll   $t9, $a1, 2
/* 05A928 80059D28 0199C021 */  addu  $t8, $t4, $t9
/* 05A92C 80059D2C 4459F800 */  cfc1  $t9, $31
/* 05A930 80059D30 C4C4000C */  lwc1  $f4, 0xc($a2)
/* 05A934 80059D34 37210003 */  ori   $at, $t9, 3
/* 05A938 80059D38 38210002 */  xori  $at, $at, 2
/* 05A93C 80059D3C 44C1F800 */  ctc1  $at, $31
/* 05A940 80059D40 8F0E0000 */  lw    $t6, ($t8)
/* 05A944 80059D44 460021A4 */  cvt.w.s $f6, $f4
/* 05A948 80059D48 44183000 */  mfc1  $t8, $f6
/* 05A94C 80059D4C 00007812 */  mflo  $t7
/* 05A950 80059D50 01EE1021 */  addu  $v0, $t7, $t6
/* 05A954 80059D54 A4580000 */  sh    $t8, ($v0)
/* 05A958 80059D58 44D9F800 */  ctc1  $t9, $31
/* 05A95C 80059D5C C4C80010 */  lwc1  $f8, 0x10($a2)
/* 05A960 80059D60 00000000 */  nop   
/* 05A964 80059D64 46024280 */  add.s $f10, $f8, $f2
/* 05A968 80059D68 444FF800 */  cfc1  $t7, $31
/* 05A96C 80059D6C 00000000 */  nop   
/* 05A970 80059D70 35E10003 */  ori   $at, $t7, 3
/* 05A974 80059D74 38210002 */  xori  $at, $at, 2
/* 05A978 80059D78 44C1F800 */  ctc1  $at, $31
/* 05A97C 80059D7C 37210003 */  ori   $at, $t9, 3
/* 05A980 80059D80 46005424 */  cvt.w.s $f16, $f10
/* 05A984 80059D84 38210002 */  xori  $at, $at, 2
/* 05A988 80059D88 440E8000 */  mfc1  $t6, $f16
/* 05A98C 80059D8C 44CFF800 */  ctc1  $t7, $31
/* 05A990 80059D90 A44E0002 */  sh    $t6, 2($v0)
/* 05A994 80059D94 C4D20014 */  lwc1  $f18, 0x14($a2)
/* 05A998 80059D98 44C1F800 */  ctc1  $at, $31
/* 05A99C 80059D9C 00000000 */  nop   
/* 05A9A0 80059DA0 46009124 */  cvt.w.s $f4, $f18
/* 05A9A4 80059DA4 44182000 */  mfc1  $t8, $f4
/* 05A9A8 80059DA8 44D9F800 */  ctc1  $t9, $31
/* 05A9AC 80059DAC A4580004 */  sh    $t8, 4($v0)
/* 05A9B0 80059DB0 850E0160 */  lh    $t6, 0x160($t0)
/* 05A9B4 80059DB4 84CF0000 */  lh    $t7, ($a2)
/* 05A9B8 80059DB8 00000000 */  nop   
/* 05A9BC 80059DBC 01EEC821 */  addu  $t9, $t7, $t6
/* 05A9C0 80059DC0 A459000A */  sh    $t9, 0xa($v0)
/* 05A9C4 80059DC4 850F0162 */  lh    $t7, 0x162($t0)
/* 05A9C8 80059DC8 84D80002 */  lh    $t8, 2($a2)
/* 05A9CC 80059DCC 00000000 */  nop   
/* 05A9D0 80059DD0 030F7021 */  addu  $t6, $t8, $t7
/* 05A9D4 80059DD4 A44E0008 */  sh    $t6, 8($v0)
/* 05A9D8 80059DD8 85180164 */  lh    $t8, 0x164($t0)
/* 05A9DC 80059DDC 84D90004 */  lh    $t9, 4($a2)
/* 05A9E0 80059DE0 00000000 */  nop   
/* 05A9E4 80059DE4 03387821 */  addu  $t7, $t9, $t8
/* 05A9E8 80059DE8 A44F0006 */  sh    $t7, 6($v0)
/* 05A9EC 80059DEC 81450000 */  lb    $a1, ($t2)
/* 05A9F0 80059DF0 85240000 */  lh    $a0, ($t1)
/* 05A9F4 80059DF4 00057040 */  sll   $t6, $a1, 1
/* 05A9F8 80059DF8 01AE1821 */  addu  $v1, $t5, $t6
/* 05A9FC 80059DFC 84790000 */  lh    $t9, ($v1)
/* 05AA00 80059E00 00000000 */  nop   
/* 05AA04 80059E04 27380001 */  addiu $t8, $t9, 1
/* 05AA08 80059E08 1880FFB4 */  blez  $a0, .L80059CDC
/* 05AA0C 80059E0C A4780000 */   sh    $t8, ($v1)
.L80059E10:
/* 05AA10 80059E10 8FBF0014 */  lw    $ra, 0x14($sp)
/* 05AA14 80059E14 27BD0028 */  addiu $sp, $sp, 0x28
/* 05AA18 80059E18 03E00008 */  jr    $ra
/* 05AA1C 80059E1C 00000000 */   nop   

