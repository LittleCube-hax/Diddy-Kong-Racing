.late_rodata
glabel D_800E6010
.double 1.2
glabel D_800E6018
.double 0.98
glabel D_800E6020
.double 0.95

.text
glabel obj_loop_collectegg
/* 035E60 80035260 27BDFFA8 */  addiu $sp, $sp, -0x58
/* 035E64 80035264 44852000 */  mtc1  $a1, $f4
/* 035E68 80035268 3C0E8000 */  lui   $t6, %hi(osTvType) # $t6, 0x8000
/* 035E6C 8003526C 468020A0 */  cvt.s.w $f2, $f4
/* 035E70 80035270 8DCE0300 */  lw    $t6, %lo(osTvType)($t6)
/* 035E74 80035274 AFBF0024 */  sw    $ra, 0x24($sp)
/* 035E78 80035278 AFB10020 */  sw    $s1, 0x20($sp)
/* 035E7C 8003527C AFB0001C */  sw    $s0, 0x1c($sp)
/* 035E80 80035280 8C910064 */  lw    $s1, 0x64($a0)
/* 035E84 80035284 00808025 */  move  $s0, $a0
/* 035E88 80035288 15C00007 */  bnez  $t6, .L800352A8
/* 035E8C 8003528C 46001006 */   mov.s $f0, $f2
/* 035E90 80035290 3C01800E */  lui   $at, %hi(D_800E6010 + 4) # $at, 0x800e
/* 035E94 80035294 C4296010 */  lwc1  $f9, %lo(D_800E6010)($at)
/* 035E98 80035298 C4286014 */  lwc1  $f8, %lo(D_800E6010 + 4)($at)
/* 035E9C 8003529C 460011A1 */  cvt.d.s $f6, $f2
/* 035EA0 800352A0 46283282 */  mul.d $f10, $f6, $f8
/* 035EA4 800352A4 46205020 */  cvt.s.d $f0, $f10
.L800352A8:
/* 035EA8 800352A8 8222000B */  lb    $v0, 0xb($s1)
/* 035EAC 800352AC 24010002 */  li    $at, 2
/* 035EB0 800352B0 1040000A */  beqz  $v0, .L800352DC
/* 035EB4 800352B4 02002025 */   move  $a0, $s0
/* 035EB8 800352B8 1041000C */  beq   $v0, $at, .L800352EC
/* 035EBC 800352BC 24040001 */   li    $a0, 1
/* 035EC0 800352C0 24010003 */  li    $at, 3
/* 035EC4 800352C4 1041009D */  beq   $v0, $at, .L8003553C
/* 035EC8 800352C8 24010004 */   li    $at, 4
/* 035ECC 800352CC 104100C9 */  beq   $v0, $at, .L800355F4
/* 035ED0 800352D0 00000000 */   nop   
/* 035ED4 800352D4 100000D6 */  b     .L80035630
/* 035ED8 800352D8 8FBF0024 */   lw    $ra, 0x24($sp)
.L800352DC:
/* 035EDC 800352DC 0C00D810 */  jal   func_80036040
/* 035EE0 800352E0 02202825 */   move  $a1, $s1
/* 035EE4 800352E4 100000D2 */  b     .L80035630
/* 035EE8 800352E8 8FBF0024 */   lw    $ra, 0x24($sp)
.L800352EC:
/* 035EEC 800352EC C612001C */  lwc1  $f18, 0x1c($s0)
/* 035EF0 800352F0 860F0006 */  lh    $t7, 6($s0)
/* 035EF4 800352F4 46009102 */  mul.s $f4, $f18, $f0
/* 035EF8 800352F8 C610000C */  lwc1  $f16, 0xc($s0)
/* 035EFC 800352FC 31F8BFFF */  andi  $t8, $t7, 0xbfff
/* 035F00 80035300 A6180006 */  sh    $t8, 6($s0)
/* 035F04 80035304 46048180 */  add.s $f6, $f16, $f4
/* 035F08 80035308 3C014110 */  li    $at, 0x41100000 # 9.000000
/* 035F0C 8003530C E7A60040 */  swc1  $f6, 0x40($sp)
/* 035F10 80035310 C60A0020 */  lwc1  $f10, 0x20($s0)
/* 035F14 80035314 C6080010 */  lwc1  $f8, 0x10($s0)
/* 035F18 80035318 46005482 */  mul.s $f18, $f10, $f0
/* 035F1C 8003531C 2605000C */  addiu $a1, $s0, 0xc
/* 035F20 80035320 27A60040 */  addiu $a2, $sp, 0x40
/* 035F24 80035324 2407FFFF */  li    $a3, -1
/* 035F28 80035328 46124400 */  add.s $f16, $f8, $f18
/* 035F2C 8003532C 44819000 */  mtc1  $at, $f18
/* 035F30 80035330 E7B00044 */  swc1  $f16, 0x44($sp)
/* 035F34 80035334 C6060024 */  lwc1  $f6, 0x24($s0)
/* 035F38 80035338 C6040014 */  lwc1  $f4, 0x14($s0)
/* 035F3C 8003533C 46003282 */  mul.s $f10, $f6, $f0
/* 035F40 80035340 E7A00038 */  swc1  $f0, 0x38($sp)
/* 035F44 80035344 AFA50028 */  sw    $a1, 0x28($sp)
/* 035F48 80035348 E7B2003C */  swc1  $f18, 0x3c($sp)
/* 035F4C 8003534C 460A2200 */  add.s $f8, $f4, $f10
/* 035F50 80035350 0C00C44C */  jal   func_80031130
/* 035F54 80035354 E7A80048 */   swc1  $f8, 0x48($sp)
/* 035F58 80035358 8FA40028 */  lw    $a0, 0x28($sp)
/* 035F5C 8003535C 24190001 */  li    $t9, 1
/* 035F60 80035360 27A80034 */  addiu $t0, $sp, 0x34
/* 035F64 80035364 AFA00034 */  sw    $zero, 0x34($sp)
/* 035F68 80035368 A3A00033 */  sb    $zero, 0x33($sp)
/* 035F6C 8003536C AFA80014 */  sw    $t0, 0x14($sp)
/* 035F70 80035370 AFB90010 */  sw    $t9, 0x10($sp)
/* 035F74 80035374 27A50040 */  addiu $a1, $sp, 0x40
/* 035F78 80035378 27A6003C */  addiu $a2, $sp, 0x3c
/* 035F7C 8003537C 0C00C580 */  jal   func_80031600
/* 035F80 80035380 27A70033 */   addiu $a3, $sp, 0x33
/* 035F84 80035384 C7B00040 */  lwc1  $f16, 0x40($sp)
/* 035F88 80035388 C606000C */  lwc1  $f6, 0xc($s0)
/* 035F8C 8003538C C7A00038 */  lwc1  $f0, 0x38($sp)
/* 035F90 80035390 46068101 */  sub.s $f4, $f16, $f6
/* 035F94 80035394 3C01800E */  lui   $at, %hi(D_800E6018 + 4) # $at, 0x800e
/* 035F98 80035398 46002283 */  div.s $f10, $f4, $f0
/* 035F9C 8003539C C4236018 */  lwc1  $f3, %lo(D_800E6018)($at)
/* 035FA0 800353A0 C422601C */  lwc1  $f2, %lo(D_800E6018 + 4)($at)
/* 035FA4 800353A4 C6120010 */  lwc1  $f18, 0x10($s0)
/* 035FA8 800353A8 3C013FE0 */  li    $at, 0x3FE00000 # 1.750000
/* 035FAC 800353AC E60A001C */  swc1  $f10, 0x1c($s0)
/* 035FB0 800353B0 C7A80044 */  lwc1  $f8, 0x44($sp)
/* 035FB4 800353B4 C60A0014 */  lwc1  $f10, 0x14($s0)
/* 035FB8 800353B8 46124401 */  sub.s $f16, $f8, $f18
/* 035FBC 800353BC 00000000 */  nop   
/* 035FC0 800353C0 46008183 */  div.s $f6, $f16, $f0
/* 035FC4 800353C4 E6060020 */  swc1  $f6, 0x20($s0)
/* 035FC8 800353C8 C7A40048 */  lwc1  $f4, 0x48($sp)
/* 035FCC 800353CC 00000000 */  nop   
/* 035FD0 800353D0 460A2201 */  sub.s $f8, $f4, $f10
/* 035FD4 800353D4 C60A0020 */  lwc1  $f10, 0x20($s0)
/* 035FD8 800353D8 46004483 */  div.s $f18, $f8, $f0
/* 035FDC 800353DC 44819800 */  mtc1  $at, $f19
/* 035FE0 800353E0 46005221 */  cvt.d.s $f8, $f10
/* 035FE4 800353E4 3C01800E */  lui   $at, %hi(D_800E6020) # $at, 0x800e
/* 035FE8 800353E8 E6120024 */  swc1  $f18, 0x24($s0)
/* 035FEC 800353EC C7B00040 */  lwc1  $f16, 0x40($sp)
/* 035FF0 800353F0 44809000 */  mtc1  $zero, $f18
/* 035FF4 800353F4 E610000C */  swc1  $f16, 0xc($s0)
/* 035FF8 800353F8 C7A60044 */  lwc1  $f6, 0x44($sp)
/* 035FFC 800353FC 46324401 */  sub.d $f16, $f8, $f18
/* 036000 80035400 E6060010 */  swc1  $f6, 0x10($s0)
/* 036004 80035404 C7A40048 */  lwc1  $f4, 0x48($sp)
/* 036008 80035408 462081A0 */  cvt.s.d $f6, $f16
/* 03600C 8003540C E6040014 */  swc1  $f4, 0x14($s0)
/* 036010 80035410 C604001C */  lwc1  $f4, 0x1c($s0)
/* 036014 80035414 C6100024 */  lwc1  $f16, 0x24($s0)
/* 036018 80035418 460022A1 */  cvt.d.s $f10, $f4
/* 03601C 8003541C 46225202 */  mul.d $f8, $f10, $f2
/* 036020 80035420 E6060020 */  swc1  $f6, 0x20($s0)
/* 036024 80035424 460081A1 */  cvt.d.s $f6, $f16
/* 036028 80035428 46223102 */  mul.d $f4, $f6, $f2
/* 03602C 8003542C 462044A0 */  cvt.s.d $f18, $f8
/* 036030 80035430 C6080020 */  lwc1  $f8, 0x20($s0)
/* 036034 80035434 E612001C */  swc1  $f18, 0x1c($s0)
/* 036038 80035438 462022A0 */  cvt.s.d $f10, $f4
/* 03603C 8003543C E60A0024 */  swc1  $f10, 0x24($s0)
/* 036040 80035440 C4306024 */  lwc1  $f16, %lo(D_800E6020 + 4)($at)
/* 036044 80035444 C4316020 */  lwc1  $f17, %lo(D_800E6020)($at)
/* 036048 80035448 460044A1 */  cvt.d.s $f18, $f8
/* 03604C 8003544C 46309182 */  mul.d $f6, $f18, $f16
/* 036050 80035450 3C01C4FA */  li    $at, 0xC4FA0000 # -2000.000000
/* 036054 80035454 44814000 */  mtc1  $at, $f8
/* 036058 80035458 C60A0010 */  lwc1  $f10, 0x10($s0)
/* 03605C 8003545C 00000000 */  nop   
/* 036060 80035460 4608503C */  c.lt.s $f10, $f8
/* 036064 80035464 46203120 */  cvt.s.d $f4, $f6
/* 036068 80035468 45010009 */  bc1t  .L80035490
/* 03606C 8003546C E6040020 */   swc1  $f4, 0x20($s0)
/* 036070 80035470 8FA90034 */  lw    $t1, 0x34($sp)
/* 036074 80035474 83AA0033 */  lb    $t2, 0x33($sp)
/* 036078 80035478 1120000C */  beqz  $t1, .L800354AC
/* 03607C 8003547C 29410005 */   slti  $at, $t2, 5
/* 036080 80035480 14200003 */  bnez  $at, .L80035490
/* 036084 80035484 2941000A */   slti  $at, $t2, 0xa
/* 036088 80035488 14200009 */  bnez  $at, .L800354B0
/* 03608C 8003548C 8FAB0034 */   lw    $t3, 0x34($sp)
.L80035490:
/* 036090 80035490 8E220004 */  lw    $v0, 4($s1)
/* 036094 80035494 00000000 */  nop   
/* 036098 80035498 10400002 */  beqz  $v0, .L800354A4
/* 03609C 8003549C 00000000 */   nop   
/* 0360A0 800354A0 AC400078 */  sw    $zero, 0x78($v0)
.L800354A4:
/* 0360A4 800354A4 0C003FEE */  jal   gParticlePtrList_addObject
/* 0360A8 800354A8 02002025 */   move  $a0, $s0
.L800354AC:
/* 0360AC 800354AC 8FAB0034 */  lw    $t3, 0x34($sp)
.L800354B0:
/* 0360B0 800354B0 83AC0033 */  lb    $t4, 0x33($sp)
/* 0360B4 800354B4 11600007 */  beqz  $t3, .L800354D4
/* 0360B8 800354B8 24010005 */   li    $at, 5
/* 0360BC 800354BC 15810006 */  bne   $t4, $at, .L800354D8
/* 0360C0 800354C0 8FAD0034 */   lw    $t5, 0x34($sp)
/* 0360C4 800354C4 44800000 */  mtc1  $zero, $f0
/* 0360C8 800354C8 A220000B */  sb    $zero, 0xb($s1)
/* 0360CC 800354CC E600001C */  swc1  $f0, 0x1c($s0)
/* 0360D0 800354D0 E6000024 */  swc1  $f0, 0x24($s0)
.L800354D4:
/* 0360D4 800354D4 8FAD0034 */  lw    $t5, 0x34($sp)
.L800354D8:
/* 0360D8 800354D8 83AE0033 */  lb    $t6, 0x33($sp)
/* 0360DC 800354DC 11A00053 */  beqz  $t5, .L8003562C
/* 0360E0 800354E0 29C10006 */   slti  $at, $t6, 6
/* 0360E4 800354E4 14200051 */  bnez  $at, .L8003562C
/* 0360E8 800354E8 29C1000A */   slti  $at, $t6, 0xa
/* 0360EC 800354EC 1020004F */  beqz  $at, .L8003562C
/* 0360F0 800354F0 25CFFFFA */   addiu $t7, $t6, -6
/* 0360F4 800354F4 A22F000A */  sb    $t7, 0xa($s1)
/* 0360F8 800354F8 24180003 */  li    $t8, 3
/* 0360FC 800354FC 8224000A */  lb    $a0, 0xa($s1)
/* 036100 80035500 0C006EB2 */  jal   get_racer_object
/* 036104 80035504 A238000B */   sb    $t8, 0xb($s1)
/* 036108 80035508 44800000 */  mtc1  $zero, $f0
/* 03610C 8003550C 10400007 */  beqz  $v0, .L8003552C
/* 036110 80035510 24090258 */   li    $t1, 600
/* 036114 80035514 8C460064 */  lw    $a2, 0x64($v0)
/* 036118 80035518 00000000 */  nop   
/* 03611C 8003551C 80D901CF */  lb    $t9, 0x1cf($a2)
/* 036120 80035520 00000000 */  nop   
/* 036124 80035524 27280001 */  addiu $t0, $t9, 1
/* 036128 80035528 A0C801CF */  sb    $t0, 0x1cf($a2)
.L8003552C:
/* 03612C 8003552C A6290008 */  sh    $t1, 8($s1)
/* 036130 80035530 E600001C */  swc1  $f0, 0x1c($s0)
/* 036134 80035534 1000003D */  b     .L8003562C
/* 036138 80035538 E6000024 */   swc1  $f0, 0x24($s0)
.L8003553C:
/* 03613C 8003553C 862A0008 */  lh    $t2, 8($s1)
/* 036140 80035540 8224000A */  lb    $a0, 0xa($s1)
/* 036144 80035544 01455823 */  subu  $t3, $t2, $a1
/* 036148 80035548 0C006EB2 */  jal   get_racer_object
/* 03614C 8003554C A62B0008 */   sh    $t3, 8($s1)
/* 036150 80035550 10400004 */  beqz  $v0, .L80035564
/* 036154 80035554 00403825 */   move  $a3, $v0
/* 036158 80035558 8C460064 */  lw    $a2, 0x64($v0)
/* 03615C 8003555C 00000000 */  nop   
/* 036160 80035560 AFA6004C */  sw    $a2, 0x4c($sp)
.L80035564:
/* 036164 80035564 86230008 */  lh    $v1, 8($s1)
/* 036168 80035568 8FA6004C */  lw    $a2, 0x4c($sp)
/* 03616C 8003556C 1C60000C */  bgtz  $v1, .L800355A0
/* 036170 80035570 240E0004 */   li    $t6, 4
/* 036174 80035574 10400005 */  beqz  $v0, .L8003558C
/* 036178 80035578 00000000 */   nop   
/* 03617C 8003557C 80CC0193 */  lb    $t4, 0x193($a2)
/* 036180 80035580 00000000 */  nop   
/* 036184 80035584 258D0001 */  addiu $t5, $t4, 1
/* 036188 80035588 A0CD0193 */  sb    $t5, 0x193($a2)
.L8003558C:
/* 03618C 8003558C 8E2F0004 */  lw    $t7, 4($s1)
/* 036190 80035590 A22E000B */  sb    $t6, 0xb($s1)
/* 036194 80035594 ADE00078 */  sw    $zero, 0x78($t7)
/* 036198 80035598 86230008 */  lh    $v1, 8($s1)
/* 03619C 8003559C 00000000 */  nop   
.L800355A0:
/* 0361A0 800355A0 2861021C */  slti  $at, $v1, 0x21c
/* 0361A4 800355A4 10200008 */  beqz  $at, .L800355C8
/* 0361A8 800355A8 02002025 */   move  $a0, $s0
/* 0361AC 800355AC 02202825 */  move  $a1, $s1
/* 0361B0 800355B0 AFA6004C */  sw    $a2, 0x4c($sp)
/* 0361B4 800355B4 0C00D810 */  jal   func_80036040
/* 0361B8 800355B8 AFA70050 */   sw    $a3, 0x50($sp)
/* 0361BC 800355BC 8FA6004C */  lw    $a2, 0x4c($sp)
/* 0361C0 800355C0 8FA70050 */  lw    $a3, 0x50($sp)
/* 0361C4 800355C4 00000000 */  nop   
.L800355C8:
/* 0361C8 800355C8 10E00019 */  beqz  $a3, .L80035630
/* 0361CC 800355CC 8FBF0024 */   lw    $ra, 0x24($sp)
/* 0361D0 800355D0 8238000B */  lb    $t8, 0xb($s1)
/* 0361D4 800355D4 24010003 */  li    $at, 3
/* 0361D8 800355D8 13010015 */  beq   $t8, $at, .L80035630
/* 0361DC 800355DC 8FBF0024 */   lw    $ra, 0x24($sp)
/* 0361E0 800355E0 80D901CF */  lb    $t9, 0x1cf($a2)
/* 0361E4 800355E4 00000000 */  nop   
/* 0361E8 800355E8 2728FFFF */  addiu $t0, $t9, -1
/* 0361EC 800355EC 1000000F */  b     .L8003562C
/* 0361F0 800355F0 A0C801CF */   sb    $t0, 0x1cf($a2)
.L800355F4:
/* 0361F4 800355F4 8224000A */  lb    $a0, 0xa($s1)
/* 0361F8 800355F8 0C006EB2 */  jal   get_racer_object
/* 0361FC 800355FC 00000000 */   nop   
/* 036200 80035600 10400009 */  beqz  $v0, .L80035628
/* 036204 80035604 240B0080 */   li    $t3, 128
/* 036208 80035608 8C460064 */  lw    $a2, 0x64($v0)
/* 03620C 8003560C 240A0001 */  li    $t2, 1
/* 036210 80035610 80C90193 */  lb    $t1, 0x193($a2)
/* 036214 80035614 00000000 */  nop   
/* 036218 80035618 29210003 */  slti  $at, $t1, 3
/* 03621C 8003561C 14200002 */  bnez  $at, .L80035628
/* 036220 80035620 00000000 */   nop   
/* 036224 80035624 A0CA01D8 */  sb    $t2, 0x1d8($a2)
.L80035628:
/* 036228 80035628 A60B0018 */  sh    $t3, 0x18($s0)
.L8003562C:
/* 03622C 8003562C 8FBF0024 */  lw    $ra, 0x24($sp)
.L80035630:
/* 036230 80035630 8FB0001C */  lw    $s0, 0x1c($sp)
/* 036234 80035634 8FB10020 */  lw    $s1, 0x20($sp)
/* 036238 80035638 03E00008 */  jr    $ra
/* 03623C 8003563C 27BD0058 */   addiu $sp, $sp, 0x58

