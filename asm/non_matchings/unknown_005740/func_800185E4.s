glabel func_800185E4
/* 0191E4 800185E4 27BDFF88 */  addiu $sp, $sp, -0x78
/* 0191E8 800185E8 3C028012 */  lui   $v0, %hi(D_8011AED0) # $v0, 0x8012
/* 0191EC 800185EC 8C42AED0 */  lw    $v0, %lo(D_8011AED0)($v0)
/* 0191F0 800185F0 AFA70084 */  sw    $a3, 0x84($sp)
/* 0191F4 800185F4 00A03825 */  move  $a3, $a1
/* 0191F8 800185F8 AFBF001C */  sw    $ra, 0x1c($sp)
/* 0191FC 800185FC E7B50010 */  swc1  $f21, 0x10($sp)
/* 019200 80018600 E7B40014 */  swc1  $f20, 0x14($sp)
/* 019204 80018604 AFA40078 */  sw    $a0, 0x78($sp)
/* 019208 80018608 AFA5007C */  sw    $a1, 0x7c($sp)
/* 01920C 8001860C 14400003 */  bnez  $v0, .L8001861C
/* 019210 80018610 AFA60080 */   sw    $a2, 0x80($sp)
/* 019214 80018614 10000190 */  b     .L80018C58
/* 019218 80018618 24020001 */   li    $v0, 1
.L8001861C:
/* 01921C 8001861C 8FAF0078 */  lw    $t7, 0x78($sp)
/* 019220 80018620 2408003C */  li    $t0, 60
/* 019224 80018624 01E80019 */  multu $t7, $t0
/* 019228 80018628 3C068012 */  lui   $a2, %hi(D_8011AECC) # $a2, 0x8012
/* 01922C 8001862C 8CC6AECC */  lw    $a2, %lo(D_8011AECC)($a2)
/* 019230 80018630 8FB90090 */  lw    $t9, 0x90($sp)
/* 019234 80018634 00005825 */  move  $t3, $zero
/* 019238 80018638 00004812 */  mflo  $t1
/* 01923C 8001863C 01261821 */  addu  $v1, $t1, $a2
/* 019240 80018640 11E00003 */  beqz  $t7, .L80018650
/* 019244 80018644 00602825 */   move  $a1, $v1
/* 019248 80018648 10000005 */  b     .L80018660
/* 01924C 8001864C 2464FFC4 */   addiu $a0, $v1, -0x3c
.L80018650:
/* 019250 80018650 00480019 */  multu $v0, $t0
/* 019254 80018654 0000C012 */  mflo  $t8
/* 019258 80018658 03062021 */  addu  $a0, $t8, $a2
/* 01925C 8001865C 2484FFC4 */  addiu $a0, $a0, -0x3c
.L80018660:
/* 019260 80018660 93230000 */  lbu   $v1, ($t9)
/* 019264 80018664 00000000 */  nop   
/* 019268 80018668 10600011 */  beqz  $v1, .L800186B0
/* 01926C 8001866C 00000000 */   nop   
/* 019270 80018670 80A2003A */  lb    $v0, 0x3a($a1)
/* 019274 80018674 240AFFFF */  li    $t2, -1
/* 019278 80018678 11420005 */  beq   $t2, $v0, .L80018690
/* 01927C 8001867C 00000000 */   nop   
/* 019280 80018680 00480019 */  multu $v0, $t0
/* 019284 80018684 00006012 */  mflo  $t4
/* 019288 80018688 01862821 */  addu  $a1, $t4, $a2
/* 01928C 8001868C 00000000 */  nop   
.L80018690:
/* 019290 80018690 8082003A */  lb    $v0, 0x3a($a0)
/* 019294 80018694 00000000 */  nop   
/* 019298 80018698 11420005 */  beq   $t2, $v0, .L800186B0
/* 01929C 8001869C 00000000 */   nop   
/* 0192A0 800186A0 00480019 */  multu $v0, $t0
/* 0192A4 800186A4 00006812 */  mflo  $t5
/* 0192A8 800186A8 01A62021 */  addu  $a0, $t5, $a2
/* 0192AC 800186AC 00000000 */  nop   
.L800186B0:
/* 0192B0 800186B0 14600031 */  bnez  $v1, .L80018778
/* 0192B4 800186B4 240AFFFF */   li    $t2, -1
/* 0192B8 800186B8 808E003A */  lb    $t6, 0x3a($a0)
/* 0192BC 800186BC 00000000 */  nop   
/* 0192C0 800186C0 154E002D */  bne   $t2, $t6, .L80018778
/* 0192C4 800186C4 00000000 */   nop   
/* 0192C8 800186C8 80A2003A */  lb    $v0, 0x3a($a1)
/* 0192CC 800186CC 00000000 */  nop   
/* 0192D0 800186D0 11420029 */  beq   $t2, $v0, .L80018778
/* 0192D4 800186D4 00000000 */   nop   
/* 0192D8 800186D8 00480019 */  multu $v0, $t0
/* 0192DC 800186DC C4E8000C */  lwc1  $f8, 0xc($a3)
/* 0192E0 800186E0 C4E60010 */  lwc1  $f6, 0x10($a3)
/* 0192E4 800186E4 00007812 */  mflo  $t7
/* 0192E8 800186E8 01E61821 */  addu  $v1, $t7, $a2
/* 0192EC 800186EC C4640010 */  lwc1  $f4, 0x10($v1)
/* 0192F0 800186F0 C46A0014 */  lwc1  $f10, 0x14($v1)
/* 0192F4 800186F4 46082001 */  sub.s $f0, $f4, $f8
/* 0192F8 800186F8 C4E80014 */  lwc1  $f8, 0x14($a3)
/* 0192FC 800186FC 46065501 */  sub.s $f20, $f10, $f6
/* 019300 80018700 C4640018 */  lwc1  $f4, 0x18($v1)
/* 019304 80018704 46000282 */  mul.s $f10, $f0, $f0
/* 019308 80018708 46082081 */  sub.s $f2, $f4, $f8
/* 01930C 8001870C AFA00070 */  sw    $zero, 0x70($sp)
/* 019310 80018710 AFA90038 */  sw    $t1, 0x38($sp)
/* 019314 80018714 4614A182 */  mul.s $f6, $f20, $f20
/* 019318 80018718 AFA7007C */  sw    $a3, 0x7c($sp)
/* 01931C 8001871C AFA5004C */  sw    $a1, 0x4c($sp)
/* 019320 80018720 AFA40048 */  sw    $a0, 0x48($sp)
/* 019324 80018724 46021202 */  mul.s $f8, $f2, $f2
/* 019328 80018728 46065100 */  add.s $f4, $f10, $f6
/* 01932C 8001872C AFA30044 */  sw    $v1, 0x44($sp)
/* 019330 80018730 0C0326B4 */  jal   sqrtf
/* 019334 80018734 46082300 */   add.s $f12, $f4, $f8
/* 019338 80018738 8FA30044 */  lw    $v1, 0x44($sp)
/* 01933C 8001873C 8FA40048 */  lw    $a0, 0x48($sp)
/* 019340 80018740 8478002C */  lh    $t8, 0x2c($v1)
/* 019344 80018744 8FA5004C */  lw    $a1, 0x4c($sp)
/* 019348 80018748 44985000 */  mtc1  $t8, $f10
/* 01934C 8001874C 8FA7007C */  lw    $a3, 0x7c($sp)
/* 019350 80018750 468051A0 */  cvt.s.w $f6, $f10
/* 019354 80018754 8FA80078 */  lw    $t0, 0x78($sp)
/* 019358 80018758 8FA90038 */  lw    $t1, 0x38($sp)
/* 01935C 8001875C 4606003C */  c.lt.s $f0, $f6
/* 019360 80018760 8FAB0070 */  lw    $t3, 0x70($sp)
/* 019364 80018764 45000004 */  bc1f  .L80018778
/* 019368 80018768 00000000 */   nop   
/* 01936C 8001876C 00602825 */  move  $a1, $v1
/* 019370 80018770 240B0001 */  li    $t3, 1
/* 019374 80018774 AFA80078 */  sw    $t0, 0x78($sp)
.L80018778:
/* 019378 80018778 C4A40010 */  lwc1  $f4, 0x10($a1)
/* 01937C 8001877C C4880010 */  lwc1  $f8, 0x10($a0)
/* 019380 80018780 C4AA0014 */  lwc1  $f10, 0x14($a1)
/* 019384 80018784 C4860014 */  lwc1  $f6, 0x14($a0)
/* 019388 80018788 46082001 */  sub.s $f0, $f4, $f8
/* 01938C 8001878C C4880018 */  lwc1  $f8, 0x18($a0)
/* 019390 80018790 46065501 */  sub.s $f20, $f10, $f6
/* 019394 80018794 C4A40018 */  lwc1  $f4, 0x18($a1)
/* 019398 80018798 46000282 */  mul.s $f10, $f0, $f0
/* 01939C 8001879C 46082081 */  sub.s $f2, $f4, $f8
/* 0193A0 800187A0 E7A0006C */  swc1  $f0, 0x6c($sp)
/* 0193A4 800187A4 E7A20064 */  swc1  $f2, 0x64($sp)
/* 0193A8 800187A8 4614A182 */  mul.s $f6, $f20, $f20
/* 0193AC 800187AC AFAB0070 */  sw    $t3, 0x70($sp)
/* 0193B0 800187B0 AFA90038 */  sw    $t1, 0x38($sp)
/* 0193B4 800187B4 AFA7007C */  sw    $a3, 0x7c($sp)
/* 0193B8 800187B8 46021202 */  mul.s $f8, $f2, $f2
/* 0193BC 800187BC 46065100 */  add.s $f4, $f10, $f6
/* 0193C0 800187C0 AFA5004C */  sw    $a1, 0x4c($sp)
/* 0193C4 800187C4 AFA40048 */  sw    $a0, 0x48($sp)
/* 0193C8 800187C8 0C0326B4 */  jal   sqrtf
/* 0193CC 800187CC 46082300 */   add.s $f12, $f4, $f8
/* 0193D0 800187D0 44805800 */  mtc1  $zero, $f11
/* 0193D4 800187D4 44805000 */  mtc1  $zero, $f10
/* 0193D8 800187D8 460001A1 */  cvt.d.s $f6, $f0
/* 0193DC 800187DC 4626503C */  c.lt.d $f10, $f6
/* 0193E0 800187E0 8FA40048 */  lw    $a0, 0x48($sp)
/* 0193E4 800187E4 8FA5004C */  lw    $a1, 0x4c($sp)
/* 0193E8 800187E8 8FA7007C */  lw    $a3, 0x7c($sp)
/* 0193EC 800187EC 8FA80078 */  lw    $t0, 0x78($sp)
/* 0193F0 800187F0 8FA90038 */  lw    $t1, 0x38($sp)
/* 0193F4 800187F4 8FAB0070 */  lw    $t3, 0x70($sp)
/* 0193F8 800187F8 4500000C */  bc1f  .L8001882C
/* 0193FC 800187FC 240AFFFF */   li    $t2, -1
/* 019400 80018800 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 019404 80018804 44812000 */  mtc1  $at, $f4
/* 019408 80018808 C7A8006C */  lwc1  $f8, 0x6c($sp)
/* 01940C 8001880C 46002083 */  div.s $f2, $f4, $f0
/* 019410 80018810 C7A60064 */  lwc1  $f6, 0x64($sp)
/* 019414 80018814 46024282 */  mul.s $f10, $f8, $f2
/* 019418 80018818 00000000 */  nop   
/* 01941C 8001881C 4602A502 */  mul.s $f20, $f20, $f2
/* 019420 80018820 E7AA006C */  swc1  $f10, 0x6c($sp)
/* 019424 80018824 46023102 */  mul.s $f4, $f6, $f2
/* 019428 80018828 E7A40064 */  swc1  $f4, 0x64($sp)
.L8001882C:
/* 01942C 8001882C C4AE0000 */  lwc1  $f14, ($a1)
/* 019430 80018830 C4E0000C */  lwc1  $f0, 0xc($a3)
/* 019434 80018834 C4B00004 */  lwc1  $f16, 4($a1)
/* 019438 80018838 46007202 */  mul.s $f8, $f14, $f0
/* 01943C 8001883C C4E20010 */  lwc1  $f2, 0x10($a3)
/* 019440 80018840 C4B20008 */  lwc1  $f18, 8($a1)
/* 019444 80018844 C4EC0014 */  lwc1  $f12, 0x14($a3)
/* 019448 80018848 46028282 */  mul.s $f10, $f16, $f2
/* 01944C 8001884C 8FA6008C */  lw    $a2, 0x8c($sp)
/* 019450 80018850 460C9102 */  mul.s $f4, $f18, $f12
/* 019454 80018854 460A4180 */  add.s $f6, $f8, $f10
/* 019458 80018858 C4AA000C */  lwc1  $f10, 0xc($a1)
/* 01945C 8001885C 46043200 */  add.s $f8, $f6, $f4
/* 019460 80018860 C7A4006C */  lwc1  $f4, 0x6c($sp)
/* 019464 80018864 460A4180 */  add.s $f6, $f8, $f10
/* 019468 80018868 46047202 */  mul.s $f8, $f14, $f4
/* 01946C 8001886C E7A60058 */  swc1  $f6, 0x58($sp)
/* 019470 80018870 E7A60020 */  swc1  $f6, 0x20($sp)
/* 019474 80018874 46148282 */  mul.s $f10, $f16, $f20
/* 019478 80018878 460A4200 */  add.s $f8, $f8, $f10
/* 01947C 8001887C C7AA0064 */  lwc1  $f10, 0x64($sp)
/* 019480 80018880 00000000 */  nop   
/* 019484 80018884 460A9182 */  mul.s $f6, $f18, $f10
/* 019488 80018888 46064200 */  add.s $f8, $f8, $f6
/* 01948C 8001888C C7A60020 */  lwc1  $f6, 0x20($sp)
/* 019490 80018890 E7A8005C */  swc1  $f8, 0x5c($sp)
/* 019494 80018894 46003187 */  neg.s $f6, $f6
/* 019498 80018898 00000000 */  nop   
/* 01949C 8001889C 46083183 */  div.s $f6, $f6, $f8
/* 0194A0 800188A0 E7A6005C */  swc1  $f6, 0x5c($sp)
/* 0194A4 800188A4 C4880000 */  lwc1  $f8, ($a0)
/* 0194A8 800188A8 00000000 */  nop   
/* 0194AC 800188AC E7A8003C */  swc1  $f8, 0x3c($sp)
/* 0194B0 800188B0 C4880004 */  lwc1  $f8, 4($a0)
/* 0194B4 800188B4 00000000 */  nop   
/* 0194B8 800188B8 E7A80034 */  swc1  $f8, 0x34($sp)
/* 0194BC 800188BC C4880008 */  lwc1  $f8, 8($a0)
/* 0194C0 800188C0 E7A40020 */  swc1  $f4, 0x20($sp)
/* 0194C4 800188C4 E7A80030 */  swc1  $f8, 0x30($sp)
/* 0194C8 800188C8 C7A8003C */  lwc1  $f8, 0x3c($sp)
/* 0194CC 800188CC E7AA0024 */  swc1  $f10, 0x24($sp)
/* 0194D0 800188D0 46004102 */  mul.s $f4, $f8, $f0
/* 0194D4 800188D4 C7AA0034 */  lwc1  $f10, 0x34($sp)
/* 0194D8 800188D8 E7A60028 */  swc1  $f6, 0x28($sp)
/* 0194DC 800188DC E7A8002C */  swc1  $f8, 0x2c($sp)
/* 0194E0 800188E0 46025182 */  mul.s $f6, $f10, $f2
/* 0194E4 800188E4 46062100 */  add.s $f4, $f4, $f6
/* 0194E8 800188E8 C7A60030 */  lwc1  $f6, 0x30($sp)
/* 0194EC 800188EC 00000000 */  nop   
/* 0194F0 800188F0 460C3202 */  mul.s $f8, $f6, $f12
/* 0194F4 800188F4 C7AC0028 */  lwc1  $f12, 0x28($sp)
/* 0194F8 800188F8 46082100 */  add.s $f4, $f4, $f8
/* 0194FC 800188FC C488000C */  lwc1  $f8, 0xc($a0)
/* 019500 80018900 00000000 */  nop   
/* 019504 80018904 46082100 */  add.s $f4, $f4, $f8
/* 019508 80018908 C7A8002C */  lwc1  $f8, 0x2c($sp)
/* 01950C 8001890C E7AA002C */  swc1  $f10, 0x2c($sp)
/* 019510 80018910 C7AA0020 */  lwc1  $f10, 0x20($sp)
/* 019514 80018914 E7A40050 */  swc1  $f4, 0x50($sp)
/* 019518 80018918 460A4202 */  mul.s $f8, $f8, $f10
/* 01951C 8001891C C7AA002C */  lwc1  $f10, 0x2c($sp)
/* 019520 80018920 00000000 */  nop   
/* 019524 80018924 46145282 */  mul.s $f10, $f10, $f20
/* 019528 80018928 44805800 */  mtc1  $zero, $f11
/* 01952C 8001892C 460A4200 */  add.s $f8, $f8, $f10
/* 019530 80018930 C7AA0024 */  lwc1  $f10, 0x24($sp)
/* 019534 80018934 00000000 */  nop   
/* 019538 80018938 460A3182 */  mul.s $f6, $f6, $f10
/* 01953C 8001893C 44805000 */  mtc1  $zero, $f10
/* 019540 80018940 46064000 */  add.s $f0, $f8, $f6
/* 019544 80018944 00000000 */  nop   
/* 019548 80018948 46002003 */  div.s $f0, $f4, $f0
/* 01954C 8001894C 46006080 */  add.s $f2, $f12, $f0
/* 019550 80018950 46001221 */  cvt.d.s $f8, $f2
/* 019554 80018954 46285032 */  c.eq.d $f10, $f8
/* 019558 80018958 00000000 */  nop   
/* 01955C 8001895C 45010003 */  bc1t  .L8001896C
/* 019560 80018960 00000000 */   nop   
/* 019564 80018964 10000003 */  b     .L80018974
/* 019568 80018968 46026003 */   div.s $f0, $f12, $f2
.L8001896C:
/* 01956C 8001896C 44800000 */  mtc1  $zero, $f0
/* 019570 80018970 00000000 */  nop   
.L80018974:
/* 019574 80018974 E4C00000 */  swc1  $f0, ($a2)
/* 019578 80018978 84F90048 */  lh    $t9, 0x48($a3)
/* 01957C 8001897C 24030001 */  li    $v1, 1
/* 019580 80018980 14790019 */  bne   $v1, $t9, .L800189E8
/* 019584 80018984 00000000 */   nop   
/* 019588 80018988 8CE20064 */  lw    $v0, 0x64($a3)
/* 01958C 8001898C 3C01800E */  lui   $at, %hi(D_800E5624) # $at, 0x800e
/* 019590 80018990 844C0000 */  lh    $t4, ($v0)
/* 019594 80018994 00000000 */  nop   
/* 019598 80018998 154C0013 */  bne   $t2, $t4, .L800189E8
/* 01959C 8001899C 00000000 */   nop   
/* 0195A0 800189A0 C4275620 */  lwc1  $f7, %lo(D_800E5620)($at)
/* 0195A4 800189A4 C4265624 */  lwc1  $f6, %lo(D_800E5624)($at)
/* 0195A8 800189A8 460000A1 */  cvt.d.s $f2, $f0
/* 0195AC 800189AC 4626103C */  c.lt.d $f2, $f6
/* 0195B0 800189B0 3C01800E */  lui   $at, %hi(D_800E562C) # $at, 0x800e
/* 0195B4 800189B4 45000003 */  bc1f  .L800189C4
/* 0195B8 800189B8 00000000 */   nop   
/* 0195BC 800189BC 100000A6 */  b     .L80018C58
/* 0195C0 800189C0 2402FF9C */   li    $v0, -100
.L800189C4:
/* 0195C4 800189C4 C4255628 */  lwc1  $f5, %lo(D_800E5628)($at)
/* 0195C8 800189C8 C424562C */  lwc1  $f4, %lo(D_800E562C)($at)
/* 0195CC 800189CC 00000000 */  nop   
/* 0195D0 800189D0 4622203C */  c.lt.d $f4, $f2
/* 0195D4 800189D4 00000000 */  nop   
/* 0195D8 800189D8 45000003 */  bc1f  .L800189E8
/* 0195DC 800189DC 00000000 */   nop   
/* 0195E0 800189E0 1000009D */  b     .L80018C58
/* 0195E4 800189E4 2402FF9C */   li    $v0, -100
.L800189E8:
/* 0195E8 800189E8 44801000 */  mtc1  $zero, $f2
/* 0195EC 800189EC 3C0142C8 */  li    $at, 0x42C80000 # 100.000000
/* 0195F0 800189F0 4602603E */  c.le.s $f12, $f2
/* 0195F4 800189F4 00000000 */  nop   
/* 0195F8 800189F8 45000087 */  bc1f  .L80018C18
/* 0195FC 800189FC 00000000 */   nop   
/* 019600 80018A00 11600004 */  beqz  $t3, .L80018A14
/* 019604 80018A04 240D0001 */   li    $t5, 1
/* 019608 80018A08 8FAE0090 */  lw    $t6, 0x90($sp)
/* 01960C 80018A0C 10000006 */  b     .L80018A28
/* 019610 80018A10 A1CD0000 */   sb    $t5, ($t6)
.L80018A14:
/* 019614 80018A14 80AF003A */  lb    $t7, 0x3a($a1)
/* 019618 80018A18 8FB80090 */  lw    $t8, 0x90($sp)
/* 01961C 80018A1C 154F0002 */  bne   $t2, $t7, .L80018A28
/* 019620 80018A20 00000000 */   nop   
/* 019624 80018A24 A3000000 */  sb    $zero, ($t8)
.L80018A28:
/* 019628 80018A28 C4AA0000 */  lwc1  $f10, ($a1)
/* 01962C 80018A2C C7A80080 */  lwc1  $f8, 0x80($sp)
/* 019630 80018A30 C4A40004 */  lwc1  $f4, 4($a1)
/* 019634 80018A34 46085182 */  mul.s $f6, $f10, $f8
/* 019638 80018A38 C7AA0084 */  lwc1  $f10, 0x84($sp)
/* 01963C 80018A3C 00A02025 */  move  $a0, $a1
/* 019640 80018A40 3C0D8012 */  lui   $t5, %hi(D_8011AED0) # $t5, 0x8012
/* 019644 80018A44 460A2202 */  mul.s $f8, $f4, $f10
/* 019648 80018A48 C4AA0008 */  lwc1  $f10, 8($a1)
/* 01964C 80018A4C 3C0E8012 */  lui   $t6, %hi(D_8011AECC) # $t6, 0x8012
/* 019650 80018A50 46083100 */  add.s $f4, $f6, $f8
/* 019654 80018A54 C7A60088 */  lwc1  $f6, 0x88($sp)
/* 019658 80018A58 00000000 */  nop   
/* 01965C 80018A5C 46065202 */  mul.s $f8, $f10, $f6
/* 019660 80018A60 C4A6000C */  lwc1  $f6, 0xc($a1)
/* 019664 80018A64 46082280 */  add.s $f10, $f4, $f8
/* 019668 80018A68 46065500 */  add.s $f20, $f10, $f6
/* 01966C 80018A6C 4614103C */  c.lt.s $f2, $f20
/* 019670 80018A70 00000000 */  nop   
/* 019674 80018A74 45000065 */  bc1f  .L80018C0C
/* 019678 80018A78 00000000 */   nop   
/* 01967C 80018A7C 84F90048 */  lh    $t9, 0x48($a3)
/* 019680 80018A80 00000000 */  nop   
/* 019684 80018A84 14790007 */  bne   $v1, $t9, .L80018AA4
/* 019688 80018A88 00000000 */   nop   
/* 01968C 80018A8C 90A3003B */  lbu   $v1, 0x3b($a1)
/* 019690 80018A90 8CE20064 */  lw    $v0, 0x64($a3)
/* 019694 80018A94 10600003 */  beqz  $v1, .L80018AA4
/* 019698 80018A98 240C0078 */   li    $t4, 120
/* 01969C 80018A9C A04301F8 */  sb    $v1, 0x1f8($v0)
/* 0196A0 80018AA0 A04C01F9 */  sb    $t4, 0x1f9($v0)
.L80018AA4:
/* 0196A4 80018AA4 8DADAED0 */  lw    $t5, %lo(D_8011AED0)($t5)
/* 0196A8 80018AA8 25080001 */  addiu $t0, $t0, 1
/* 0196AC 80018AAC 150D0002 */  bne   $t0, $t5, .L80018AB8
/* 0196B0 80018AB0 2529003C */   addiu $t1, $t1, 0x3c
/* 0196B4 80018AB4 00004825 */  move  $t1, $zero
.L80018AB8:
/* 0196B8 80018AB8 8DCEAECC */  lw    $t6, %lo(D_8011AECC)($t6)
/* 0196BC 80018ABC C4E0000C */  lwc1  $f0, 0xc($a3)
/* 0196C0 80018AC0 012E2821 */  addu  $a1, $t1, $t6
/* 0196C4 80018AC4 C4AE0000 */  lwc1  $f14, ($a1)
/* 0196C8 80018AC8 C4B00004 */  lwc1  $f16, 4($a1)
/* 0196CC 80018ACC 46007102 */  mul.s $f4, $f14, $f0
/* 0196D0 80018AD0 C4E20010 */  lwc1  $f2, 0x10($a3)
/* 0196D4 80018AD4 C4B20008 */  lwc1  $f18, 8($a1)
/* 0196D8 80018AD8 C4EC0014 */  lwc1  $f12, 0x14($a3)
/* 0196DC 80018ADC 46028202 */  mul.s $f8, $f16, $f2
/* 0196E0 80018AE0 00001025 */  move  $v0, $zero
/* 0196E4 80018AE4 460C9182 */  mul.s $f6, $f18, $f12
/* 0196E8 80018AE8 46082280 */  add.s $f10, $f4, $f8
/* 0196EC 80018AEC C4A8000C */  lwc1  $f8, 0xc($a1)
/* 0196F0 80018AF0 46065100 */  add.s $f4, $f10, $f6
/* 0196F4 80018AF4 C7A6006C */  lwc1  $f6, 0x6c($sp)
/* 0196F8 80018AF8 46082280 */  add.s $f10, $f4, $f8
/* 0196FC 80018AFC 46067102 */  mul.s $f4, $f14, $f6
/* 019700 80018B00 E7AA0058 */  swc1  $f10, 0x58($sp)
/* 019704 80018B04 E7AA002C */  swc1  $f10, 0x2c($sp)
/* 019708 80018B08 46148202 */  mul.s $f8, $f16, $f20
/* 01970C 80018B0C 46082100 */  add.s $f4, $f4, $f8
/* 019710 80018B10 C7A80064 */  lwc1  $f8, 0x64($sp)
/* 019714 80018B14 00000000 */  nop   
/* 019718 80018B18 46089282 */  mul.s $f10, $f18, $f8
/* 01971C 80018B1C 460A2100 */  add.s $f4, $f4, $f10
/* 019720 80018B20 C7AA002C */  lwc1  $f10, 0x2c($sp)
/* 019724 80018B24 E7A4005C */  swc1  $f4, 0x5c($sp)
/* 019728 80018B28 46005287 */  neg.s $f10, $f10
/* 01972C 80018B2C 00000000 */  nop   
/* 019730 80018B30 46045283 */  div.s $f10, $f10, $f4
/* 019734 80018B34 E7AA005C */  swc1  $f10, 0x5c($sp)
/* 019738 80018B38 C4840000 */  lwc1  $f4, ($a0)
/* 01973C 80018B3C 00000000 */  nop   
/* 019740 80018B40 E7A4003C */  swc1  $f4, 0x3c($sp)
/* 019744 80018B44 C4840004 */  lwc1  $f4, 4($a0)
/* 019748 80018B48 00000000 */  nop   
/* 01974C 80018B4C E7A40034 */  swc1  $f4, 0x34($sp)
/* 019750 80018B50 C4840008 */  lwc1  $f4, 8($a0)
/* 019754 80018B54 E7A6002C */  swc1  $f6, 0x2c($sp)
/* 019758 80018B58 E7A40030 */  swc1  $f4, 0x30($sp)
/* 01975C 80018B5C C7A4003C */  lwc1  $f4, 0x3c($sp)
/* 019760 80018B60 E7A80028 */  swc1  $f8, 0x28($sp)
/* 019764 80018B64 46002182 */  mul.s $f6, $f4, $f0
/* 019768 80018B68 C7A80034 */  lwc1  $f8, 0x34($sp)
/* 01976C 80018B6C E7AA0024 */  swc1  $f10, 0x24($sp)
/* 019770 80018B70 E7A40020 */  swc1  $f4, 0x20($sp)
/* 019774 80018B74 46024282 */  mul.s $f10, $f8, $f2
/* 019778 80018B78 460A3180 */  add.s $f6, $f6, $f10
/* 01977C 80018B7C C7AA0030 */  lwc1  $f10, 0x30($sp)
/* 019780 80018B80 00000000 */  nop   
/* 019784 80018B84 460C5102 */  mul.s $f4, $f10, $f12
/* 019788 80018B88 C7AC0024 */  lwc1  $f12, 0x24($sp)
/* 01978C 80018B8C 46043180 */  add.s $f6, $f6, $f4
/* 019790 80018B90 C484000C */  lwc1  $f4, 0xc($a0)
/* 019794 80018B94 E7A80024 */  swc1  $f8, 0x24($sp)
/* 019798 80018B98 46043180 */  add.s $f6, $f6, $f4
/* 01979C 80018B9C C7A40020 */  lwc1  $f4, 0x20($sp)
/* 0197A0 80018BA0 C7A8002C */  lwc1  $f8, 0x2c($sp)
/* 0197A4 80018BA4 E7A60050 */  swc1  $f6, 0x50($sp)
/* 0197A8 80018BA8 46082102 */  mul.s $f4, $f4, $f8
/* 0197AC 80018BAC C7A80024 */  lwc1  $f8, 0x24($sp)
/* 0197B0 80018BB0 00000000 */  nop   
/* 0197B4 80018BB4 46144202 */  mul.s $f8, $f8, $f20
/* 0197B8 80018BB8 44804800 */  mtc1  $zero, $f9
/* 0197BC 80018BBC 46082100 */  add.s $f4, $f4, $f8
/* 0197C0 80018BC0 C7A80028 */  lwc1  $f8, 0x28($sp)
/* 0197C4 80018BC4 00000000 */  nop   
/* 0197C8 80018BC8 46085282 */  mul.s $f10, $f10, $f8
/* 0197CC 80018BCC 44804000 */  mtc1  $zero, $f8
/* 0197D0 80018BD0 460A2000 */  add.s $f0, $f4, $f10
/* 0197D4 80018BD4 00000000 */  nop   
/* 0197D8 80018BD8 46003003 */  div.s $f0, $f6, $f0
/* 0197DC 80018BDC 46006080 */  add.s $f2, $f12, $f0
/* 0197E0 80018BE0 46001121 */  cvt.d.s $f4, $f2
/* 0197E4 80018BE4 46244032 */  c.eq.d $f8, $f4
/* 0197E8 80018BE8 00000000 */  nop   
/* 0197EC 80018BEC 45010003 */  bc1t  .L80018BFC
/* 0197F0 80018BF0 00000000 */   nop   
/* 0197F4 80018BF4 10000003 */  b     .L80018C04
/* 0197F8 80018BF8 46026003 */   div.s $f0, $f12, $f2
.L80018BFC:
/* 0197FC 80018BFC 44800000 */  mtc1  $zero, $f0
/* 019800 80018C00 00000000 */  nop   
.L80018C04:
/* 019804 80018C04 10000014 */  b     .L80018C58
/* 019808 80018C08 E4C00000 */   swc1  $f0, ($a2)
.L80018C0C:
/* 01980C 80018C0C E4C20000 */  swc1  $f2, ($a2)
/* 019810 80018C10 10000011 */  b     .L80018C58
/* 019814 80018C14 00001025 */   move  $v0, $zero
.L80018C18:
/* 019818 80018C18 44815000 */  mtc1  $at, $f10
/* 01981C 80018C1C 00000000 */  nop   
/* 019820 80018C20 460A0182 */  mul.s $f6, $f0, $f10
/* 019824 80018C24 444FF800 */  cfc1  $t7, $31
/* 019828 80018C28 00000000 */  nop   
/* 01982C 80018C2C 35E10003 */  ori   $at, $t7, 3
/* 019830 80018C30 38210002 */  xori  $at, $at, 2
/* 019834 80018C34 44C1F800 */  ctc1  $at, $31
/* 019838 80018C38 00000000 */  nop   
/* 01983C 80018C3C 46003224 */  cvt.w.s $f8, $f6
/* 019840 80018C40 44024000 */  mfc1  $v0, $f8
/* 019844 80018C44 44CFF800 */  ctc1  $t7, $31
/* 019848 80018C48 14400002 */  bnez  $v0, .L80018C54
/* 01984C 80018C4C 00401825 */   move  $v1, $v0
/* 019850 80018C50 24430001 */  addiu $v1, $v0, 1
.L80018C54:
/* 019854 80018C54 00601025 */  move  $v0, $v1
.L80018C58:
/* 019858 80018C58 8FBF001C */  lw    $ra, 0x1c($sp)
/* 01985C 80018C5C C7B50010 */  lwc1  $f21, 0x10($sp)
/* 019860 80018C60 C7B40014 */  lwc1  $f20, 0x14($sp)
/* 019864 80018C64 03E00008 */  jr    $ra
/* 019868 80018C68 27BD0078 */   addiu $sp, $sp, 0x78

