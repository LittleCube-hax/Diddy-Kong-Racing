glabel func_8006C60C
/* 06D20C 8006C60C 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 06D210 8006C610 AFBF0014 */  sw    $ra, 0x14($sp)
/* 06D214 8006C614 24040000 */  li    $a0, 0
/* 06D218 8006C618 0C033498 */  jal   osSetTime
/* 06D21C 8006C61C 24050000 */   li    $a1, 0
/* 06D220 8006C620 3C0E800E */  lui   $t6, %hi(D_800DD380) # $t6, 0x800e
/* 06D224 8006C624 8DCED380 */  lw    $t6, %lo(D_800DD380)($t6)
/* 06D228 8006C628 24010008 */  li    $at, 8
/* 06D22C 8006C62C 15C1001F */  bne   $t6, $at, .L8006C6AC
/* 06D230 8006C630 3C0F8012 */   lui   $t7, %hi(D_801234E8) # $t7, 0x8012
/* 06D234 8006C634 8DEF34E8 */  lw    $t7, %lo(D_801234E8)($t7)
/* 06D238 8006C638 3C198012 */  lui   $t9, %hi(D_801211F0) # $t9, 0x8012
/* 06D23C 8006C63C 000FC080 */  sll   $t8, $t7, 2
/* 06D240 8006C640 0338C821 */  addu  $t9, $t9, $t8
/* 06D244 8006C644 8F3911F0 */  lw    $t9, %lo(D_801211F0)($t9)
/* 06D248 8006C648 3C048012 */  lui   $a0, %hi(D_801211F8) # $a0, 0x8012
/* 06D24C 8006C64C 248411F8 */  addiu $a0, %lo(D_801211F8) # addiu $a0, $a0, 0x11f8
/* 06D250 8006C650 00002825 */  move  $a1, $zero
/* 06D254 8006C654 00003025 */  move  $a2, $zero
/* 06D258 8006C658 0C01E8B4 */  jal   func_8007A2D0
/* 06D25C 8006C65C AC990000 */   sw    $t9, ($a0)
/* 06D260 8006C660 3C068012 */  lui   $a2, %hi(D_801262D4) # $a2, 0x8012
/* 06D264 8006C664 8CC662D4 */  lw    $a2, %lo(D_801262D4)($a2)
/* 06D268 8006C668 3C048012 */  lui   $a0, %hi(D_801211F8) # $a0, 0x8012
/* 06D26C 8006C66C 248411F8 */  addiu $a0, %lo(D_801211F8) # addiu $a0, $a0, 0x11f8
/* 06D270 8006C670 0C01E8B4 */  jal   func_8007A2D0
/* 06D274 8006C674 24050001 */   li    $a1, 1
/* 06D278 8006C678 3C068012 */  lui   $a2, %hi(D_801262E0) # $a2, 0x8012
/* 06D27C 8006C67C 8CC662E0 */  lw    $a2, %lo(D_801262E0)($a2)
/* 06D280 8006C680 3C048012 */  lui   $a0, %hi(D_801211F8) # $a0, 0x8012
/* 06D284 8006C684 248411F8 */  addiu $a0, %lo(D_801211F8) # addiu $a0, $a0, 0x11f8
/* 06D288 8006C688 0C01E8B4 */  jal   func_8007A2D0
/* 06D28C 8006C68C 24050002 */   li    $a1, 2
/* 06D290 8006C690 3C068012 */  lui   $a2, %hi(D_801262D4) # $a2, 0x8012
/* 06D294 8006C694 8CC662D4 */  lw    $a2, %lo(D_801262D4)($a2)
/* 06D298 8006C698 3C048012 */  lui   $a0, %hi(D_801211F8) # $a0, 0x8012
/* 06D29C 8006C69C 248411F8 */  addiu $a0, %lo(D_801211F8) # addiu $a0, $a0, 0x11f8
/* 06D2A0 8006C6A0 24050004 */  li    $a1, 4
/* 06D2A4 8006C6A4 0C01E8B4 */  jal   func_8007A2D0
/* 06D2A8 8006C6A8 24C6FB00 */   addiu $a2, $a2, -0x500
.L8006C6AC:
/* 06D2AC 8006C6AC 3C03800E */  lui   $v1, %hi(D_800DD3F0) # $v1, 0x800e
/* 06D2B0 8006C6B0 8063D3F0 */  lb    $v1, %lo(D_800DD3F0)($v1)
/* 06D2B4 8006C6B4 00000000 */  nop   
/* 06D2B8 8006C6B8 14600014 */  bnez  $v1, .L8006C70C
/* 06D2BC 8006C6BC 3C088012 */   lui   $t0, %hi(D_801234E8) # $t0, 0x8012
/* 06D2C0 8006C6C0 8D0834E8 */  lw    $t0, %lo(D_801234E8)($t0)
/* 06D2C4 8006C6C4 3C048012 */  lui   $a0, %hi(D_801211F0) # $a0, 0x8012
/* 06D2C8 8006C6C8 00084880 */  sll   $t1, $t0, 2
/* 06D2CC 8006C6CC 00892021 */  addu  $a0, $a0, $t1
/* 06D2D0 8006C6D0 3C058012 */  lui   $a1, %hi(D_801211F8) # $a1, 0x8012
/* 06D2D4 8006C6D4 8CA511F8 */  lw    $a1, %lo(D_801211F8)($a1)
/* 06D2D8 8006C6D8 8C8411F0 */  lw    $a0, %lo(D_801211F0)($a0)
/* 06D2DC 8006C6DC 0C01DD14 */  jal   setupOSTasks
/* 06D2E0 8006C6E0 00003025 */   move  $a2, $zero
/* 06D2E4 8006C6E4 3C078012 */  lui   $a3, %hi(D_801234E8) # $a3, 0x8012
/* 06D2E8 8006C6E8 24E734E8 */  addiu $a3, %lo(D_801234E8) # addiu $a3, $a3, 0x34e8
/* 06D2EC 8006C6EC 8CEA0000 */  lw    $t2, ($a3)
/* 06D2F0 8006C6F0 3C03800E */  lui   $v1, %hi(D_800DD3F0) # $v1, 0x800e
/* 06D2F4 8006C6F4 254B0001 */  addiu $t3, $t2, 1
/* 06D2F8 8006C6F8 ACEB0000 */  sw    $t3, ($a3)
/* 06D2FC 8006C6FC 316D0001 */  andi  $t5, $t3, 1
/* 06D300 8006C700 ACED0000 */  sw    $t5, ($a3)
/* 06D304 8006C704 8063D3F0 */  lb    $v1, %lo(D_800DD3F0)($v1)
/* 06D308 8006C708 00000000 */  nop   
.L8006C70C:
/* 06D30C 8006C70C 3C078012 */  lui   $a3, %hi(D_801234E8) # $a3, 0x8012
/* 06D310 8006C710 10600004 */  beqz  $v1, .L8006C724
/* 06D314 8006C714 24E734E8 */   addiu $a3, %lo(D_801234E8) # addiu $a3, $a3, 0x34e8
/* 06D318 8006C718 246EFFFF */  addiu $t6, $v1, -1
/* 06D31C 8006C71C 3C01800E */  lui   $at, %hi(D_800DD3F0) # $at, 0x800e
/* 06D320 8006C720 A02ED3F0 */  sb    $t6, %lo(D_800DD3F0)($at)
.L8006C724:
/* 06D324 8006C724 8CE20000 */  lw    $v0, ($a3)
/* 06D328 8006C728 3C188012 */  lui   $t8, %hi(D_801211F0) # $t8, 0x8012
/* 06D32C 8006C72C 00027880 */  sll   $t7, $v0, 2
/* 06D330 8006C730 030FC021 */  addu  $t8, $t8, $t7
/* 06D334 8006C734 8F1811F0 */  lw    $t8, %lo(D_801211F0)($t8)
/* 06D338 8006C738 3C048012 */  lui   $a0, %hi(D_801211F8) # $a0, 0x8012
/* 06D33C 8006C73C 248411F8 */  addiu $a0, %lo(D_801211F8) # addiu $a0, $a0, 0x11f8
/* 06D340 8006C740 3C198012 */  lui   $t9, %hi(D_80121200) # $t9, 0x8012
/* 06D344 8006C744 032FC821 */  addu  $t9, $t9, $t7
/* 06D348 8006C748 AC980000 */  sw    $t8, ($a0)
/* 06D34C 8006C74C 8F391200 */  lw    $t9, %lo(D_80121200)($t9)
/* 06D350 8006C750 3C088012 */  lui   $t0, %hi(D_80121210) # $t0, 0x8012
/* 06D354 8006C754 3C018012 */  lui   $at, %hi(D_80121208) # $at, 0x8012
/* 06D358 8006C758 010F4021 */  addu  $t0, $t0, $t7
/* 06D35C 8006C75C 8D081210 */  lw    $t0, %lo(D_80121210)($t0)
/* 06D360 8006C760 3C098012 */  lui   $t1, %hi(D_80121220) # $t1, 0x8012
/* 06D364 8006C764 AC391208 */  sw    $t9, %lo(D_80121208)($at)
/* 06D368 8006C768 3C018012 */  lui   $at, %hi(D_80121218) # $at, 0x8012
/* 06D36C 8006C76C 012F4821 */  addu  $t1, $t1, $t7
/* 06D370 8006C770 8D291220 */  lw    $t1, %lo(D_80121220)($t1)
/* 06D374 8006C774 AC281218 */  sw    $t0, %lo(D_80121218)($at)
/* 06D378 8006C778 3C018012 */  lui   $at, %hi(D_80121228) # $at, 0x8012
/* 06D37C 8006C77C 00002825 */  move  $a1, $zero
/* 06D380 8006C780 00003025 */  move  $a2, $zero
/* 06D384 8006C784 0C01E8B4 */  jal   func_8007A2D0
/* 06D388 8006C788 AC291228 */   sw    $t1, %lo(D_80121228)($at)
/* 06D38C 8006C78C 3C068012 */  lui   $a2, %hi(D_801262D8) # $a2, 0x8012
/* 06D390 8006C790 8CC662D8 */  lw    $a2, %lo(D_801262D8)($a2)
/* 06D394 8006C794 3C048012 */  lui   $a0, %hi(D_801211F8) # $a0, 0x8012
/* 06D398 8006C798 248411F8 */  addiu $a0, %lo(D_801211F8) # addiu $a0, $a0, 0x11f8
/* 06D39C 8006C79C 0C01E8B4 */  jal   func_8007A2D0
/* 06D3A0 8006C7A0 24050001 */   li    $a1, 1
/* 06D3A4 8006C7A4 3C068012 */  lui   $a2, %hi(D_801262E0) # $a2, 0x8012
/* 06D3A8 8006C7A8 8CC662E0 */  lw    $a2, %lo(D_801262E0)($a2)
/* 06D3AC 8006C7AC 3C048012 */  lui   $a0, %hi(D_801211F8) # $a0, 0x8012
/* 06D3B0 8006C7B0 248411F8 */  addiu $a0, %lo(D_801211F8) # addiu $a0, $a0, 0x11f8
/* 06D3B4 8006C7B4 0C01E8B4 */  jal   func_8007A2D0
/* 06D3B8 8006C7B8 24050002 */   li    $a1, 2
/* 06D3BC 8006C7BC 3C068012 */  lui   $a2, %hi(D_801262D8) # $a2, 0x8012
/* 06D3C0 8006C7C0 8CC662D8 */  lw    $a2, %lo(D_801262D8)($a2)
/* 06D3C4 8006C7C4 3C048012 */  lui   $a0, %hi(D_801211F8) # $a0, 0x8012
/* 06D3C8 8006C7C8 248411F8 */  addiu $a0, %lo(D_801211F8) # addiu $a0, $a0, 0x11f8
/* 06D3CC 8006C7CC 24050004 */  li    $a1, 4
/* 06D3D0 8006C7D0 0C01E8B4 */  jal   func_8007A2D0
/* 06D3D4 8006C7D4 24C6FB00 */   addiu $a2, $a2, -0x500
/* 06D3D8 8006C7D8 3C048012 */  lui   $a0, %hi(D_801211F8) # $a0, 0x8012
/* 06D3DC 8006C7DC 0C01E037 */  jal   func_800780DC
/* 06D3E0 8006C7E0 248411F8 */   addiu $a0, %lo(D_801211F8) # addiu $a0, $a0, 0x11f8
/* 06D3E4 8006C7E4 3C048012 */  lui   $a0, %hi(D_801211F8) # $a0, 0x8012
/* 06D3E8 8006C7E8 0C01E015 */  jal   func_80078054
/* 06D3EC 8006C7EC 248411F8 */   addiu $a0, %lo(D_801211F8) # addiu $a0, $a0, 0x11f8
/* 06D3F0 8006C7F0 3C048012 */  lui   $a0, %hi(D_801211F8) # $a0, 0x8012
/* 06D3F4 8006C7F4 3C058012 */  lui   $a1, %hi(D_80121208) # $a1, 0x8012
/* 06D3F8 8006C7F8 24A51208 */  addiu $a1, %lo(D_80121208) # addiu $a1, $a1, 0x1208
/* 06D3FC 8006C7FC 248411F8 */  addiu $a0, %lo(D_801211F8) # addiu $a0, $a0, 0x11f8
/* 06D400 8006C800 0C01DEE7 */  jal   func_80077B9C
/* 06D404 8006C804 24060001 */   li    $a2, 1
/* 06D408 8006C808 3C04800E */  lui   $a0, %hi(D_800DD37C) # $a0, 0x800e
/* 06D40C 8006C80C 3C05800E */  lui   $a1, %hi(D_800DD404) # $a1, 0x800e
/* 06D410 8006C810 8CA5D404 */  lw    $a1, %lo(D_800DD404)($a1)
/* 06D414 8006C814 8C84D37C */  lw    $a0, %lo(D_800DD37C)($a0)
/* 06D418 8006C818 0C01A871 */  jal   func_8006A1C4
/* 06D41C 8006C81C 00000000 */   nop   
/* 06D420 8006C820 3C01800E */  lui   $at, %hi(D_800DD37C) # $at, 0x800e
/* 06D424 8006C824 0C02DDB7 */  jal   func_800B76DC
/* 06D428 8006C828 AC22D37C */   sw    $v0, %lo(D_800DD37C)($at)
/* 06D42C 8006C82C 10400006 */  beqz  $v0, .L8006C848
/* 06D430 8006C830 00000000 */   nop   
/* 06D434 8006C834 0C02DE04 */  jal   func_800B7810
/* 06D438 8006C838 00000000 */   nop   
/* 06D43C 8006C83C 240A0005 */  li    $t2, 5
/* 06D440 8006C840 3C018012 */  lui   $at, %hi(D_801234EC) # $at, 0x8012
/* 06D444 8006C844 AC2A34EC */  sw    $t2, %lo(D_801234EC)($at)
.L8006C848:
/* 06D448 8006C848 3C0B800E */  lui   $t3, %hi(D_800DD3A0) # $t3, 0x800e
/* 06D44C 8006C84C 816BD3A0 */  lb    $t3, %lo(D_800DD3A0)($t3)
/* 06D450 8006C850 00000000 */  nop   
/* 06D454 8006C854 1160000D */  beqz  $t3, .L8006C88C
/* 06D458 8006C858 3C030098 */   lui   $v1, (0x00989680 >> 16) # lui $v1, 0x98
/* 06D45C 8006C85C 00001025 */  move  $v0, $zero
/* 06D460 8006C860 34639680 */  ori   $v1, (0x00989680 & 0xFFFF) # ori $v1, $v1, 0x9680
.L8006C864:
/* 06D464 8006C864 24420004 */  addiu $v0, $v0, 4
/* 06D468 8006C868 1443FFFE */  bne   $v0, $v1, .L8006C864
/* 06D46C 8006C86C 00000000 */   nop   
/* 06D470 8006C870 3C010131 */  lui   $at, (0x01312D01 >> 16) # lui $at, 0x131
/* 06D474 8006C874 34212D01 */  ori   $at, (0x01312D01 & 0xFFFF) # ori $at, $at, 0x2d01
/* 06D478 8006C878 0041082A */  slt   $at, $v0, $at
/* 06D47C 8006C87C 14200003 */  bnez  $at, .L8006C88C
/* 06D480 8006C880 3C04800E */   lui   $a0, %hi(D_800E7134) # $a0, 0x800e
/* 06D484 8006C884 0C02D7B7 */  jal   func_800B5EDC
/* 06D488 8006C888 24847134 */   addiu $a0, %lo(D_800E7134) # addiu $a0, $a0, 0x7134
.L8006C88C:
/* 06D48C 8006C88C 3C028012 */  lui   $v0, %hi(D_801234EC) # $v0, 0x8012
/* 06D490 8006C890 8C4234EC */  lw    $v0, %lo(D_801234EC)($v0)
/* 06D494 8006C894 2401FFFF */  li    $at, -1
/* 06D498 8006C898 1041000B */  beq   $v0, $at, .L8006C8C8
/* 06D49C 8006C89C 00000000 */   nop   
/* 06D4A0 8006C8A0 10400012 */  beqz  $v0, .L8006C8EC
/* 06D4A4 8006C8A4 3C04800E */   lui   $a0, %hi(D_800DD404) # $a0, 0x800e
/* 06D4A8 8006C8A8 24010001 */  li    $at, 1
/* 06D4AC 8006C8AC 1041000A */  beq   $v0, $at, .L8006C8D8
/* 06D4B0 8006C8B0 3C04800E */   lui   $a0, %hi(D_800DD404) # $a0, 0x800e
/* 06D4B4 8006C8B4 24010005 */  li    $at, 5
/* 06D4B8 8006C8B8 10410011 */  beq   $v0, $at, .L8006C900
/* 06D4BC 8006C8BC 3C04800E */   lui   $a0, %hi(D_800DD404) # $a0, 0x800e
/* 06D4C0 8006C8C0 10000012 */  b     .L8006C90C
/* 06D4C4 8006C8C4 00000000 */   nop   
.L8006C8C8:
/* 06D4C8 8006C8C8 0C01BD0F */  jal   func_8006F43C
/* 06D4CC 8006C8CC 00000000 */   nop   
/* 06D4D0 8006C8D0 1000000E */  b     .L8006C90C
/* 06D4D4 8006C8D4 00000000 */   nop   
.L8006C8D8:
/* 06D4D8 8006C8D8 8C84D404 */  lw    $a0, %lo(D_800DD404)($a0)
/* 06D4DC 8006C8DC 0C01B73E */  jal   func_8006DCF8
/* 06D4E0 8006C8E0 00000000 */   nop   
/* 06D4E4 8006C8E4 10000009 */  b     .L8006C90C
/* 06D4E8 8006C8E8 00000000 */   nop   
.L8006C8EC:
/* 06D4EC 8006C8EC 8C84D404 */  lw    $a0, %lo(D_800DD404)($a0)
/* 06D4F0 8006C8F0 0C01B33C */  jal   func_8006CCF0
/* 06D4F4 8006C8F4 00000000 */   nop   
/* 06D4F8 8006C8F8 10000004 */  b     .L8006C90C
/* 06D4FC 8006C8FC 00000000 */   nop   
.L8006C900:
/* 06D500 8006C900 8C84D404 */  lw    $a0, %lo(D_800DD404)($a0)
/* 06D504 8006C904 0C02DDF5 */  jal   func_800B77D4
/* 06D508 8006C908 00000000 */   nop   
.L8006C90C:
/* 06D50C 8006C90C 3C04800E */  lui   $a0, %hi(D_800DD407) # $a0, 0x800e
/* 06D510 8006C910 9084D407 */  lbu   $a0, %lo(D_800DD407)($a0)
/* 06D514 8006C914 0C000340 */  jal   func_80000D00
/* 06D518 8006C918 00000000 */   nop   
/* 06D51C 8006C91C 3C048012 */  lui   $a0, %hi(D_801211F8) # $a0, 0x8012
/* 06D520 8006C920 0C02D7DE */  jal   func_800B5F78
/* 06D524 8006C924 248411F8 */   addiu $a0, %lo(D_801211F8) # addiu $a0, $a0, 0x11f8
/* 06D528 8006C928 3C048012 */  lui   $a0, %hi(D_801211F8) # $a0, 0x8012
/* 06D52C 8006C92C 3C058012 */  lui   $a1, %hi(D_80121208) # $a1, 0x8012
/* 06D530 8006C930 3C068012 */  lui   $a2, %hi(D_80121218) # $a2, 0x8012
/* 06D534 8006C934 24C61218 */  addiu $a2, %lo(D_80121218) # addiu $a2, $a2, 0x1218
/* 06D538 8006C938 24A51208 */  addiu $a1, %lo(D_80121208) # addiu $a1, $a1, 0x1208
/* 06D53C 8006C93C 0C0315BF */  jal   func_800C56FC
/* 06D540 8006C940 248411F8 */   addiu $a0, %lo(D_801211F8) # addiu $a0, $a0, 0x11f8
/* 06D544 8006C944 0C031588 */  jal   func_800C5620
/* 06D548 8006C948 24040004 */   li    $a0, 4
/* 06D54C 8006C94C 0C031525 */  jal   func_800C5494
/* 06D550 8006C950 24040004 */   li    $a0, 4
/* 06D554 8006C954 3C04800E */  lui   $a0, %hi(D_800DD404) # $a0, 0x800e
/* 06D558 8006C958 8C84D404 */  lw    $a0, %lo(D_800DD404)($a0)
/* 06D55C 8006C95C 0C030125 */  jal   func_800C0494
/* 06D560 8006C960 00000000 */   nop   
/* 06D564 8006C964 10400007 */  beqz  $v0, .L8006C984
/* 06D568 8006C968 3C048012 */   lui   $a0, %hi(D_801211F8) # $a0, 0x8012
/* 06D56C 8006C96C 3C058012 */  lui   $a1, %hi(D_80121208) # $a1, 0x8012
/* 06D570 8006C970 3C068012 */  lui   $a2, %hi(D_80121218) # $a2, 0x8012
/* 06D574 8006C974 24C61218 */  addiu $a2, %lo(D_80121218) # addiu $a2, $a2, 0x1218
/* 06D578 8006C978 24A51208 */  addiu $a1, %lo(D_80121208) # addiu $a1, $a1, 0x1208
/* 06D57C 8006C97C 0C030172 */  jal   func_800C05C8
/* 06D580 8006C980 248411F8 */   addiu $a0, %lo(D_801211F8) # addiu $a0, $a0, 0x11f8
.L8006C984:
/* 06D584 8006C984 3C0C8012 */  lui   $t4, %hi(D_80123520) # $t4, 0x8012
/* 06D588 8006C988 8D8C3520 */  lw    $t4, %lo(D_80123520)($t4)
/* 06D58C 8006C98C 00000000 */  nop   
/* 06D590 8006C990 29810008 */  slti  $at, $t4, 8
/* 06D594 8006C994 14200009 */  bnez  $at, .L8006C9BC
/* 06D598 8006C998 00000000 */   nop   
/* 06D59C 8006C99C 0C01BD32 */  jal   func_8006F4C8
/* 06D5A0 8006C9A0 00000000 */   nop   
/* 06D5A4 8006C9A4 10400005 */  beqz  $v0, .L8006C9BC
/* 06D5A8 8006C9A8 3C048012 */   lui   $a0, %hi(D_801211F8) # $a0, 0x8012
/* 06D5AC 8006C9AC 3C05800E */  lui   $a1, %hi(D_800DD404) # $a1, 0x800e
/* 06D5B0 8006C9B0 8CA5D404 */  lw    $a1, %lo(D_800DD404)($a1)
/* 06D5B4 8006C9B4 0C020A7E */  jal   func_800829F8
/* 06D5B8 8006C9B8 248411F8 */   addiu $a0, %lo(D_801211F8) # addiu $a0, $a0, 0x11f8
.L8006C9BC:
/* 06D5BC 8006C9BC 3C028012 */  lui   $v0, %hi(D_801211F8) # $v0, 0x8012
/* 06D5C0 8006C9C0 8C4211F8 */  lw    $v0, %lo(D_801211F8)($v0)
/* 06D5C4 8006C9C4 3C018012 */  lui   $at, %hi(D_801211F8) # $at, 0x8012
/* 06D5C8 8006C9C8 244D0008 */  addiu $t5, $v0, 8
/* 06D5CC 8006C9CC AC2D11F8 */  sw    $t5, %lo(D_801211F8)($at)
/* 06D5D0 8006C9D0 3C0EE900 */  lui   $t6, 0xe900
/* 06D5D4 8006C9D4 AC4E0000 */  sw    $t6, ($v0)
/* 06D5D8 8006C9D8 AC400004 */  sw    $zero, 4($v0)
/* 06D5DC 8006C9DC 3C028012 */  lui   $v0, %hi(D_801211F8) # $v0, 0x8012
/* 06D5E0 8006C9E0 8C4211F8 */  lw    $v0, %lo(D_801211F8)($v0)
/* 06D5E4 8006C9E4 3C18B800 */  lui   $t8, 0xb800
/* 06D5E8 8006C9E8 244F0008 */  addiu $t7, $v0, 8
/* 06D5EC 8006C9EC AC2F11F8 */  sw    $t7, %lo(D_801211F8)($at)
/* 06D5F0 8006C9F0 AC400004 */  sw    $zero, 4($v0)
/* 06D5F4 8006C9F4 0C019984 */  jal   func_80066610
/* 06D5F8 8006C9F8 AC580000 */   sw    $t8, ($v0)
/* 06D5FC 8006C9FC 3C19800E */  lui   $t9, %hi(D_800DD3F0) # $t9, 0x800e
/* 06D600 8006CA00 8339D3F0 */  lb    $t9, %lo(D_800DD3F0)($t9)
/* 06D604 8006CA04 24010001 */  li    $at, 1
/* 06D608 8006CA08 1321000A */  beq   $t9, $at, .L8006CA34
/* 06D60C 8006CA0C 3C08800E */   lui   $t0, %hi(D_800DD38C) # $t0, 0x800e
/* 06D610 8006CA10 8108D38C */  lb    $t0, %lo(D_800DD38C)($t0)
/* 06D614 8006CA14 00000000 */  nop   
/* 06D618 8006CA18 15000008 */  bnez  $t0, .L8006CA3C
/* 06D61C 8006CA1C 00000000 */   nop   
/* 06D620 8006CA20 0C01DE95 */  jal   func_80077A54
/* 06D624 8006CA24 00000000 */   nop   
/* 06D628 8006CA28 3C01800E */  lui   $at, %hi(D_800DD380) # $at, 0x800e
/* 06D62C 8006CA2C 10000003 */  b     .L8006CA3C
/* 06D630 8006CA30 AC22D380 */   sw    $v0, %lo(D_800DD380)($at)
.L8006CA34:
/* 06D634 8006CA34 3C01800E */  lui   $at, %hi(D_800DD3F0) # $at, 0x800e
/* 06D638 8006CA38 A020D3F0 */  sb    $zero, %lo(D_800DD3F0)($at)
.L8006CA3C:
/* 06D63C 8006CA3C 3C01800E */  lui   $at, %hi(D_800DD38C) # $at, 0x800e
/* 06D640 8006CA40 0C01C466 */  jal   func_80071198
/* 06D644 8006CA44 A020D38C */   sb    $zero, %lo(D_800DD38C)($at)
/* 06D648 8006CA48 3C098012 */  lui   $t1, %hi(gIsPaused) # $t1, 0x8012
/* 06D64C 8006CA4C 81293515 */  lb    $t1, %lo(gIsPaused)($t1)
/* 06D650 8006CA50 00000000 */  nop   
/* 06D654 8006CA54 15200003 */  bnez  $t1, .L8006CA64
/* 06D658 8006CA58 00000000 */   nop   
/* 06D65C 8006CA5C 0C019948 */  jal   func_80066520
/* 06D660 8006CA60 00000000 */   nop   
.L8006CA64:
/* 06D664 8006CA64 3C0A800E */  lui   $t2, %hi(D_800DD3F0) # $t2, 0x800e
/* 06D668 8006CA68 814AD3F0 */  lb    $t2, %lo(D_800DD3F0)($t2)
/* 06D66C 8006CA6C 24010002 */  li    $at, 2
/* 06D670 8006CA70 1541000D */  bne   $t2, $at, .L8006CAA8
/* 06D674 8006CA74 3C0B8000 */   lui   $t3, %hi(osTvType) # $t3, 0x8000
/* 06D678 8006CA78 8D6B0300 */  lw    $t3, %lo(osTvType)($t3)
/* 06D67C 8006CA7C 3C020002 */  lui   $v0, (0x00025800 >> 16) # lui $v0, 2
/* 06D680 8006CA80 15600003 */  bnez  $t3, .L8006CA90
/* 06D684 8006CA84 34425800 */   ori   $v0, (0x00025800 & 0xFFFF) # ori $v0, $v0, 0x5800
/* 06D688 8006CA88 3C020002 */  lui   $v0, (0x00029400 >> 16) # lui $v0, 2
/* 06D68C 8006CA8C 34429400 */  ori   $v0, (0x00029400 & 0xFFFF) # ori $v0, $v0, 0x9400
.L8006CA90:
/* 06D690 8006CA90 3C058012 */  lui   $a1, %hi(D_801262D4) # $a1, 0x8012
/* 06D694 8006CA94 8CA562D4 */  lw    $a1, %lo(D_801262D4)($a1)
/* 06D698 8006CA98 3C048012 */  lui   $a0, %hi(D_801262D8) # $a0, 0x8012
/* 06D69C 8006CA9C 8C8462D8 */  lw    $a0, %lo(D_801262D8)($a0)
/* 06D6A0 8006CAA0 0C01C2C1 */  jal   func_80070B04
/* 06D6A4 8006CAA4 00A23021 */   addu  $a2, $a1, $v0
.L8006CAA8:
/* 06D6A8 8006CAA8 3C04800E */  lui   $a0, %hi(D_800DD380) # $a0, 0x800e
/* 06D6AC 8006CAAC 8C84D380 */  lw    $a0, %lo(D_800DD380)($a0)
/* 06D6B0 8006CAB0 0C01EA63 */  jal   func_8007A98C
/* 06D6B4 8006CAB4 00000000 */   nop   
/* 06D6B8 8006CAB8 3C01800E */  lui   $at, %hi(D_800DD404) # $at, 0x800e
/* 06D6BC 8006CABC AC22D404 */  sw    $v0, %lo(D_800DD404)($at)
/* 06D6C0 8006CAC0 28410007 */  slti  $at, $v0, 7
/* 06D6C4 8006CAC4 14200003 */  bnez  $at, .L8006CAD4
/* 06D6C8 8006CAC8 240C0006 */   li    $t4, 6
/* 06D6CC 8006CACC 3C01800E */  lui   $at, %hi(D_800DD404) # $at, 0x800e
/* 06D6D0 8006CAD0 AC2CD404 */  sw    $t4, %lo(D_800DD404)($at)
.L8006CAD4:
/* 06D6D4 8006CAD4 8FBF0014 */  lw    $ra, 0x14($sp)
/* 06D6D8 8006CAD8 27BD0018 */  addiu $sp, $sp, 0x18
/* 06D6DC 8006CADC 03E00008 */  jr    $ra
/* 06D6E0 8006CAE0 00000000 */   nop   

