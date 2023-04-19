.late_rodata
glabel D_800E8720
.double 66.0
glabel D_800E8728
.double 66.0

.text
glabel func_800A14F0
/* 0A20F0 800A14F0 27BDFFA0 */  addiu $sp, $sp, -0x60
/* 0A20F4 800A14F4 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0A20F8 800A14F8 AFA40060 */  sw    $a0, 0x60($sp)
/* 0A20FC 800A14FC AFA50064 */  sw    $a1, 0x64($sp)
/* 0A2100 800A1500 0C006E9D */  jal   get_racer_objects
/* 0A2104 800A1504 27A40050 */   addiu $a0, $sp, 0x50
/* 0A2108 800A1508 3C0E8012 */  lui   $t6, %hi(gNumActivePlayers) # $t6, 0x8012
/* 0A210C 800A150C 91CE6D37 */  lbu   $t6, %lo(gNumActivePlayers)($t6)
/* 0A2110 800A1510 8FAB0060 */  lw    $t3, 0x60($sp)
/* 0A2114 800A1514 240C0002 */  li    $t4, 2
/* 0A2118 800A1518 158E005C */  bne   $t4, $t6, .L800A168C
/* 0A211C 800A151C 00405025 */   move  $t2, $v0
/* 0A2120 800A1520 8FAF0050 */  lw    $t7, 0x50($sp)
/* 0A2124 800A1524 00003025 */  move  $a2, $zero
/* 0A2128 800A1528 19E00056 */  blez  $t7, .L800A1684
/* 0A212C 800A152C 00003825 */   move  $a3, $zero
/* 0A2130 800A1530 31E30003 */  andi  $v1, $t7, 3
/* 0A2134 800A1534 10600017 */  beqz  $v1, .L800A1594
/* 0A2138 800A1538 00604825 */   move  $t1, $v1
/* 0A213C 800A153C 0000C080 */  sll   $t8, $zero, 2
/* 0A2140 800A1540 00582821 */  addu  $a1, $v0, $t8
/* 0A2144 800A1544 2408FFFF */  li    $t0, -1
.L800A1548:
/* 0A2148 800A1548 8CB90000 */  lw    $t9, ($a1)
/* 0A214C 800A154C 24E70001 */  addiu $a3, $a3, 1
/* 0A2150 800A1550 8F230064 */  lw    $v1, 0x64($t9)
/* 0A2154 800A1554 00000000 */  nop   
/* 0A2158 800A1558 846D0000 */  lh    $t5, ($v1)
/* 0A215C 800A155C 00000000 */  nop   
/* 0A2160 800A1560 110D0006 */  beq   $t0, $t5, .L800A157C
/* 0A2164 800A1564 00000000 */   nop   
/* 0A2168 800A1568 806E01D8 */  lb    $t6, 0x1d8($v1)
/* 0A216C 800A156C 00000000 */  nop   
/* 0A2170 800A1570 11C00002 */  beqz  $t6, .L800A157C
/* 0A2174 800A1574 00000000 */   nop   
/* 0A2178 800A1578 24C60001 */  addiu $a2, $a2, 1
.L800A157C:
/* 0A217C 800A157C 1527FFF2 */  bne   $t1, $a3, .L800A1548
/* 0A2180 800A1580 24A50004 */   addiu $a1, $a1, 4
/* 0A2184 800A1584 8FAF0050 */  lw    $t7, 0x50($sp)
/* 0A2188 800A1588 00000000 */  nop   
/* 0A218C 800A158C 10EF003D */  beq   $a3, $t7, .L800A1684
/* 0A2190 800A1590 00000000 */   nop   
.L800A1594:
/* 0A2194 800A1594 8FB80050 */  lw    $t8, 0x50($sp)
/* 0A2198 800A1598 00076880 */  sll   $t5, $a3, 2
/* 0A219C 800A159C 0018C880 */  sll   $t9, $t8, 2
/* 0A21A0 800A15A0 03224821 */  addu  $t1, $t9, $v0
/* 0A21A4 800A15A4 004D2821 */  addu  $a1, $v0, $t5
/* 0A21A8 800A15A8 2408FFFF */  li    $t0, -1
.L800A15AC:
/* 0A21AC 800A15AC 8CAE0000 */  lw    $t6, ($a1)
/* 0A21B0 800A15B0 00000000 */  nop   
/* 0A21B4 800A15B4 8DC30064 */  lw    $v1, 0x64($t6)
/* 0A21B8 800A15B8 00000000 */  nop   
/* 0A21BC 800A15BC 846F0000 */  lh    $t7, ($v1)
/* 0A21C0 800A15C0 00000000 */  nop   
/* 0A21C4 800A15C4 110F0006 */  beq   $t0, $t7, .L800A15E0
/* 0A21C8 800A15C8 00000000 */   nop   
/* 0A21CC 800A15CC 807801D8 */  lb    $t8, 0x1d8($v1)
/* 0A21D0 800A15D0 00000000 */  nop   
/* 0A21D4 800A15D4 13000002 */  beqz  $t8, .L800A15E0
/* 0A21D8 800A15D8 00000000 */   nop   
/* 0A21DC 800A15DC 24C60001 */  addiu $a2, $a2, 1
.L800A15E0:
/* 0A21E0 800A15E0 8CB90004 */  lw    $t9, 4($a1)
/* 0A21E4 800A15E4 00000000 */  nop   
/* 0A21E8 800A15E8 8F240064 */  lw    $a0, 0x64($t9)
/* 0A21EC 800A15EC 00000000 */  nop   
/* 0A21F0 800A15F0 848D0000 */  lh    $t5, ($a0)
/* 0A21F4 800A15F4 00000000 */  nop   
/* 0A21F8 800A15F8 110D0006 */  beq   $t0, $t5, .L800A1614
/* 0A21FC 800A15FC 00000000 */   nop   
/* 0A2200 800A1600 808E01D8 */  lb    $t6, 0x1d8($a0)
/* 0A2204 800A1604 00000000 */  nop   
/* 0A2208 800A1608 11C00002 */  beqz  $t6, .L800A1614
/* 0A220C 800A160C 00000000 */   nop   
/* 0A2210 800A1610 24C60001 */  addiu $a2, $a2, 1
.L800A1614:
/* 0A2214 800A1614 8CAF0008 */  lw    $t7, 8($a1)
/* 0A2218 800A1618 00000000 */  nop   
/* 0A221C 800A161C 8DE40064 */  lw    $a0, 0x64($t7)
/* 0A2220 800A1620 00000000 */  nop   
/* 0A2224 800A1624 84980000 */  lh    $t8, ($a0)
/* 0A2228 800A1628 00000000 */  nop   
/* 0A222C 800A162C 11180006 */  beq   $t0, $t8, .L800A1648
/* 0A2230 800A1630 00000000 */   nop   
/* 0A2234 800A1634 809901D8 */  lb    $t9, 0x1d8($a0)
/* 0A2238 800A1638 00000000 */  nop   
/* 0A223C 800A163C 13200002 */  beqz  $t9, .L800A1648
/* 0A2240 800A1640 00000000 */   nop   
/* 0A2244 800A1644 24C60001 */  addiu $a2, $a2, 1
.L800A1648:
/* 0A2248 800A1648 8CAD000C */  lw    $t5, 0xc($a1)
/* 0A224C 800A164C 24A50010 */  addiu $a1, $a1, 0x10
/* 0A2250 800A1650 8DA40064 */  lw    $a0, 0x64($t5)
/* 0A2254 800A1654 00000000 */  nop   
/* 0A2258 800A1658 848E0000 */  lh    $t6, ($a0)
/* 0A225C 800A165C 00000000 */  nop   
/* 0A2260 800A1660 110E0006 */  beq   $t0, $t6, .L800A167C
/* 0A2264 800A1664 00000000 */   nop   
/* 0A2268 800A1668 808F01D8 */  lb    $t7, 0x1d8($a0)
/* 0A226C 800A166C 00000000 */  nop   
/* 0A2270 800A1670 11E00002 */  beqz  $t7, .L800A167C
/* 0A2274 800A1674 00000000 */   nop   
/* 0A2278 800A1678 24C60001 */  addiu $a2, $a2, 1
.L800A167C:
/* 0A227C 800A167C 14A9FFCB */  bne   $a1, $t1, .L800A15AC
/* 0A2280 800A1680 00000000 */   nop   
.L800A1684:
/* 0A2284 800A1684 10CC00C4 */  beq   $a2, $t4, .L800A1998
/* 0A2288 800A1688 8FBF0014 */   lw    $ra, 0x14($sp)
.L800A168C:
/* 0A228C 800A168C 11600004 */  beqz  $t3, .L800A16A0
/* 0A2290 800A1690 24040001 */   li    $a0, 1
/* 0A2294 800A1694 8D690064 */  lw    $t1, 0x64($t3)
/* 0A2298 800A1698 10000006 */  b     .L800A16B4
/* 0A229C 800A169C 8FB90050 */   lw    $t9, 0x50($sp)
.L800A16A0:
/* 0A22A0 800A16A0 8C580000 */  lw    $t8, ($v0)
/* 0A22A4 800A16A4 00000000 */  nop   
/* 0A22A8 800A16A8 8F090064 */  lw    $t1, 0x64($t8)
/* 0A22AC 800A16AC 00000000 */  nop   
/* 0A22B0 800A16B0 8FB90050 */  lw    $t9, 0x50($sp)
.L800A16B4:
/* 0A22B4 800A16B4 24010004 */  li    $at, 4
/* 0A22B8 800A16B8 172100B6 */  bne   $t9, $at, .L800A1994
/* 0A22BC 800A16BC 00003825 */   move  $a3, $zero
/* 0A22C0 800A16C0 AFA90054 */  sw    $t1, 0x54($sp)
/* 0A22C4 800A16C4 0C01A142 */  jal   func_80068508
/* 0A22C8 800A16C8 AFAA005C */   sw    $t2, 0x5c($sp)
/* 0A22CC 800A16CC 444DF800 */  cfc1  $t5, $31
/* 0A22D0 800A16D0 3C068012 */  lui   $a2, %hi(D_80126CDC) # $a2, 0x8012
/* 0A22D4 800A16D4 24C66CDC */  addiu $a2, %lo(D_80126CDC) # addiu $a2, $a2, 0x6cdc
/* 0A22D8 800A16D8 8CC20000 */  lw    $v0, ($a2)
/* 0A22DC 800A16DC 35A10003 */  ori   $at, $t5, 3
/* 0A22E0 800A16E0 38210002 */  xori  $at, $at, 2
/* 0A22E4 800A16E4 44C1F800 */  ctc1  $at, $31
/* 0A22E8 800A16E8 C444064C */  lwc1  $f4, 0x64c($v0)
/* 0A22EC 800A16EC 8FA90054 */  lw    $t1, 0x54($sp)
/* 0A22F0 800A16F0 460021A4 */  cvt.w.s $f6, $f4
/* 0A22F4 800A16F4 8FA8005C */  lw    $t0, 0x5c($sp)
/* 0A22F8 800A16F8 44CDF800 */  ctc1  $t5, $31
/* 0A22FC 800A16FC 44193000 */  mfc1  $t9, $f6
/* 0A2300 800A1700 00003825 */  move  $a3, $zero
/* 0A2304 800A1704 444FF800 */  cfc1  $t7, $31
/* 0A2308 800A1708 AFB90044 */  sw    $t9, 0x44($sp)
/* 0A230C 800A170C 35E10003 */  ori   $at, $t7, 3
/* 0A2310 800A1710 38210002 */  xori  $at, $at, 2
/* 0A2314 800A1714 44C1F800 */  ctc1  $at, $31
/* 0A2318 800A1718 C4480650 */  lwc1  $f8, 0x650($v0)
/* 0A231C 800A171C 44998000 */  mtc1  $t9, $f16
/* 0A2320 800A1720 460042A4 */  cvt.w.s $f10, $f8
/* 0A2324 800A1724 35A10003 */  ori   $at, $t5, 3
/* 0A2328 800A1728 44CFF800 */  ctc1  $t7, $31
/* 0A232C 800A172C 440F5000 */  mfc1  $t7, $f10
/* 0A2330 800A1730 468083A0 */  cvt.s.w $f14, $f16
/* 0A2334 800A1734 AFAF003C */  sw    $t7, 0x3c($sp)
/* 0A2338 800A1738 C452066C */  lwc1  $f18, 0x66c($v0)
/* 0A233C 800A173C 38210002 */  xori  $at, $at, 2
/* 0A2340 800A1740 460E9101 */  sub.s $f4, $f18, $f14
/* 0A2344 800A1744 448F4000 */  mtc1  $t7, $f8
/* 0A2348 800A1748 44C1F800 */  ctc1  $at, $31
/* 0A234C 800A174C 00000000 */  nop   
/* 0A2350 800A1750 460021A4 */  cvt.w.s $f6, $f4
/* 0A2354 800A1754 44CDF800 */  ctc1  $t5, $31
/* 0A2358 800A1758 440E3000 */  mfc1  $t6, $f6
/* 0A235C 800A175C 468042A0 */  cvt.s.w $f10, $f8
/* 0A2360 800A1760 AFAE0040 */  sw    $t6, 0x40($sp)
/* 0A2364 800A1764 448E3000 */  mtc1  $t6, $f6
/* 0A2368 800A1768 E7AA001C */  swc1  $f10, 0x1c($sp)
/* 0A236C 800A176C C4500670 */  lwc1  $f16, 0x670($v0)
/* 0A2370 800A1770 00000000 */  nop   
/* 0A2374 800A1774 460A8481 */  sub.s $f18, $f16, $f10
/* 0A2378 800A1778 4458F800 */  cfc1  $t8, $31
/* 0A237C 800A177C 00000000 */  nop   
/* 0A2380 800A1780 37010003 */  ori   $at, $t8, 3
/* 0A2384 800A1784 38210002 */  xori  $at, $at, 2
/* 0A2388 800A1788 44C1F800 */  ctc1  $at, $31
/* 0A238C 800A178C 3C01425C */  li    $at, 0x425C0000 # 55.000000
/* 0A2390 800A1790 46009124 */  cvt.w.s $f4, $f18
/* 0A2394 800A1794 44811000 */  mtc1  $at, $f2
/* 0A2398 800A1798 3C01800F */  lui   $at, %hi(D_800E8720 + 4) # $at, 0x800f
/* 0A239C 800A179C 44192000 */  mfc1  $t9, $f4
/* 0A23A0 800A17A0 44D8F800 */  ctc1  $t8, $31
/* 0A23A4 800A17A4 C4218720 */  lwc1  $f1, %lo(D_800E8720)($at)
/* 0A23A8 800A17A8 C4208724 */  lwc1  $f0, %lo(D_800E8720 + 4)($at)
/* 0A23AC 800A17AC AFB90038 */  sw    $t9, 0x38($sp)
/* 0A23B0 800A17B0 46803320 */  cvt.s.w $f12, $f6
.L800A17B4:
/* 0A23B4 800A17B4 8D0D0000 */  lw    $t5, ($t0)
/* 0A23B8 800A17B8 3C038012 */  lui   $v1, %hi(gNumActivePlayers) # $v1, 0x8012
/* 0A23BC 800A17BC 90636D37 */  lbu   $v1, %lo(gNumActivePlayers)($v1)
/* 0A23C0 800A17C0 8DA20064 */  lw    $v0, 0x64($t5)
/* 0A23C4 800A17C4 28610003 */  slti  $at, $v1, 3
/* 0A23C8 800A17C8 14200006 */  bnez  $at, .L800A17E4
/* 0A23CC 800A17CC 00402025 */   move  $a0, $v0
/* 0A23D0 800A17D0 844F0000 */  lh    $t7, ($v0)
/* 0A23D4 800A17D4 85380000 */  lh    $t8, ($t1)
/* 0A23D8 800A17D8 00000000 */  nop   
/* 0A23DC 800A17DC 15F80017 */  bne   $t7, $t8, .L800A183C
/* 0A23E0 800A17E0 2419FFFE */   li    $t9, -2
.L800A17E4:
/* 0A23E4 800A17E4 8FA50064 */  lw    $a1, 0x64($sp)
/* 0A23E8 800A17E8 AFA7002C */  sw    $a3, 0x2c($sp)
/* 0A23EC 800A17EC AFA80028 */  sw    $t0, 0x28($sp)
/* 0A23F0 800A17F0 AFA90054 */  sw    $t1, 0x54($sp)
/* 0A23F4 800A17F4 E7AC0018 */  swc1  $f12, 0x18($sp)
/* 0A23F8 800A17F8 0C028669 */  jal   func_800A19A4
/* 0A23FC 800A17FC E7AE0020 */   swc1  $f14, 0x20($sp)
/* 0A2400 800A1800 3C01800F */  lui   $at, %hi(D_800E8728 + 4) # $at, 0x800f
/* 0A2404 800A1804 C4218728 */  lwc1  $f1, %lo(D_800E8728)($at)
/* 0A2408 800A1808 C420872C */  lwc1  $f0, %lo(D_800E8728 + 4)($at)
/* 0A240C 800A180C 3C01425C */  li    $at, 0x425C0000 # 55.000000
/* 0A2410 800A1810 3C038012 */  lui   $v1, %hi(gNumActivePlayers) # $v1, 0x8012
/* 0A2414 800A1814 3C068012 */  lui   $a2, %hi(D_80126CDC) # $a2, 0x8012
/* 0A2418 800A1818 90636D37 */  lbu   $v1, %lo(gNumActivePlayers)($v1)
/* 0A241C 800A181C 44811000 */  mtc1  $at, $f2
/* 0A2420 800A1820 8FA7002C */  lw    $a3, 0x2c($sp)
/* 0A2424 800A1824 8FA80028 */  lw    $t0, 0x28($sp)
/* 0A2428 800A1828 8FA90054 */  lw    $t1, 0x54($sp)
/* 0A242C 800A182C C7AC0018 */  lwc1  $f12, 0x18($sp)
/* 0A2430 800A1830 C7AE0020 */  lwc1  $f14, 0x20($sp)
/* 0A2434 800A1834 24C66CDC */  addiu $a2, %lo(D_80126CDC) # addiu $a2, $a2, 0x6cdc
/* 0A2438 800A1838 2419FFFE */  li    $t9, -2
.L800A183C:
/* 0A243C 800A183C 3C01800E */  lui   $at, %hi(D_800E2834) # $at, 0x800e
/* 0A2440 800A1840 AC392834 */  sw    $t9, %lo(D_800E2834)($at)
/* 0A2444 800A1844 8CC20000 */  lw    $v0, ($a2)
/* 0A2448 800A1848 24010001 */  li    $at, 1
/* 0A244C 800A184C 1461000A */  bne   $v1, $at, .L800A1878
/* 0A2450 800A1850 24E70004 */   addiu $a3, $a3, 4
/* 0A2454 800A1854 3C014288 */  li    $at, 0x42880000 # 68.000000
/* 0A2458 800A1858 44818000 */  mtc1  $at, $f16
/* 0A245C 800A185C C448064C */  lwc1  $f8, 0x64c($v0)
/* 0A2460 800A1860 00000000 */  nop   
/* 0A2464 800A1864 46104280 */  add.s $f10, $f8, $f16
/* 0A2468 800A1868 E44A064C */  swc1  $f10, 0x64c($v0)
/* 0A246C 800A186C 8CC20000 */  lw    $v0, ($a2)
/* 0A2470 800A1870 1000002B */  b     .L800A1920
/* 0A2474 800A1874 C452064C */   lwc1  $f18, 0x64c($v0)
.L800A1878:
/* 0A2478 800A1878 24010002 */  li    $at, 2
/* 0A247C 800A187C 14610027 */  bne   $v1, $at, .L800A191C
/* 0A2480 800A1880 3C0E8000 */   lui   $t6, %hi(osTvType) # $t6, 0x8000
/* 0A2484 800A1884 E44E064C */  swc1  $f14, 0x64c($v0)
/* 0A2488 800A1888 8DCE0300 */  lw    $t6, %lo(osTvType)($t6)
/* 0A248C 800A188C 00000000 */  nop   
/* 0A2490 800A1890 15C00014 */  bnez  $t6, .L800A18E4
/* 0A2494 800A1894 00000000 */   nop   
/* 0A2498 800A1898 8CC20000 */  lw    $v0, ($a2)
/* 0A249C 800A189C 00000000 */  nop   
/* 0A24A0 800A18A0 C4520650 */  lwc1  $f18, 0x650($v0)
/* 0A24A4 800A18A4 00000000 */  nop   
/* 0A24A8 800A18A8 46009121 */  cvt.d.s $f4, $f18
/* 0A24AC 800A18AC 46202180 */  add.d $f6, $f4, $f0
/* 0A24B0 800A18B0 46203220 */  cvt.s.d $f8, $f6
/* 0A24B4 800A18B4 E4480650 */  swc1  $f8, 0x650($v0)
/* 0A24B8 800A18B8 8CC20000 */  lw    $v0, ($a2)
/* 0A24BC 800A18BC 00000000 */  nop   
/* 0A24C0 800A18C0 C4500670 */  lwc1  $f16, 0x670($v0)
/* 0A24C4 800A18C4 00000000 */  nop   
/* 0A24C8 800A18C8 460082A1 */  cvt.d.s $f10, $f16
/* 0A24CC 800A18CC 46205480 */  add.d $f18, $f10, $f0
/* 0A24D0 800A18D0 46209120 */  cvt.s.d $f4, $f18
/* 0A24D4 800A18D4 E4440670 */  swc1  $f4, 0x670($v0)
/* 0A24D8 800A18D8 8CC20000 */  lw    $v0, ($a2)
/* 0A24DC 800A18DC 10000010 */  b     .L800A1920
/* 0A24E0 800A18E0 C452064C */   lwc1  $f18, 0x64c($v0)
.L800A18E4:
/* 0A24E4 800A18E4 8CC20000 */  lw    $v0, ($a2)
/* 0A24E8 800A18E8 00000000 */  nop   
/* 0A24EC 800A18EC C4460650 */  lwc1  $f6, 0x650($v0)
/* 0A24F0 800A18F0 00000000 */  nop   
/* 0A24F4 800A18F4 46023200 */  add.s $f8, $f6, $f2
/* 0A24F8 800A18F8 E4480650 */  swc1  $f8, 0x650($v0)
/* 0A24FC 800A18FC 8CC20000 */  lw    $v0, ($a2)
/* 0A2500 800A1900 00000000 */  nop   
/* 0A2504 800A1904 C4500670 */  lwc1  $f16, 0x670($v0)
/* 0A2508 800A1908 00000000 */  nop   
/* 0A250C 800A190C 46028280 */  add.s $f10, $f16, $f2
/* 0A2510 800A1910 E44A0670 */  swc1  $f10, 0x670($v0)
/* 0A2514 800A1914 8CC20000 */  lw    $v0, ($a2)
/* 0A2518 800A1918 00000000 */  nop   
.L800A191C:
/* 0A251C 800A191C C452064C */  lwc1  $f18, 0x64c($v0)
.L800A1920:
/* 0A2520 800A1920 24010010 */  li    $at, 16
/* 0A2524 800A1924 460C9100 */  add.s $f4, $f18, $f12
/* 0A2528 800A1928 25080004 */  addiu $t0, $t0, 4
/* 0A252C 800A192C 14E1FFA1 */  bne   $a3, $at, .L800A17B4
/* 0A2530 800A1930 E444066C */   swc1  $f4, 0x66c($v0)
/* 0A2534 800A1934 8CCD0000 */  lw    $t5, ($a2)
/* 0A2538 800A1938 00002025 */  move  $a0, $zero
/* 0A253C 800A193C E5AE064C */  swc1  $f14, 0x64c($t5)
/* 0A2540 800A1940 8FB80040 */  lw    $t8, 0x40($sp)
/* 0A2544 800A1944 8FAF0044 */  lw    $t7, 0x44($sp)
/* 0A2548 800A1948 8CCE0000 */  lw    $t6, ($a2)
/* 0A254C 800A194C 01F8C821 */  addu  $t9, $t7, $t8
/* 0A2550 800A1950 44993000 */  mtc1  $t9, $f6
/* 0A2554 800A1954 00000000 */  nop   
/* 0A2558 800A1958 46803220 */  cvt.s.w $f8, $f6
/* 0A255C 800A195C E5C8066C */  swc1  $f8, 0x66c($t6)
/* 0A2560 800A1960 8CCD0000 */  lw    $t5, ($a2)
/* 0A2564 800A1964 C7B0001C */  lwc1  $f16, 0x1c($sp)
/* 0A2568 800A1968 00000000 */  nop   
/* 0A256C 800A196C E5B00650 */  swc1  $f16, 0x650($t5)
/* 0A2570 800A1970 8FB80038 */  lw    $t8, 0x38($sp)
/* 0A2574 800A1974 8FAF003C */  lw    $t7, 0x3c($sp)
/* 0A2578 800A1978 8CCE0000 */  lw    $t6, ($a2)
/* 0A257C 800A197C 01F8C821 */  addu  $t9, $t7, $t8
/* 0A2580 800A1980 44995000 */  mtc1  $t9, $f10
/* 0A2584 800A1984 00000000 */  nop   
/* 0A2588 800A1988 468054A0 */  cvt.s.w $f18, $f10
/* 0A258C 800A198C 0C01A142 */  jal   func_80068508
/* 0A2590 800A1990 E5D20670 */   swc1  $f18, 0x670($t6)
.L800A1994:
/* 0A2594 800A1994 8FBF0014 */  lw    $ra, 0x14($sp)
.L800A1998:
/* 0A2598 800A1998 27BD0060 */  addiu $sp, $sp, 0x60
/* 0A259C 800A199C 03E00008 */  jr    $ra
/* 0A25A0 800A19A0 00000000 */   nop   

