glabel func_800BA4B8
/* 0BB0B8 800BA4B8 27BDFFA0 */  addiu $sp, $sp, -0x60
/* 0BB0BC 800BA4BC AFA50064 */  sw    $a1, 0x64($sp)
/* 0BB0C0 800BA4C0 90880000 */  lbu   $t0, ($a0)
/* 0BB0C4 800BA4C4 24010010 */  li    $at, 16
/* 0BB0C8 800BA4C8 00803825 */  move  $a3, $a0
/* 0BB0CC 800BA4CC 15010006 */  bne   $t0, $at, .L800BA4E8
/* 0BB0D0 800BA4D0 00003025 */   move  $a2, $zero
/* 0BB0D4 800BA4D4 10A00002 */  beqz  $a1, .L800BA4E0
/* 0BB0D8 800BA4D8 240C0004 */   li    $t4, 4
/* 0BB0DC 800BA4DC 24060180 */  li    $a2, 384
.L800BA4E0:
/* 0BB0E0 800BA4E0 10000010 */  b     .L800BA524
/* 0BB0E4 800BA4E4 AFAC005C */   sw    $t4, 0x5c($sp)
.L800BA4E8:
/* 0BB0E8 800BA4E8 24010020 */  li    $at, 32
/* 0BB0EC 800BA4EC 15010009 */  bne   $t0, $at, .L800BA514
/* 0BB0F0 800BA4F0 8FB80064 */   lw    $t8, 0x64($sp)
/* 0BB0F4 800BA4F4 8FAF0064 */  lw    $t7, 0x64($sp)
/* 0BB0F8 800BA4F8 240C0005 */  li    $t4, 5
/* 0BB0FC 800BA4FC 11E00002 */  beqz  $t7, .L800BA508
/* 0BB100 800BA500 00000000 */   nop   
/* 0BB104 800BA504 24060100 */  li    $a2, 256
.L800BA508:
/* 0BB108 800BA508 10000006 */  b     .L800BA524
/* 0BB10C 800BA50C AFAC005C */   sw    $t4, 0x5c($sp)
/* 0BB110 800BA510 8FB80064 */  lw    $t8, 0x64($sp)
.L800BA514:
/* 0BB114 800BA514 24080003 */  li    $t0, 3
/* 0BB118 800BA518 13000002 */  beqz  $t8, .L800BA524
/* 0BB11C 800BA51C 00000000 */   nop   
/* 0BB120 800BA520 24060180 */  li    $a2, 384
.L800BA524:
/* 0BB124 800BA524 90F90002 */  lbu   $t9, 2($a3)
/* 0BB128 800BA528 8FAC005C */  lw    $t4, 0x5c($sp)
/* 0BB12C 800BA52C 332E000F */  andi  $t6, $t9, 0xf
/* 0BB130 800BA530 15C00073 */  bnez  $t6, .L800BA700
/* 0BB134 800BA534 3C038013 */   lui   $v1, %hi(D_80129FC0) # $v1, 0x8013
/* 0BB138 800BA538 3C038013 */  lui   $v1, %hi(D_80129FC0) # $v1, 0x8013
/* 0BB13C 800BA53C 24639FC0 */  addiu $v1, %lo(D_80129FC0) # addiu $v1, $v1, -0x6040
/* 0BB140 800BA540 8C620000 */  lw    $v0, ($v1)
/* 0BB144 800BA544 3C018000 */  lui   $at, (0x80000020 >> 16) # lui $at, 0x8000
/* 0BB148 800BA548 244F0008 */  addiu $t7, $v0, 8
/* 0BB14C 800BA54C AC6F0000 */  sw    $t7, ($v1)
/* 0BB150 800BA550 34210020 */  ori   $at, (0x80000020 & 0xFFFF) # ori $at, $at, 0x20
/* 0BB154 800BA554 AFA20050 */  sw    $v0, 0x50($sp)
/* 0BB158 800BA558 00E17021 */  addu  $t6, $a3, $at
/* 0BB15C 800BA55C 3C18FD18 */  lui   $t8, 0xfd18
/* 0BB160 800BA560 AC580000 */  sw    $t8, ($v0)
/* 0BB164 800BA564 AC4E0004 */  sw    $t6, 4($v0)
/* 0BB168 800BA568 8C620000 */  lw    $v0, ($v1)
/* 0BB16C 800BA56C 3C01F518 */  lui   $at, 0xf518
/* 0BB170 800BA570 30C901FF */  andi  $t1, $a2, 0x1ff
/* 0BB174 800BA574 0121C025 */  or    $t8, $t1, $at
/* 0BB178 800BA578 3184000F */  andi  $a0, $t4, 0xf
/* 0BB17C 800BA57C 244F0008 */  addiu $t7, $v0, 8
/* 0BB180 800BA580 01080019 */  multu $t0, $t0
/* 0BB184 800BA584 AC6F0000 */  sw    $t7, ($v1)
/* 0BB188 800BA588 00045380 */  sll   $t2, $a0, 0xe
/* 0BB18C 800BA58C 3C010700 */  lui   $at, 0x700
/* 0BB190 800BA590 0141C825 */  or    $t9, $t2, $at
/* 0BB194 800BA594 00045900 */  sll   $t3, $a0, 4
/* 0BB198 800BA598 AFA2004C */  sw    $v0, 0x4c($sp)
/* 0BB19C 800BA59C 032B7825 */  or    $t7, $t9, $t3
/* 0BB1A0 800BA5A0 AC4F0004 */  sw    $t7, 4($v0)
/* 0BB1A4 800BA5A4 AC580000 */  sw    $t8, ($v0)
/* 0BB1A8 800BA5A8 8C620000 */  lw    $v0, ($v1)
/* 0BB1AC 800BA5AC 3C19E600 */  lui   $t9, 0xe600
/* 0BB1B0 800BA5B0 24580008 */  addiu $t8, $v0, 8
/* 0BB1B4 800BA5B4 AC780000 */  sw    $t8, ($v1)
/* 0BB1B8 800BA5B8 AFA20048 */  sw    $v0, 0x48($sp)
/* 0BB1BC 800BA5BC AC400004 */  sw    $zero, 4($v0)
/* 0BB1C0 800BA5C0 AC590000 */  sw    $t9, ($v0)
/* 0BB1C4 800BA5C4 8C6D0000 */  lw    $t5, ($v1)
/* 0BB1C8 800BA5C8 00002812 */  mflo  $a1
/* 0BB1CC 800BA5CC 24A5FFFF */  addiu $a1, $a1, -1
/* 0BB1D0 800BA5D0 25AE0008 */  addiu $t6, $t5, 8
/* 0BB1D4 800BA5D4 AC6E0000 */  sw    $t6, ($v1)
/* 0BB1D8 800BA5D8 2CA107FF */  sltiu $at, $a1, 0x7ff
/* 0BB1DC 800BA5DC 3C18F300 */  lui   $t8, 0xf300
/* 0BB1E0 800BA5E0 10200003 */  beqz  $at, .L800BA5F0
/* 0BB1E4 800BA5E4 ADB80000 */   sw    $t8, ($t5)
/* 0BB1E8 800BA5E8 10000002 */  b     .L800BA5F4
/* 0BB1EC 800BA5EC 00A06025 */   move  $t4, $a1
.L800BA5F0:
/* 0BB1F0 800BA5F0 240C07FF */  li    $t4, 2047
.L800BA5F4:
/* 0BB1F4 800BA5F4 00081080 */  sll   $v0, $t0, 2
/* 0BB1F8 800BA5F8 0002C8C2 */  srl   $t9, $v0, 3
/* 0BB1FC 800BA5FC 17200003 */  bnez  $t9, .L800BA60C
/* 0BB200 800BA600 03201025 */   move  $v0, $t9
/* 0BB204 800BA604 10000002 */  b     .L800BA610
/* 0BB208 800BA608 24070001 */   li    $a3, 1
.L800BA60C:
/* 0BB20C 800BA60C 00403825 */  move  $a3, $v0
.L800BA610:
/* 0BB210 800BA610 14400003 */  bnez  $v0, .L800BA620
/* 0BB214 800BA614 24EF07FF */   addiu $t7, $a3, 0x7ff
/* 0BB218 800BA618 10000002 */  b     .L800BA624
/* 0BB21C 800BA61C 24060001 */   li    $a2, 1
.L800BA620:
/* 0BB220 800BA620 00403025 */  move  $a2, $v0
.L800BA624:
/* 0BB224 800BA624 01E6001B */  divu  $zero, $t7, $a2
/* 0BB228 800BA628 318F0FFF */  andi  $t7, $t4, 0xfff
/* 0BB22C 800BA62C 3C010700 */  lui   $at, 0x700
/* 0BB230 800BA630 2505FFFF */  addiu $a1, $t0, -1
/* 0BB234 800BA634 14C00002 */  bnez  $a2, .L800BA640
/* 0BB238 800BA638 00000000 */   nop   
/* 0BB23C 800BA63C 0007000D */  break 7
.L800BA640:
/* 0BB240 800BA640 00007012 */  mflo  $t6
/* 0BB244 800BA644 31D80FFF */  andi  $t8, $t6, 0xfff
/* 0BB248 800BA648 0301C825 */  or    $t9, $t8, $at
/* 0BB24C 800BA64C 000F7300 */  sll   $t6, $t7, 0xc
/* 0BB250 800BA650 032EC025 */  or    $t8, $t9, $t6
/* 0BB254 800BA654 ADB80004 */  sw    $t8, 4($t5)
/* 0BB258 800BA658 8C620000 */  lw    $v0, ($v1)
/* 0BB25C 800BA65C 3C19E700 */  lui   $t9, 0xe700
/* 0BB260 800BA660 244F0008 */  addiu $t7, $v0, 8
/* 0BB264 800BA664 AC6F0000 */  sw    $t7, ($v1)
/* 0BB268 800BA668 AFA20040 */  sw    $v0, 0x40($sp)
/* 0BB26C 800BA66C AC400004 */  sw    $zero, 4($v0)
/* 0BB270 800BA670 AC590000 */  sw    $t9, ($v0)
/* 0BB274 800BA674 8C620000 */  lw    $v0, ($v1)
/* 0BB278 800BA678 00087840 */  sll   $t7, $t0, 1
/* 0BB27C 800BA67C 25F90007 */  addiu $t9, $t7, 7
/* 0BB280 800BA680 24580008 */  addiu $t8, $v0, 8
/* 0BB284 800BA684 AC780000 */  sw    $t8, ($v1)
/* 0BB288 800BA688 001970C2 */  srl   $t6, $t9, 3
/* 0BB28C 800BA68C 31D801FF */  andi  $t8, $t6, 0x1ff
/* 0BB290 800BA690 00187A40 */  sll   $t7, $t8, 9
/* 0BB294 800BA694 3C01F518 */  lui   $at, 0xf518
/* 0BB298 800BA698 01E1C825 */  or    $t9, $t7, $at
/* 0BB29C 800BA69C 03297025 */  or    $t6, $t9, $t1
/* 0BB2A0 800BA6A0 AFA2003C */  sw    $v0, 0x3c($sp)
/* 0BB2A4 800BA6A4 AC4E0000 */  sw    $t6, ($v0)
/* 0BB2A8 800BA6A8 8FA40064 */  lw    $a0, 0x64($sp)
/* 0BB2AC 800BA6AC 0005C080 */  sll   $t8, $a1, 2
/* 0BB2B0 800BA6B0 308F0007 */  andi  $t7, $a0, 7
/* 0BB2B4 800BA6B4 000FCE00 */  sll   $t9, $t7, 0x18
/* 0BB2B8 800BA6B8 032A7025 */  or    $t6, $t9, $t2
/* 0BB2BC 800BA6BC 01CB7825 */  or    $t7, $t6, $t3
/* 0BB2C0 800BA6C0 AC4F0004 */  sw    $t7, 4($v0)
/* 0BB2C4 800BA6C4 8C620000 */  lw    $v0, ($v1)
/* 0BB2C8 800BA6C8 03202025 */  move  $a0, $t9
/* 0BB2CC 800BA6CC 24590008 */  addiu $t9, $v0, 8
/* 0BB2D0 800BA6D0 AC790000 */  sw    $t9, ($v1)
/* 0BB2D4 800BA6D4 33190FFF */  andi  $t9, $t8, 0xfff
/* 0BB2D8 800BA6D8 3C0EF200 */  lui   $t6, 0xf200
/* 0BB2DC 800BA6DC AFA20038 */  sw    $v0, 0x38($sp)
/* 0BB2E0 800BA6E0 AC4E0000 */  sw    $t6, ($v0)
/* 0BB2E4 800BA6E4 00197300 */  sll   $t6, $t9, 0xc
/* 0BB2E8 800BA6E8 008EC025 */  or    $t8, $a0, $t6
/* 0BB2EC 800BA6EC 03202825 */  move  $a1, $t9
/* 0BB2F0 800BA6F0 0319C825 */  or    $t9, $t8, $t9
/* 0BB2F4 800BA6F4 AC590004 */  sw    $t9, 4($v0)
/* 0BB2F8 800BA6F8 10000078 */  b     .L800BA8DC
/* 0BB2FC 800BA6FC 00407825 */   move  $t7, $v0
.L800BA700:
/* 0BB300 800BA700 24639FC0 */  addiu $v1, %lo(D_80129FC0) # addiu $v1, $v1, -0x6040
/* 0BB304 800BA704 8C620000 */  lw    $v0, ($v1)
/* 0BB308 800BA708 3C018000 */  lui   $at, (0x80000020 >> 16) # lui $at, 0x8000
/* 0BB30C 800BA70C 244E0008 */  addiu $t6, $v0, 8
/* 0BB310 800BA710 AC6E0000 */  sw    $t6, ($v1)
/* 0BB314 800BA714 34210020 */  ori   $at, (0x80000020 & 0xFFFF) # ori $at, $at, 0x20
/* 0BB318 800BA718 AFA20034 */  sw    $v0, 0x34($sp)
/* 0BB31C 800BA71C 00E17821 */  addu  $t7, $a3, $at
/* 0BB320 800BA720 3C18FD10 */  lui   $t8, 0xfd10
/* 0BB324 800BA724 AC580000 */  sw    $t8, ($v0)
/* 0BB328 800BA728 AC4F0004 */  sw    $t7, 4($v0)
/* 0BB32C 800BA72C 8C620000 */  lw    $v0, ($v1)
/* 0BB330 800BA730 3C01F510 */  lui   $at, 0xf510
/* 0BB334 800BA734 30C901FF */  andi  $t1, $a2, 0x1ff
/* 0BB338 800BA738 0121C025 */  or    $t8, $t1, $at
/* 0BB33C 800BA73C 244E0008 */  addiu $t6, $v0, 8
/* 0BB340 800BA740 AC6E0000 */  sw    $t6, ($v1)
/* 0BB344 800BA744 3184000F */  andi  $a0, $t4, 0xf
/* 0BB348 800BA748 AFA20030 */  sw    $v0, 0x30($sp)
/* 0BB34C 800BA74C 00045380 */  sll   $t2, $a0, 0xe
/* 0BB350 800BA750 3C010700 */  lui   $at, 0x700
/* 0BB354 800BA754 AC580000 */  sw    $t8, ($v0)
/* 0BB358 800BA758 8FB80030 */  lw    $t8, 0x30($sp)
/* 0BB35C 800BA75C 0141C825 */  or    $t9, $t2, $at
/* 0BB360 800BA760 00045900 */  sll   $t3, $a0, 4
/* 0BB364 800BA764 01080019 */  multu $t0, $t0
/* 0BB368 800BA768 032B7025 */  or    $t6, $t9, $t3
/* 0BB36C 800BA76C AF0E0004 */  sw    $t6, 4($t8)
/* 0BB370 800BA770 8C620000 */  lw    $v0, ($v1)
/* 0BB374 800BA774 3C19E600 */  lui   $t9, 0xe600
/* 0BB378 800BA778 244F0008 */  addiu $t7, $v0, 8
/* 0BB37C 800BA77C AC6F0000 */  sw    $t7, ($v1)
/* 0BB380 800BA780 AFA2002C */  sw    $v0, 0x2c($sp)
/* 0BB384 800BA784 AC590000 */  sw    $t9, ($v0)
/* 0BB388 800BA788 8FB8002C */  lw    $t8, 0x2c($sp)
/* 0BB38C 800BA78C 3C19F300 */  lui   $t9, 0xf300
/* 0BB390 800BA790 AF000004 */  sw    $zero, 4($t8)
/* 0BB394 800BA794 8C6D0000 */  lw    $t5, ($v1)
/* 0BB398 800BA798 00002812 */  mflo  $a1
/* 0BB39C 800BA79C 24A5FFFF */  addiu $a1, $a1, -1
/* 0BB3A0 800BA7A0 25AF0008 */  addiu $t7, $t5, 8
/* 0BB3A4 800BA7A4 AC6F0000 */  sw    $t7, ($v1)
/* 0BB3A8 800BA7A8 2CA107FF */  sltiu $at, $a1, 0x7ff
/* 0BB3AC 800BA7AC 10200003 */  beqz  $at, .L800BA7BC
/* 0BB3B0 800BA7B0 ADB90000 */   sw    $t9, ($t5)
/* 0BB3B4 800BA7B4 10000002 */  b     .L800BA7C0
/* 0BB3B8 800BA7B8 00A06025 */   move  $t4, $a1
.L800BA7BC:
/* 0BB3BC 800BA7BC 240C07FF */  li    $t4, 2047
.L800BA7C0:
/* 0BB3C0 800BA7C0 00087040 */  sll   $t6, $t0, 1
/* 0BB3C4 800BA7C4 000EC0C2 */  srl   $t8, $t6, 3
/* 0BB3C8 800BA7C8 03001025 */  move  $v0, $t8
/* 0BB3CC 800BA7CC 17000003 */  bnez  $t8, .L800BA7DC
/* 0BB3D0 800BA7D0 AFAE0000 */   sw    $t6, ($sp)
/* 0BB3D4 800BA7D4 10000002 */  b     .L800BA7E0
/* 0BB3D8 800BA7D8 24070001 */   li    $a3, 1
.L800BA7DC:
/* 0BB3DC 800BA7DC 00403825 */  move  $a3, $v0
.L800BA7E0:
/* 0BB3E0 800BA7E0 14400003 */  bnez  $v0, .L800BA7F0
/* 0BB3E4 800BA7E4 24EF07FF */   addiu $t7, $a3, 0x7ff
/* 0BB3E8 800BA7E8 10000002 */  b     .L800BA7F4
/* 0BB3EC 800BA7EC 24060001 */   li    $a2, 1
.L800BA7F0:
/* 0BB3F0 800BA7F0 00403025 */  move  $a2, $v0
.L800BA7F4:
/* 0BB3F4 800BA7F4 01E6001B */  divu  $zero, $t7, $a2
/* 0BB3F8 800BA7F8 318F0FFF */  andi  $t7, $t4, 0xfff
/* 0BB3FC 800BA7FC 3C010700 */  lui   $at, 0x700
/* 0BB400 800BA800 2505FFFF */  addiu $a1, $t0, -1
/* 0BB404 800BA804 14C00002 */  bnez  $a2, .L800BA810
/* 0BB408 800BA808 00000000 */   nop   
/* 0BB40C 800BA80C 0007000D */  break 7
.L800BA810:
/* 0BB410 800BA810 0000C812 */  mflo  $t9
/* 0BB414 800BA814 332E0FFF */  andi  $t6, $t9, 0xfff
/* 0BB418 800BA818 01C1C025 */  or    $t8, $t6, $at
/* 0BB41C 800BA81C 000FCB00 */  sll   $t9, $t7, 0xc
/* 0BB420 800BA820 03197025 */  or    $t6, $t8, $t9
/* 0BB424 800BA824 ADAE0004 */  sw    $t6, 4($t5)
/* 0BB428 800BA828 8C620000 */  lw    $v0, ($v1)
/* 0BB42C 800BA82C 3C18E700 */  lui   $t8, 0xe700
/* 0BB430 800BA830 244F0008 */  addiu $t7, $v0, 8
/* 0BB434 800BA834 AC6F0000 */  sw    $t7, ($v1)
/* 0BB438 800BA838 AFA20024 */  sw    $v0, 0x24($sp)
/* 0BB43C 800BA83C AC580000 */  sw    $t8, ($v0)
/* 0BB440 800BA840 8FAE0024 */  lw    $t6, 0x24($sp)
/* 0BB444 800BA844 3C01F510 */  lui   $at, 0xf510
/* 0BB448 800BA848 ADC00004 */  sw    $zero, 4($t6)
/* 0BB44C 800BA84C 8C620000 */  lw    $v0, ($v1)
/* 0BB450 800BA850 8FB80000 */  lw    $t8, ($sp)
/* 0BB454 800BA854 244F0008 */  addiu $t7, $v0, 8
/* 0BB458 800BA858 27190007 */  addiu $t9, $t8, 7
/* 0BB45C 800BA85C 001970C2 */  srl   $t6, $t9, 3
/* 0BB460 800BA860 AC6F0000 */  sw    $t7, ($v1)
/* 0BB464 800BA864 31CF01FF */  andi  $t7, $t6, 0x1ff
/* 0BB468 800BA868 000FC240 */  sll   $t8, $t7, 9
/* 0BB46C 800BA86C 0301C825 */  or    $t9, $t8, $at
/* 0BB470 800BA870 03297025 */  or    $t6, $t9, $t1
/* 0BB474 800BA874 AFA20020 */  sw    $v0, 0x20($sp)
/* 0BB478 800BA878 AC4E0000 */  sw    $t6, ($v0)
/* 0BB47C 800BA87C 8FA40064 */  lw    $a0, 0x64($sp)
/* 0BB480 800BA880 00000000 */  nop   
/* 0BB484 800BA884 30980007 */  andi  $t8, $a0, 7
/* 0BB488 800BA888 0018CE00 */  sll   $t9, $t8, 0x18
/* 0BB48C 800BA88C 8FB80020 */  lw    $t8, 0x20($sp)
/* 0BB490 800BA890 032A7025 */  or    $t6, $t9, $t2
/* 0BB494 800BA894 01CB7825 */  or    $t7, $t6, $t3
/* 0BB498 800BA898 AF0F0004 */  sw    $t7, 4($t8)
/* 0BB49C 800BA89C 8C620000 */  lw    $v0, ($v1)
/* 0BB4A0 800BA8A0 03202025 */  move  $a0, $t9
/* 0BB4A4 800BA8A4 24590008 */  addiu $t9, $v0, 8
/* 0BB4A8 800BA8A8 AC790000 */  sw    $t9, ($v1)
/* 0BB4AC 800BA8AC 0005C080 */  sll   $t8, $a1, 2
/* 0BB4B0 800BA8B0 3C0EF200 */  lui   $t6, 0xf200
/* 0BB4B4 800BA8B4 AFA2001C */  sw    $v0, 0x1c($sp)
/* 0BB4B8 800BA8B8 33190FFF */  andi  $t9, $t8, 0xfff
/* 0BB4BC 800BA8BC AC4E0000 */  sw    $t6, ($v0)
/* 0BB4C0 800BA8C0 00197300 */  sll   $t6, $t9, 0xc
/* 0BB4C4 800BA8C4 008E7825 */  or    $t7, $a0, $t6
/* 0BB4C8 800BA8C8 01F9C025 */  or    $t8, $t7, $t9
/* 0BB4CC 800BA8CC 03202825 */  move  $a1, $t9
/* 0BB4D0 800BA8D0 8FB9001C */  lw    $t9, 0x1c($sp)
/* 0BB4D4 800BA8D4 00000000 */  nop   
/* 0BB4D8 800BA8D8 AF380004 */  sw    $t8, 4($t9)
.L800BA8DC:
/* 0BB4DC 800BA8DC 03E00008 */  jr    $ra
/* 0BB4E0 800BA8E0 27BD0060 */   addiu $sp, $sp, 0x60

