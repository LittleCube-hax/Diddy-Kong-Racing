glabel func_80021104
/* 021D04 80021104 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 021D08 80021108 AFBF0014 */  sw    $ra, 0x14($sp)
/* 021D0C 8002110C AFA60028 */  sw    $a2, 0x28($sp)
/* 021D10 80021110 848E0048 */  lh    $t6, 0x48($a0)
/* 021D14 80021114 8CA3001C */  lw    $v1, 0x1c($a1)
/* 021D18 80021118 24010033 */  li    $at, 51
/* 021D1C 8002111C 15C10009 */  bne   $t6, $at, .L80021144
/* 021D20 80021120 3C028012 */   lui   $v0, %hi(D_8011AD3E) # $v0, 0x8012
/* 021D24 80021124 2442AD3E */  addiu $v0, %lo(D_8011AD3E) # addiu $v0, $v0, -0x52c2
/* 021D28 80021128 804F0000 */  lb    $t7, ($v0)
/* 021D2C 8002112C 00000000 */  nop   
/* 021D30 80021130 A0AF0044 */  sb    $t7, 0x44($a1)
/* 021D34 80021134 80580000 */  lb    $t8, ($v0)
/* 021D38 80021138 00000000 */  nop   
/* 021D3C 8002113C 27190001 */  addiu $t9, $t8, 1
/* 021D40 80021140 A0590000 */  sb    $t9, ($v0)
.L80021144:
/* 021D44 80021144 8FA80028 */  lw    $t0, 0x28($sp)
/* 021D48 80021148 24010012 */  li    $at, 18
/* 021D4C 8002114C 81040022 */  lb    $a0, 0x22($t0)
/* 021D50 80021150 00000000 */  nop   
/* 021D54 80021154 14810020 */  bne   $a0, $at, .L800211D8
/* 021D58 80021158 2881000A */   slti  $at, $a0, 0xa
/* 021D5C 8002115C 80A40030 */  lb    $a0, 0x30($a1)
/* 021D60 80021160 0C01997A */  jal   set_object_stack_pos
/* 021D64 80021164 AFA30018 */   sw    $v1, 0x18($sp)
/* 021D68 80021168 0C01A73F */  jal   get_active_camera_segment_no_cutscenes
/* 021D6C 8002116C 00000000 */   nop   
/* 021D70 80021170 8FA30018 */  lw    $v1, 0x18($sp)
/* 021D74 80021174 C444000C */  lwc1  $f4, 0xc($v0)
/* 021D78 80021178 340A8000 */  li    $t2, 32768
/* 021D7C 8002117C E464000C */  swc1  $f4, 0xc($v1)
/* 021D80 80021180 C4460010 */  lwc1  $f6, 0x10($v0)
/* 021D84 80021184 00000000 */  nop   
/* 021D88 80021188 E4660010 */  swc1  $f6, 0x10($v1)
/* 021D8C 8002118C C4480014 */  lwc1  $f8, 0x14($v0)
/* 021D90 80021190 00000000 */  nop   
/* 021D94 80021194 E4680014 */  swc1  $f8, 0x14($v1)
/* 021D98 80021198 84490000 */  lh    $t1, ($v0)
/* 021D9C 8002119C 00000000 */  nop   
/* 021DA0 800211A0 01495823 */  subu  $t3, $t2, $t1
/* 021DA4 800211A4 A46B0000 */  sh    $t3, ($v1)
/* 021DA8 800211A8 844C0002 */  lh    $t4, 2($v0)
/* 021DAC 800211AC 00000000 */  nop   
/* 021DB0 800211B0 000C6823 */  negu  $t5, $t4
/* 021DB4 800211B4 A46D0002 */  sh    $t5, 2($v1)
/* 021DB8 800211B8 844E0004 */  lh    $t6, 4($v0)
/* 021DBC 800211BC 00000000 */  nop   
/* 021DC0 800211C0 A46E0004 */  sh    $t6, 4($v1)
/* 021DC4 800211C4 8FAF0028 */  lw    $t7, 0x28($sp)
/* 021DC8 800211C8 00000000 */  nop   
/* 021DCC 800211CC 81E40022 */  lb    $a0, 0x22($t7)
/* 021DD0 800211D0 00000000 */  nop   
/* 021DD4 800211D4 2881000A */  slti  $at, $a0, 0xa
.L800211D8:
/* 021DD8 800211D8 1420001C */  bnez  $at, .L8002124C
/* 021DDC 800211DC 28810012 */   slti  $at, $a0, 0x12
/* 021DE0 800211E0 1020001A */  beqz  $at, .L8002124C
/* 021DE4 800211E4 3C188012 */   lui   $t8, %hi(gRacers) # $t8, 0x8012
/* 021DE8 800211E8 8F18AEE4 */  lw    $t8, %lo(gRacers)($t8)
/* 021DEC 800211EC 0004C880 */  sll   $t9, $a0, 2
/* 021DF0 800211F0 03194021 */  addu  $t0, $t8, $t9
/* 021DF4 800211F4 8D02FFD8 */  lw    $v0, -0x28($t0)
/* 021DF8 800211F8 00000000 */  nop   
/* 021DFC 800211FC 10400014 */  beqz  $v0, .L80021250
/* 021E00 80021200 8FBF0014 */   lw    $ra, 0x14($sp)
/* 021E04 80021204 C44A000C */  lwc1  $f10, 0xc($v0)
/* 021E08 80021208 00000000 */  nop   
/* 021E0C 8002120C E46A000C */  swc1  $f10, 0xc($v1)
/* 021E10 80021210 C4500010 */  lwc1  $f16, 0x10($v0)
/* 021E14 80021214 00000000 */  nop   
/* 021E18 80021218 E4700010 */  swc1  $f16, 0x10($v1)
/* 021E1C 8002121C C4520014 */  lwc1  $f18, 0x14($v0)
/* 021E20 80021220 00000000 */  nop   
/* 021E24 80021224 E4720014 */  swc1  $f18, 0x14($v1)
/* 021E28 80021228 844A0000 */  lh    $t2, ($v0)
/* 021E2C 8002122C 00000000 */  nop   
/* 021E30 80021230 A46A0000 */  sh    $t2, ($v1)
/* 021E34 80021234 84490002 */  lh    $t1, 2($v0)
/* 021E38 80021238 00000000 */  nop   
/* 021E3C 8002123C A4690002 */  sh    $t1, 2($v1)
/* 021E40 80021240 844B0004 */  lh    $t3, 4($v0)
/* 021E44 80021244 00000000 */  nop   
/* 021E48 80021248 A46B0004 */  sh    $t3, 4($v1)
.L8002124C:
/* 021E4C 8002124C 8FBF0014 */  lw    $ra, 0x14($sp)
.L80021250:
/* 021E50 80021250 27BD0020 */  addiu $sp, $sp, 0x20
/* 021E54 80021254 03E00008 */  jr    $ra
/* 021E58 80021258 00000000 */   nop   

