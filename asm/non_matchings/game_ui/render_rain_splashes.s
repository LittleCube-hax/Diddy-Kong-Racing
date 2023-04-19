glabel render_rain_splashes
/* 0AE258 800AD658 27BDFF80 */  addiu $sp, $sp, -0x80
/* 0AE25C 800AD65C 3C0E800E */  lui   $t6, %hi(gRainSplashGfx) # $t6, 0x800e
/* 0AE260 800AD660 8DCE2C8C */  lw    $t6, %lo(gRainSplashGfx)($t6)
/* 0AE264 800AD664 AFB20028 */  sw    $s2, 0x28($sp)
/* 0AE268 800AD668 AFBF002C */  sw    $ra, 0x2c($sp)
/* 0AE26C 800AD66C AFB10024 */  sw    $s1, 0x24($sp)
/* 0AE270 800AD670 AFB00020 */  sw    $s0, 0x20($sp)
/* 0AE274 800AD674 AFA40080 */  sw    $a0, 0x80($sp)
/* 0AE278 800AD678 11C00109 */  beqz  $t6, .L800ADAA0
/* 0AE27C 800AD67C 24120001 */   li    $s2, 1
/* 0AE280 800AD680 3C0F800E */  lui   $t7, %hi(D_800E2C6C) # $t7, 0x800e
/* 0AE284 800AD684 8DEF2C6C */  lw    $t7, %lo(D_800E2C6C)($t7)
/* 0AE288 800AD688 3C19800E */  lui   $t9, %hi(gLightningFrequency) # $t9, 0x800e
/* 0AE28C 800AD68C 8F392C60 */  lw    $t9, %lo(gLightningFrequency)($t9)
/* 0AE290 800AD690 000FC083 */  sra   $t8, $t7, 2
/* 0AE294 800AD694 03190019 */  multu $t8, $t9
/* 0AE298 800AD698 00002025 */  move  $a0, $zero
/* 0AE29C 800AD69C 00001012 */  mflo  $v0
/* 0AE2A0 800AD6A0 00024383 */  sra   $t0, $v0, 0xe
/* 0AE2A4 800AD6A4 29014001 */  slti  $at, $t0, 0x4001
/* 0AE2A8 800AD6A8 142000C0 */  bnez  $at, .L800AD9AC
/* 0AE2AC 800AD6AC 00000000 */   nop   
/* 0AE2B0 800AD6B0 0C006EC6 */  jal   get_racer_object_by_port
/* 0AE2B4 800AD6B4 AFA8007C */   sw    $t0, 0x7c($sp)
/* 0AE2B8 800AD6B8 3C06800E */  lui   $a2, %hi(D_800E2C84) # $a2, 0x800e
/* 0AE2BC 800AD6BC 24C62C84 */  addiu $a2, %lo(D_800E2C84) # addiu $a2, $a2, 0x2c84
/* 0AE2C0 800AD6C0 8CC90000 */  lw    $t1, ($a2)
/* 0AE2C4 800AD6C4 8FAA0080 */  lw    $t2, 0x80($sp)
/* 0AE2C8 800AD6C8 AFA20050 */  sw    $v0, 0x50($sp)
/* 0AE2CC 800AD6CC 012A5823 */  subu  $t3, $t1, $t2
/* 0AE2D0 800AD6D0 1D6000B6 */  bgtz  $t3, .L800AD9AC
/* 0AE2D4 800AD6D4 ACCB0000 */   sw    $t3, ($a2)
/* 0AE2D8 800AD6D8 104000B4 */  beqz  $v0, .L800AD9AC
/* 0AE2DC 800AD6DC 00001825 */   move  $v1, $zero
/* 0AE2E0 800AD6E0 000068C0 */  sll   $t5, $zero, 3
/* 0AE2E4 800AD6E4 01A06823 */  subu  $t5, $t5, $zero
/* 0AE2E8 800AD6E8 3C0E800E */  lui   $t6, %hi(D_800E2B4C) # $t6, 0x800e
/* 0AE2EC 800AD6EC 25CE2B4C */  addiu $t6, %lo(D_800E2B4C) # addiu $t6, $t6, 0x2b4c
/* 0AE2F0 800AD6F0 000D6880 */  sll   $t5, $t5, 2
/* 0AE2F4 800AD6F4 2411FFFF */  li    $s1, -1
/* 0AE2F8 800AD6F8 01AE8021 */  addu  $s0, $t5, $t6
.L800AD6FC:
/* 0AE2FC 800AD6FC 860F0006 */  lh    $t7, 6($s0)
/* 0AE300 800AD700 00000000 */  nop   
/* 0AE304 800AD704 15E00002 */  bnez  $t7, .L800AD710
/* 0AE308 800AD708 00000000 */   nop   
/* 0AE30C 800AD70C 00608825 */  move  $s1, $v1
.L800AD710:
/* 0AE310 800AD710 24630001 */  addiu $v1, $v1, 1
/* 0AE314 800AD714 28610008 */  slti  $at, $v1, 8
/* 0AE318 800AD718 10200003 */  beqz  $at, .L800AD728
/* 0AE31C 800AD71C 2610001C */   addiu $s0, $s0, 0x1c
/* 0AE320 800AD720 0620FFF6 */  bltz  $s1, .L800AD6FC
/* 0AE324 800AD724 00000000 */   nop   
.L800AD728:
/* 0AE328 800AD728 062000A0 */  bltz  $s1, .L800AD9AC
/* 0AE32C 800AD72C 2404E000 */   li    $a0, -8192
/* 0AE330 800AD730 0C01BE53 */  jal   get_random_number_from_range
/* 0AE334 800AD734 24052000 */   li    $a1, 8192
/* 0AE338 800AD738 8FB80050 */  lw    $t8, 0x50($sp)
/* 0AE33C 800AD73C 34018000 */  li    $at, 32768
/* 0AE340 800AD740 87190000 */  lh    $t9, ($t8)
/* 0AE344 800AD744 24040032 */  li    $a0, 50
/* 0AE348 800AD748 00594021 */  addu  $t0, $v0, $t9
/* 0AE34C 800AD74C 01014821 */  addu  $t1, $t0, $at
/* 0AE350 800AD750 AFA9006C */  sw    $t1, 0x6c($sp)
/* 0AE354 800AD754 0C01BE53 */  jal   get_random_number_from_range
/* 0AE358 800AD758 240501F4 */   li    $a1, 500
/* 0AE35C 800AD75C 44822000 */  mtc1  $v0, $f4
/* 0AE360 800AD760 87B0006E */  lh    $s0, 0x6e($sp)
/* 0AE364 800AD764 468021A0 */  cvt.s.w $f6, $f4
/* 0AE368 800AD768 00102400 */  sll   $a0, $s0, 0x10
/* 0AE36C 800AD76C 00045403 */  sra   $t2, $a0, 0x10
/* 0AE370 800AD770 E7A6005C */  swc1  $f6, 0x5c($sp)
/* 0AE374 800AD774 0C01C1F1 */  jal   sins_f
/* 0AE378 800AD778 01402025 */   move  $a0, $t2
/* 0AE37C 800AD77C C7A8005C */  lwc1  $f8, 0x5c($sp)
/* 0AE380 800AD780 8FAB0050 */  lw    $t3, 0x50($sp)
/* 0AE384 800AD784 46080282 */  mul.s $f10, $f0, $f8
/* 0AE388 800AD788 C570000C */  lwc1  $f16, 0xc($t3)
/* 0AE38C 800AD78C 00102400 */  sll   $a0, $s0, 0x10
/* 0AE390 800AD790 00046403 */  sra   $t4, $a0, 0x10
/* 0AE394 800AD794 46105480 */  add.s $f18, $f10, $f16
/* 0AE398 800AD798 01802025 */  move  $a0, $t4
/* 0AE39C 800AD79C 0C01C1FE */  jal   coss_f
/* 0AE3A0 800AD7A0 E7B20058 */   swc1  $f18, 0x58($sp)
/* 0AE3A4 800AD7A4 C7A4005C */  lwc1  $f4, 0x5c($sp)
/* 0AE3A8 800AD7A8 8FA20050 */  lw    $v0, 0x50($sp)
/* 0AE3AC 800AD7AC 46040182 */  mul.s $f6, $f0, $f4
/* 0AE3B0 800AD7B0 C4480014 */  lwc1  $f8, 0x14($v0)
/* 0AE3B4 800AD7B4 C7AC0058 */  lwc1  $f12, 0x58($sp)
/* 0AE3B8 800AD7B8 C44E0010 */  lwc1  $f14, 0x10($v0)
/* 0AE3BC 800AD7BC 46083080 */  add.s $f2, $f6, $f8
/* 0AE3C0 800AD7C0 44061000 */  mfc1  $a2, $f2
/* 0AE3C4 800AD7C4 0C00A7C6 */  jal   get_level_segment_index_from_position
/* 0AE3C8 800AD7C8 E7A20054 */   swc1  $f2, 0x54($sp)
/* 0AE3CC 800AD7CC 8FA50058 */  lw    $a1, 0x58($sp)
/* 0AE3D0 800AD7D0 8FA60054 */  lw    $a2, 0x54($sp)
/* 0AE3D4 800AD7D4 00402025 */  move  $a0, $v0
/* 0AE3D8 800AD7D8 0C00AC3D */  jal   func_8002B0F4
/* 0AE3DC 800AD7DC 27A7004C */   addiu $a3, $sp, 0x4c
/* 0AE3E0 800AD7E0 10400072 */  beqz  $v0, .L800AD9AC
/* 0AE3E4 800AD7E4 3C01447A */   li    $at, 0x447A0000 # 1000.000000
/* 0AE3E8 800AD7E8 44811000 */  mtc1  $at, $f2
/* 0AE3EC 800AD7EC 28410002 */  slti  $at, $v0, 2
/* 0AE3F0 800AD7F0 1420002D */  bnez  $at, .L800AD8A8
/* 0AE3F4 800AD7F4 00001825 */   move  $v1, $zero
/* 0AE3F8 800AD7F8 2444FFFF */  addiu $a0, $v0, -1
/* 0AE3FC 800AD7FC 1880001A */  blez  $a0, .L800AD868
/* 0AE400 800AD800 00000000 */   nop   
/* 0AE404 800AD804 8FAE004C */  lw    $t6, 0x4c($sp)
/* 0AE408 800AD808 8FAD0050 */  lw    $t5, 0x50($sp)
/* 0AE40C 800AD80C 8DCF0000 */  lw    $t7, ($t6)
/* 0AE410 800AD810 C5A00010 */  lwc1  $f0, 0x10($t5)
/* 0AE414 800AD814 C5EA0000 */  lwc1  $f10, ($t7)
/* 0AE418 800AD818 00000000 */  nop   
/* 0AE41C 800AD81C 460A003C */  c.lt.s $f0, $f10
/* 0AE420 800AD820 00000000 */  nop   
/* 0AE424 800AD824 45000010 */  bc1f  .L800AD868
/* 0AE428 800AD828 00000000 */   nop   
.L800AD82C:
/* 0AE42C 800AD82C 24630001 */  addiu $v1, $v1, 1
/* 0AE430 800AD830 0064082A */  slt   $at, $v1, $a0
/* 0AE434 800AD834 1020000C */  beqz  $at, .L800AD868
/* 0AE438 800AD838 00000000 */   nop   
/* 0AE43C 800AD83C 8FB8004C */  lw    $t8, 0x4c($sp)
/* 0AE440 800AD840 0003C880 */  sll   $t9, $v1, 2
/* 0AE444 800AD844 03194021 */  addu  $t0, $t8, $t9
/* 0AE448 800AD848 8D090000 */  lw    $t1, ($t0)
/* 0AE44C 800AD84C 00000000 */  nop   
/* 0AE450 800AD850 C5300000 */  lwc1  $f16, ($t1)
/* 0AE454 800AD854 00000000 */  nop   
/* 0AE458 800AD858 4610003C */  c.lt.s $f0, $f16
/* 0AE45C 800AD85C 00000000 */  nop   
/* 0AE460 800AD860 4501FFF2 */  bc1t  .L800AD82C
/* 0AE464 800AD864 00000000 */   nop   
.L800AD868:
/* 0AE468 800AD868 1860000F */  blez  $v1, .L800AD8A8
/* 0AE46C 800AD86C 00035880 */   sll   $t3, $v1, 2
/* 0AE470 800AD870 8FAA004C */  lw    $t2, 0x4c($sp)
/* 0AE474 800AD874 8FAE0050 */  lw    $t6, 0x50($sp)
/* 0AE478 800AD878 014B6021 */  addu  $t4, $t2, $t3
/* 0AE47C 800AD87C 8D8D0000 */  lw    $t5, ($t4)
/* 0AE480 800AD880 C5C40010 */  lwc1  $f4, 0x10($t6)
/* 0AE484 800AD884 C5B20000 */  lwc1  $f18, ($t5)
/* 0AE488 800AD888 44803000 */  mtc1  $zero, $f6
/* 0AE48C 800AD88C 46122081 */  sub.s $f2, $f4, $f18
/* 0AE490 800AD890 2463FFFF */  addiu $v1, $v1, -1
/* 0AE494 800AD894 4606103C */  c.lt.s $f2, $f6
/* 0AE498 800AD898 00000000 */  nop   
/* 0AE49C 800AD89C 45000002 */  bc1f  .L800AD8A8
/* 0AE4A0 800AD8A0 00000000 */   nop   
/* 0AE4A4 800AD8A4 46001087 */  neg.s $f2, $f2
.L800AD8A8:
/* 0AE4A8 800AD8A8 8FAF004C */  lw    $t7, 0x4c($sp)
/* 0AE4AC 800AD8AC 0003C080 */  sll   $t8, $v1, 2
/* 0AE4B0 800AD8B0 01F81021 */  addu  $v0, $t7, $t8
/* 0AE4B4 800AD8B4 8C480000 */  lw    $t0, ($v0)
/* 0AE4B8 800AD8B8 8FB90050 */  lw    $t9, 0x50($sp)
/* 0AE4BC 800AD8BC C50A0000 */  lwc1  $f10, ($t0)
/* 0AE4C0 800AD8C0 C7280010 */  lwc1  $f8, 0x10($t9)
/* 0AE4C4 800AD8C4 44808000 */  mtc1  $zero, $f16
/* 0AE4C8 800AD8C8 460A4001 */  sub.s $f0, $f8, $f10
/* 0AE4CC 800AD8CC 3C0A800E */  lui   $t2, %hi(D_800E2B4C) # $t2, 0x800e
/* 0AE4D0 800AD8D0 4610003C */  c.lt.s $f0, $f16
/* 0AE4D4 800AD8D4 3C014348 */  li    $at, 0x43480000 # 200.000000
/* 0AE4D8 800AD8D8 45000002 */  bc1f  .L800AD8E4
/* 0AE4DC 800AD8DC 254A2B4C */   addiu $t2, %lo(D_800E2B4C) # addiu $t2, $t2, 0x2b4c
/* 0AE4E0 800AD8E0 46000007 */  neg.s $f0, $f0
.L800AD8E4:
/* 0AE4E4 800AD8E4 4602003C */  c.lt.s $f0, $f2
/* 0AE4E8 800AD8E8 C7A60058 */  lwc1  $f6, 0x58($sp)
/* 0AE4EC 800AD8EC 4500000A */  bc1f  .L800AD918
/* 0AE4F0 800AD8F0 240C0001 */   li    $t4, 1
/* 0AE4F4 800AD8F4 3C014348 */  li    $at, 0x43480000 # 200.000000
/* 0AE4F8 800AD8F8 44812000 */  mtc1  $at, $f4
/* 0AE4FC 800AD8FC 00000000 */  nop   
/* 0AE500 800AD900 4600203C */  c.lt.s $f4, $f0
/* 0AE504 800AD904 00000000 */  nop   
/* 0AE508 800AD908 4500000A */  bc1f  .L800AD934
/* 0AE50C 800AD90C 00000000 */   nop   
/* 0AE510 800AD910 10000008 */  b     .L800AD934
/* 0AE514 800AD914 2411FFFF */   li    $s1, -1
.L800AD918:
/* 0AE518 800AD918 44819000 */  mtc1  $at, $f18
/* 0AE51C 800AD91C 24420004 */  addiu $v0, $v0, 4
/* 0AE520 800AD920 4602903C */  c.lt.s $f18, $f2
/* 0AE524 800AD924 00000000 */  nop   
/* 0AE528 800AD928 45000002 */  bc1f  .L800AD934
/* 0AE52C 800AD92C 00000000 */   nop   
/* 0AE530 800AD930 2411FFFF */  li    $s1, -1
.L800AD934:
/* 0AE534 800AD934 0620001D */  bltz  $s1, .L800AD9AC
/* 0AE538 800AD938 001148C0 */   sll   $t1, $s1, 3
/* 0AE53C 800AD93C 01314823 */  subu  $t1, $t1, $s1
/* 0AE540 800AD940 00094880 */  sll   $t1, $t1, 2
/* 0AE544 800AD944 012A8021 */  addu  $s0, $t1, $t2
/* 0AE548 800AD948 E606000C */  swc1  $f6, 0xc($s0)
/* 0AE54C 800AD94C 8C4B0000 */  lw    $t3, ($v0)
/* 0AE550 800AD950 8FA3007C */  lw    $v1, 0x7c($sp)
/* 0AE554 800AD954 C5680000 */  lwc1  $f8, ($t3)
/* 0AE558 800AD958 C7AA0054 */  lwc1  $f10, 0x54($sp)
/* 0AE55C 800AD95C 00036A83 */  sra   $t5, $v1, 0xa
/* 0AE560 800AD960 A6000018 */  sh    $zero, 0x18($s0)
/* 0AE564 800AD964 A60C0006 */  sh    $t4, 6($s0)
/* 0AE568 800AD968 01A01825 */  move  $v1, $t5
/* 0AE56C 800AD96C 25A500BF */  addiu $a1, $t5, 0xbf
/* 0AE570 800AD970 AFAD0030 */  sw    $t5, 0x30($sp)
/* 0AE574 800AD974 24040080 */  li    $a0, 128
/* 0AE578 800AD978 E6080010 */  swc1  $f8, 0x10($s0)
/* 0AE57C 800AD97C 0C01BE53 */  jal   get_random_number_from_range
/* 0AE580 800AD980 E60A0014 */   swc1  $f10, 0x14($s0)
/* 0AE584 800AD984 3C04800E */  lui   $a0, %hi(D_800E2C84) # $a0, 0x800e
/* 0AE588 800AD988 24842C84 */  addiu $a0, %lo(D_800E2C84) # addiu $a0, $a0, 0x2c84
/* 0AE58C 800AD98C 8FA30030 */  lw    $v1, 0x30($sp)
/* 0AE590 800AD990 8C8E0000 */  lw    $t6, ($a0)
/* 0AE594 800AD994 A602001A */  sh    $v0, 0x1a($s0)
/* 0AE598 800AD998 01C37823 */  subu  $t7, $t6, $v1
/* 0AE59C 800AD99C 25F80040 */  addiu $t8, $t7, 0x40
/* 0AE5A0 800AD9A0 07010002 */  bgez  $t8, .L800AD9AC
/* 0AE5A4 800AD9A4 AC980000 */   sw    $t8, ($a0)
/* 0AE5A8 800AD9A8 AC800000 */  sw    $zero, ($a0)
.L800AD9AC:
/* 0AE5AC 800AD9AC 3C10800E */  lui   $s0, %hi(D_800E2B4C) # $s0, 0x800e
/* 0AE5B0 800AD9B0 3C118012 */  lui   $s1, %hi(gCurrWeatherDisplayList) # $s1, 0x8012
/* 0AE5B4 800AD9B4 26317C0C */  addiu $s1, %lo(gCurrWeatherDisplayList) # addiu $s1, $s1, 0x7c0c
/* 0AE5B8 800AD9B8 26102B4C */  addiu $s0, %lo(D_800E2B4C) # addiu $s0, $s0, 0x2b4c
.L800AD9BC:
/* 0AE5BC 800AD9BC 86080006 */  lh    $t0, 6($s0)
/* 0AE5C0 800AD9C0 8FAA0080 */  lw    $t2, 0x80($sp)
/* 0AE5C4 800AD9C4 1100002A */  beqz  $t0, .L800ADA70
/* 0AE5C8 800AD9C8 00000000 */   nop   
/* 0AE5CC 800AD9CC 86090018 */  lh    $t1, 0x18($s0)
/* 0AE5D0 800AD9D0 000A5900 */  sll   $t3, $t2, 4
/* 0AE5D4 800AD9D4 012B6021 */  addu  $t4, $t1, $t3
/* 0AE5D8 800AD9D8 A60C0018 */  sh    $t4, 0x18($s0)
/* 0AE5DC 800AD9DC 860D0018 */  lh    $t5, 0x18($s0)
/* 0AE5E0 800AD9E0 3C08FA00 */  lui   $t0, 0xfa00
/* 0AE5E4 800AD9E4 29A10100 */  slti  $at, $t5, 0x100
/* 0AE5E8 800AD9E8 14200003 */  bnez  $at, .L800AD9F8
/* 0AE5EC 800AD9EC 02202025 */   move  $a0, $s1
/* 0AE5F0 800AD9F0 1000001F */  b     .L800ADA70
/* 0AE5F4 800AD9F4 A6000006 */   sh    $zero, 6($s0)
.L800AD9F8:
/* 0AE5F8 800AD9F8 12400009 */  beqz  $s2, .L800ADA20
/* 0AE5FC 800AD9FC 3C01C0C0 */   lui   $at, (0xC0C0FF00 >> 16) # lui $at, 0xc0c0
/* 0AE600 800ADA00 8E220000 */  lw    $v0, ($s1)
/* 0AE604 800ADA04 3C0FFB00 */  lui   $t7, 0xfb00
/* 0AE608 800ADA08 244E0008 */  addiu $t6, $v0, 8
/* 0AE60C 800ADA0C AE2E0000 */  sw    $t6, ($s1)
/* 0AE610 800ADA10 2418FF00 */  li    $t8, -256
/* 0AE614 800ADA14 00009025 */  move  $s2, $zero
/* 0AE618 800ADA18 AC580004 */  sw    $t8, 4($v0)
/* 0AE61C 800ADA1C AC4F0000 */  sw    $t7, ($v0)
.L800ADA20:
/* 0AE620 800ADA20 8E220000 */  lw    $v0, ($s1)
/* 0AE624 800ADA24 3421FF00 */  ori   $at, (0xC0C0FF00 & 0xFFFF) # ori $at, $at, 0xff00
/* 0AE628 800ADA28 24590008 */  addiu $t9, $v0, 8
/* 0AE62C 800ADA2C AE390000 */  sw    $t9, ($s1)
/* 0AE630 800ADA30 AC480000 */  sw    $t0, ($v0)
/* 0AE634 800ADA34 860A001A */  lh    $t2, 0x1a($s0)
/* 0AE638 800ADA38 3C0C800E */  lui   $t4, %hi(gRainSplashGfx) # $t4, 0x800e
/* 0AE63C 800ADA3C 314900FF */  andi  $t1, $t2, 0xff
/* 0AE640 800ADA40 01215825 */  or    $t3, $t1, $at
/* 0AE644 800ADA44 AC4B0004 */  sw    $t3, 4($v0)
/* 0AE648 800ADA48 8D8C2C8C */  lw    $t4, %lo(gRainSplashGfx)($t4)
/* 0AE64C 800ADA4C 3C058012 */  lui   $a1, %hi(gCurrWeatherMatrix) # $a1, 0x8012
/* 0AE650 800ADA50 3C068012 */  lui   $a2, %hi(gCurrWeatherVertexList) # $a2, 0x8012
/* 0AE654 800ADA54 240D010E */  li    $t5, 270
/* 0AE658 800ADA58 AFAD0014 */  sw    $t5, 0x14($sp)
/* 0AE65C 800ADA5C 24C67C14 */  addiu $a2, %lo(gCurrWeatherVertexList) # addiu $a2, $a2, 0x7c14
/* 0AE660 800ADA60 24A57C10 */  addiu $a1, %lo(gCurrWeatherMatrix) # addiu $a1, $a1, 0x7c10
/* 0AE664 800ADA64 02003825 */  move  $a3, $s0
/* 0AE668 800ADA68 0C01A145 */  jal   render_sprite_billboard
/* 0AE66C 800ADA6C AFAC0010 */   sw    $t4, 0x10($sp)
.L800ADA70:
/* 0AE670 800ADA70 3C0E800E */  lui   $t6, %hi(gRainGfx) # $t6, 0x800e
/* 0AE674 800ADA74 25CE2C2C */  addiu $t6, %lo(gRainGfx) # addiu $t6, $t6, 0x2c2c
/* 0AE678 800ADA78 2610001C */  addiu $s0, $s0, 0x1c
/* 0AE67C 800ADA7C 160EFFCF */  bne   $s0, $t6, .L800AD9BC
/* 0AE680 800ADA80 00000000 */   nop   
/* 0AE684 800ADA84 8E220000 */  lw    $v0, ($s1)
/* 0AE688 800ADA88 3C18FA00 */  lui   $t8, 0xfa00
/* 0AE68C 800ADA8C 244F0008 */  addiu $t7, $v0, 8
/* 0AE690 800ADA90 AE2F0000 */  sw    $t7, ($s1)
/* 0AE694 800ADA94 2419FFFF */  li    $t9, -1
/* 0AE698 800ADA98 AC590004 */  sw    $t9, 4($v0)
/* 0AE69C 800ADA9C AC580000 */  sw    $t8, ($v0)
.L800ADAA0:
/* 0AE6A0 800ADAA0 8FBF002C */  lw    $ra, 0x2c($sp)
/* 0AE6A4 800ADAA4 8FB00020 */  lw    $s0, 0x20($sp)
/* 0AE6A8 800ADAA8 8FB10024 */  lw    $s1, 0x24($sp)
/* 0AE6AC 800ADAAC 8FB20028 */  lw    $s2, 0x28($sp)
/* 0AE6B0 800ADAB0 03E00008 */  jr    $ra
/* 0AE6B4 800ADAB4 27BD0080 */   addiu $sp, $sp, 0x80

