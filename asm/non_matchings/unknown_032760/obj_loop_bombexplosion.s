glabel obj_loop_bombexplosion
/* 0397F4 80038BF4 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 0397F8 80038BF8 AFBF002C */  sw    $ra, 0x2c($sp)
/* 0397FC 80038BFC AFB00028 */  sw    $s0, 0x28($sp)
/* 039800 80038C00 8C8E0078 */  lw    $t6, 0x78($a0)
/* 039804 80038C04 8C88007C */  lw    $t0, 0x7c($a0)
/* 039808 80038C08 01C51021 */  addu  $v0, $t6, $a1
/* 03980C 80038C0C 2841000B */  slti  $at, $v0, 0xb
/* 039810 80038C10 00081A03 */  sra   $v1, $t0, 8
/* 039814 80038C14 00808025 */  move  $s0, $a0
/* 039818 80038C18 AC820078 */  sw    $v0, 0x78($a0)
/* 03981C 80038C1C 14200012 */  bnez  $at, .L80038C68
/* 039820 80038C20 307800FF */   andi  $t8, $v1, 0xff
/* 039824 80038C24 13000010 */  beqz  $t8, .L80038C68
/* 039828 80038C28 0018CA00 */   sll   $t9, $t8, 8
/* 03982C 80038C2C 01194826 */  xor   $t1, $t0, $t9
/* 039830 80038C30 C48C000C */  lwc1  $f12, 0xc($a0)
/* 039834 80038C34 C48E0010 */  lwc1  $f14, 0x10($a0)
/* 039838 80038C38 8C860014 */  lw    $a2, 0x14($a0)
/* 03983C 80038C3C 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 039840 80038C40 44812000 */  mtc1  $at, $f4
/* 039844 80038C44 AC89007C */  sw    $t1, 0x7c($a0)
/* 039848 80038C48 270AFFFF */  addiu $t2, $t8, -1
/* 03984C 80038C4C AFAA0018 */  sw    $t2, 0x18($sp)
/* 039850 80038C50 AFA00010 */  sw    $zero, 0x10($sp)
/* 039854 80038C54 2407002C */  li    $a3, 44
/* 039858 80038C58 0C00FF11 */  jal   func_8003FC44
/* 03985C 80038C5C E7A40014 */   swc1  $f4, 0x14($sp)
/* 039860 80038C60 8E020078 */  lw    $v0, 0x78($s0)
/* 039864 80038C64 00000000 */  nop   
.L80038C68:
/* 039868 80038C68 28410014 */  slti  $at, $v0, 0x14
/* 03986C 80038C6C 10200013 */  beqz  $at, .L80038CBC
/* 039870 80038C70 28410028 */   slti  $at, $v0, 0x28
/* 039874 80038C74 44823000 */  mtc1  $v0, $f6
/* 039878 80038C78 3C0141A0 */  li    $at, 0x41A00000 # 20.000000
/* 03987C 80038C7C 46803220 */  cvt.s.w $f8, $f6
/* 039880 80038C80 44815000 */  mtc1  $at, $f10
/* 039884 80038C84 3C014120 */  li    $at, 0x41200000 # 10.000000
/* 039888 80038C88 460A4403 */  div.s $f16, $f8, $f10
/* 03988C 80038C8C 44819000 */  mtc1  $at, $f18
/* 039890 80038C90 3C013F00 */  li    $at, 0x3F000000 # 0.500000
/* 039894 80038C94 44813000 */  mtc1  $at, $f6
/* 039898 80038C98 8E0B007C */  lw    $t3, 0x7c($s0)
/* 03989C 80038C9C 00000000 */  nop   
/* 0398A0 80038CA0 356C00FF */  ori   $t4, $t3, 0xff
/* 0398A4 80038CA4 AE0C007C */  sw    $t4, 0x7c($s0)
/* 0398A8 80038CA8 46128102 */  mul.s $f4, $f16, $f18
/* 0398AC 80038CAC 46062200 */  add.s $f8, $f4, $f6
/* 0398B0 80038CB0 10000019 */  b     .L80038D18
/* 0398B4 80038CB4 E6080008 */   swc1  $f8, 8($s0)
/* 0398B8 80038CB8 28410028 */  slti  $at, $v0, 0x28
.L80038CBC:
/* 0398BC 80038CBC 10200014 */  beqz  $at, .L80038D10
/* 0398C0 80038CC0 244DFFEC */   addiu $t5, $v0, -0x14
/* 0398C4 80038CC4 448D5000 */  mtc1  $t5, $f10
/* 0398C8 80038CC8 3C0141A0 */  li    $at, 0x41A00000 # 20.000000
/* 0398CC 80038CCC 46805420 */  cvt.s.w $f16, $f10
/* 0398D0 80038CD0 44819000 */  mtc1  $at, $f18
/* 0398D4 80038CD4 3C0140A0 */  li    $at, 0x40A00000 # 5.000000
/* 0398D8 80038CD8 46128103 */  div.s $f4, $f16, $f18
/* 0398DC 80038CDC 44813000 */  mtc1  $at, $f6
/* 0398E0 80038CE0 3C014128 */  li    $at, 0x41280000 # 10.500000
/* 0398E4 80038CE4 00027080 */  sll   $t6, $v0, 2
/* 0398E8 80038CE8 44815000 */  mtc1  $at, $f10
/* 0398EC 80038CEC 01C27023 */  subu  $t6, $t6, $v0
/* 0398F0 80038CF0 000E7080 */  sll   $t6, $t6, 2
/* 0398F4 80038CF4 240F01EF */  li    $t7, 495
/* 0398F8 80038CF8 01EEC023 */  subu  $t8, $t7, $t6
/* 0398FC 80038CFC AE18007C */  sw    $t8, 0x7c($s0)
/* 039900 80038D00 46062202 */  mul.s $f8, $f4, $f6
/* 039904 80038D04 460A4400 */  add.s $f16, $f8, $f10
/* 039908 80038D08 10000003 */  b     .L80038D18
/* 03990C 80038D0C E6100008 */   swc1  $f16, 8($s0)
.L80038D10:
/* 039910 80038D10 0C003FEE */  jal   gParticlePtrList_addObject
/* 039914 80038D14 02002025 */   move  $a0, $s0
.L80038D18:
/* 039918 80038D18 8E190074 */  lw    $t9, 0x74($s0)
/* 03991C 80038D1C 00000000 */  nop   
/* 039920 80038D20 1320000A */  beqz  $t9, .L80038D4C
/* 039924 80038D24 8FBF002C */   lw    $ra, 0x2c($sp)
/* 039928 80038D28 0C0270F2 */  jal   get_number_of_active_players
/* 03992C 80038D2C 00000000 */   nop   
/* 039930 80038D30 28410002 */  slti  $at, $v0, 2
/* 039934 80038D34 10200004 */  beqz  $at, .L80038D48
/* 039938 80038D38 02002025 */   move  $a0, $s0
/* 03993C 80038D3C 0C02BF0F */  jal   func_800AFC3C
/* 039940 80038D40 24050002 */   li    $a1, 2
/* 039944 80038D44 AE000074 */  sw    $zero, 0x74($s0)
.L80038D48:
/* 039948 80038D48 8FBF002C */  lw    $ra, 0x2c($sp)
.L80038D4C:
/* 03994C 80038D4C 8FB00028 */  lw    $s0, 0x28($sp)
/* 039950 80038D50 03E00008 */  jr    $ra
/* 039954 80038D54 27BD0030 */   addiu $sp, $sp, 0x30
