glabel func_8000A414
/* 00B014 8000A414 27BDFFC8 */  addiu $sp, $sp, -0x38
/* 00B018 8000A418 444EF800 */  cfc1  $t6, $31
/* 00B01C 8000A41C AFBF0014 */  sw    $ra, 0x14($sp)
/* 00B020 8000A420 35C10003 */  ori   $at, $t6, 3
/* 00B024 8000A424 AFA40038 */  sw    $a0, 0x38($sp)
/* 00B028 8000A428 AFA5003C */  sw    $a1, 0x3c($sp)
/* 00B02C 8000A42C AFA60040 */  sw    $a2, 0x40($sp)
/* 00B030 8000A430 38210002 */  xori  $at, $at, 2
/* 00B034 8000A434 44C1F800 */  ctc1  $at, $31
/* 00B038 8000A438 C4E40000 */  lwc1  $f4, ($a3)
/* 00B03C 8000A43C C4E80004 */  lwc1  $f8, 4($a3)
/* 00B040 8000A440 460021A4 */  cvt.w.s $f6, $f4
/* 00B044 8000A444 C4F00008 */  lwc1  $f16, 8($a3)
/* 00B048 8000A448 44CEF800 */  ctc1  $t6, $31
/* 00B04C 8000A44C C4E4000C */  lwc1  $f4, 0xc($a3)
/* 00B050 8000A450 44083000 */  mfc1  $t0, $f6
/* 00B054 8000A454 4459F800 */  cfc1  $t9, $31
/* 00B058 8000A458 00000000 */  nop   
/* 00B05C 8000A45C 37210003 */  ori   $at, $t9, 3
/* 00B060 8000A460 38210002 */  xori  $at, $at, 2
/* 00B064 8000A464 44C1F800 */  ctc1  $at, $31
/* 00B068 8000A468 00000000 */  nop   
/* 00B06C 8000A46C 460042A4 */  cvt.w.s $f10, $f8
/* 00B070 8000A470 C4E80010 */  lwc1  $f8, 0x10($a3)
/* 00B074 8000A474 44D9F800 */  ctc1  $t9, $31
/* 00B078 8000A478 44095000 */  mfc1  $t1, $f10
/* 00B07C 8000A47C 00000000 */  nop   
/* 00B080 8000A480 4458F800 */  cfc1  $t8, $31
/* 00B084 8000A484 00000000 */  nop   
/* 00B088 8000A488 37010003 */  ori   $at, $t8, 3
/* 00B08C 8000A48C 38210002 */  xori  $at, $at, 2
/* 00B090 8000A490 44C1F800 */  ctc1  $at, $31
/* 00B094 8000A494 00000000 */  nop   
/* 00B098 8000A498 460084A4 */  cvt.w.s $f18, $f16
/* 00B09C 8000A49C C4F00014 */  lwc1  $f16, 0x14($a3)
/* 00B0A0 8000A4A0 44D8F800 */  ctc1  $t8, $31
/* 00B0A4 8000A4A4 440A9000 */  mfc1  $t2, $f18
/* 00B0A8 8000A4A8 00000000 */  nop   
/* 00B0AC 8000A4AC 444FF800 */  cfc1  $t7, $31
/* 00B0B0 8000A4B0 00000000 */  nop   
/* 00B0B4 8000A4B4 35E10003 */  ori   $at, $t7, 3
/* 00B0B8 8000A4B8 38210002 */  xori  $at, $at, 2
/* 00B0BC 8000A4BC 44C1F800 */  ctc1  $at, $31
/* 00B0C0 8000A4C0 00000000 */  nop   
/* 00B0C4 8000A4C4 460021A4 */  cvt.w.s $f6, $f4
/* 00B0C8 8000A4C8 44CFF800 */  ctc1  $t7, $31
/* 00B0CC 8000A4CC 440B3000 */  mfc1  $t3, $f6
/* 00B0D0 8000A4D0 00000000 */  nop   
/* 00B0D4 8000A4D4 444EF800 */  cfc1  $t6, $31
/* 00B0D8 8000A4D8 00000000 */  nop   
/* 00B0DC 8000A4DC 35C10003 */  ori   $at, $t6, 3
/* 00B0E0 8000A4E0 38210002 */  xori  $at, $at, 2
/* 00B0E4 8000A4E4 44C1F800 */  ctc1  $at, $31
/* 00B0E8 8000A4E8 00000000 */  nop   
/* 00B0EC 8000A4EC 460042A4 */  cvt.w.s $f10, $f8
/* 00B0F0 8000A4F0 44CEF800 */  ctc1  $t6, $31
/* 00B0F4 8000A4F4 440C5000 */  mfc1  $t4, $f10
/* 00B0F8 8000A4F8 00000000 */  nop   
/* 00B0FC 8000A4FC 4459F800 */  cfc1  $t9, $31
/* 00B100 8000A500 00000000 */  nop   
/* 00B104 8000A504 37210003 */  ori   $at, $t9, 3
/* 00B108 8000A508 38210002 */  xori  $at, $at, 2
/* 00B10C 8000A50C 44C1F800 */  ctc1  $at, $31
/* 00B110 8000A510 00000000 */  nop   
/* 00B114 8000A514 460084A4 */  cvt.w.s $f18, $f16
/* 00B118 8000A518 44D9F800 */  ctc1  $t9, $31
/* 00B11C 8000A51C 8C990000 */  lw    $t9, ($a0)
/* 00B120 8000A520 440D9000 */  mfc1  $t5, $f18
/* 00B124 8000A524 AFB90034 */  sw    $t9, 0x34($sp)
/* 00B128 8000A528 8CA20000 */  lw    $v0, ($a1)
/* 00B12C 8000A52C 8CC30000 */  lw    $v1, ($a2)
/* 00B130 8000A530 00003025 */  move  $a2, $zero
/* 00B134 8000A534 00002825 */  move  $a1, $zero
/* 00B138 8000A538 27A40034 */  addiu $a0, $sp, 0x34
/* 00B13C 8000A53C A7A8002A */  sh    $t0, 0x2a($sp)
/* 00B140 8000A540 A7A90028 */  sh    $t1, 0x28($sp)
/* 00B144 8000A544 A7AA0026 */  sh    $t2, 0x26($sp)
/* 00B148 8000A548 A7AB0024 */  sh    $t3, 0x24($sp)
/* 00B14C 8000A54C A7AC0022 */  sh    $t4, 0x22($sp)
/* 00B150 8000A550 A7AD0020 */  sh    $t5, 0x20($sp)
/* 00B154 8000A554 AFA20030 */  sw    $v0, 0x30($sp)
/* 00B158 8000A558 0C01ED32 */  jal   func_8007B4C8
/* 00B15C 8000A55C AFA3002C */   sw    $v1, 0x2c($sp)
/* 00B160 8000A560 8FA20030 */  lw    $v0, 0x30($sp)
/* 00B164 8000A564 3C078000 */  lui   $a3, 0x8000
/* 00B168 8000A568 8FA40034 */  lw    $a0, 0x34($sp)
/* 00B16C 8000A56C 00472821 */  addu  $a1, $v0, $a3
/* 00B170 8000A570 30AE0006 */  andi  $t6, $a1, 6
/* 00B174 8000A574 35CF0018 */  ori   $t7, $t6, 0x18
/* 00B178 8000A578 24990008 */  addiu $t9, $a0, 8
/* 00B17C 8000A57C AFB90034 */  sw    $t9, 0x34($sp)
/* 00B180 8000A580 31F800FF */  andi  $t8, $t7, 0xff
/* 00B184 8000A584 0018CC00 */  sll   $t9, $t8, 0x10
/* 00B188 8000A588 3C010400 */  lui   $at, 0x400
/* 00B18C 8000A58C 8FA3002C */  lw    $v1, 0x2c($sp)
/* 00B190 8000A590 87A8002A */  lh    $t0, 0x2a($sp)
/* 00B194 8000A594 87A90028 */  lh    $t1, 0x28($sp)
/* 00B198 8000A598 87AA0026 */  lh    $t2, 0x26($sp)
/* 00B19C 8000A59C 87AB0024 */  lh    $t3, 0x24($sp)
/* 00B1A0 8000A5A0 87AC0022 */  lh    $t4, 0x22($sp)
/* 00B1A4 8000A5A4 87AD0020 */  lh    $t5, 0x20($sp)
/* 00B1A8 8000A5A8 93BF004B */  lbu   $ra, 0x4b($sp)
/* 00B1AC 8000A5AC 03217025 */  or    $t6, $t9, $at
/* 00B1B0 8000A5B0 35CF0050 */  ori   $t7, $t6, 0x50
/* 00B1B4 8000A5B4 AC8F0000 */  sw    $t7, ($a0)
/* 00B1B8 8000A5B8 AC850004 */  sw    $a1, 4($a0)
/* 00B1BC 8000A5BC 8FB80034 */  lw    $t8, 0x34($sp)
/* 00B1C0 8000A5C0 3C0E0510 */  lui   $t6, (0x05100020 >> 16) # lui $t6, 0x510
/* 00B1C4 8000A5C4 27190008 */  addiu $t9, $t8, 8
/* 00B1C8 8000A5C8 AFB90034 */  sw    $t9, 0x34($sp)
/* 00B1CC 8000A5CC 35CE0020 */  ori   $t6, (0x05100020 & 0xFFFF) # ori $t6, $t6, 0x20
/* 00B1D0 8000A5D0 00677821 */  addu  $t7, $v1, $a3
/* 00B1D4 8000A5D4 AF0F0004 */  sw    $t7, 4($t8)
/* 00B1D8 8000A5D8 AF0E0000 */  sw    $t6, ($t8)
/* 00B1DC 8000A5DC 25380005 */  addiu $t8, $t1, 5
/* 00B1E0 8000A5E0 A4580002 */  sh    $t8, 2($v0)
/* 00B1E4 8000A5E4 A4480000 */  sh    $t0, ($v0)
/* 00B1E8 8000A5E8 A44A0004 */  sh    $t2, 4($v0)
/* 00B1EC 8000A5EC A05F0006 */  sb    $ra, 6($v0)
/* 00B1F0 8000A5F0 93B9004F */  lbu   $t9, 0x4f($sp)
/* 00B1F4 8000A5F4 240400FF */  li    $a0, 255
/* 00B1F8 8000A5F8 A0590007 */  sb    $t9, 7($v0)
/* 00B1FC 8000A5FC 93A50053 */  lbu   $a1, 0x53($sp)
/* 00B200 8000A600 252EFFFB */  addiu $t6, $t1, -5
/* 00B204 8000A604 A0440009 */  sb    $a0, 9($v0)
/* 00B208 8000A608 A44E000C */  sh    $t6, 0xc($v0)
/* 00B20C 8000A60C A448000A */  sh    $t0, 0xa($v0)
/* 00B210 8000A610 A44A000E */  sh    $t2, 0xe($v0)
/* 00B214 8000A614 A05F0010 */  sb    $ra, 0x10($v0)
/* 00B218 8000A618 A0450008 */  sb    $a1, 8($v0)
/* 00B21C 8000A61C 93AF004F */  lbu   $t7, 0x4f($sp)
/* 00B220 8000A620 A0440013 */  sb    $a0, 0x13($v0)
/* 00B224 8000A624 A044001A */  sb    $a0, 0x1a($v0)
/* 00B228 8000A628 A044001B */  sb    $a0, 0x1b($v0)
/* 00B22C 8000A62C A044001C */  sb    $a0, 0x1c($v0)
/* 00B230 8000A630 A044001D */  sb    $a0, 0x1d($v0)
/* 00B234 8000A634 A0440024 */  sb    $a0, 0x24($v0)
/* 00B238 8000A638 A0440025 */  sb    $a0, 0x25($v0)
/* 00B23C 8000A63C A0440026 */  sb    $a0, 0x26($v0)
/* 00B240 8000A640 A0440027 */  sb    $a0, 0x27($v0)
/* 00B244 8000A644 25980005 */  addiu $t8, $t4, 5
/* 00B248 8000A648 2599FFFB */  addiu $t9, $t4, -5
/* 00B24C 8000A64C A0450012 */  sb    $a1, 0x12($v0)
/* 00B250 8000A650 A4580016 */  sh    $t8, 0x16($v0)
/* 00B254 8000A654 A4590020 */  sh    $t9, 0x20($v0)
/* 00B258 8000A658 A44B0014 */  sh    $t3, 0x14($v0)
/* 00B25C 8000A65C A44B001E */  sh    $t3, 0x1e($v0)
/* 00B260 8000A660 A44D0018 */  sh    $t5, 0x18($v0)
/* 00B264 8000A664 A44D0022 */  sh    $t5, 0x22($v0)
/* 00B268 8000A668 A04F0011 */  sb    $t7, 0x11($v0)
/* 00B26C 8000A66C 240403E0 */  li    $a0, 992
/* 00B270 8000A670 24050001 */  li    $a1, 1
/* 00B274 8000A674 24080001 */  li    $t0, 1
/* 00B278 8000A678 24070002 */  li    $a3, 2
/* 00B27C 8000A67C 24060040 */  li    $a2, 64
/* 00B280 8000A680 240E0003 */  li    $t6, 3
/* 00B284 8000A684 A0660000 */  sb    $a2, ($v1)
/* 00B288 8000A688 A0670001 */  sb    $a3, 1($v1)
/* 00B28C 8000A68C A0680002 */  sb    $t0, 2($v1)
/* 00B290 8000A690 A0600003 */  sb    $zero, 3($v1)
/* 00B294 8000A694 A4640004 */  sh    $a0, 4($v1)
/* 00B298 8000A698 A4640006 */  sh    $a0, 6($v1)
/* 00B29C 8000A69C A4640008 */  sh    $a0, 8($v1)
/* 00B2A0 8000A6A0 A460000A */  sh    $zero, 0xa($v1)
/* 00B2A4 8000A6A4 A465000C */  sh    $a1, 0xc($v1)
/* 00B2A8 8000A6A8 A460000E */  sh    $zero, 0xe($v1)
/* 00B2AC 8000A6AC A0660010 */  sb    $a2, 0x10($v1)
/* 00B2B0 8000A6B0 A06E0011 */  sb    $t6, 0x11($v1)
/* 00B2B4 8000A6B4 A0670012 */  sb    $a3, 0x12($v1)
/* 00B2B8 8000A6B8 A0680013 */  sb    $t0, 0x13($v1)
/* 00B2BC 8000A6BC A4650014 */  sh    $a1, 0x14($v1)
/* 00B2C0 8000A6C0 A4640016 */  sh    $a0, 0x16($v1)
/* 00B2C4 8000A6C4 A4640018 */  sh    $a0, 0x18($v1)
/* 00B2C8 8000A6C8 A464001A */  sh    $a0, 0x1a($v1)
/* 00B2CC 8000A6CC A465001C */  sh    $a1, 0x1c($v1)
/* 00B2D0 8000A6D0 A460001E */  sh    $zero, 0x1e($v1)
/* 00B2D4 8000A6D4 8FB80038 */  lw    $t8, 0x38($sp)
/* 00B2D8 8000A6D8 8FAF0034 */  lw    $t7, 0x34($sp)
/* 00B2DC 8000A6DC 24420028 */  addiu $v0, $v0, 0x28
/* 00B2E0 8000A6E0 AF0F0000 */  sw    $t7, ($t8)
/* 00B2E4 8000A6E4 8FB9003C */  lw    $t9, 0x3c($sp)
/* 00B2E8 8000A6E8 24630020 */  addiu $v1, $v1, 0x20
/* 00B2EC 8000A6EC AF220000 */  sw    $v0, ($t9)
/* 00B2F0 8000A6F0 8FAE0040 */  lw    $t6, 0x40($sp)
/* 00B2F4 8000A6F4 00000000 */  nop   
/* 00B2F8 8000A6F8 ADC30000 */  sw    $v1, ($t6)
/* 00B2FC 8000A6FC 8FBF0014 */  lw    $ra, 0x14($sp)
/* 00B300 8000A700 27BD0038 */  addiu $sp, $sp, 0x38
/* 00B304 8000A704 03E00008 */  jr    $ra
/* 00B308 8000A708 00000000 */   nop   

/* 00B30C 8000A70C 00000000 */  nop   
/* 00B310 8000A710 AFA40000 */  sw    $a0, ($sp)
/* 00B314 8000A714 03E00008 */  jr    $ra
/* 00B318 8000A718 AFA50004 */   sw    $a1, 4($sp)

