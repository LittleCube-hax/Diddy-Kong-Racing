glabel func_8001D4B4
/* 01E0B4 8001D4B4 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 01E0B8 8001D4B8 AFBF0014 */  sw    $ra, 0x14($sp)
/* 01E0BC 8001D4BC AFA40030 */  sw    $a0, 0x30($sp)
/* 01E0C0 8001D4C0 AFA7003C */  sw    $a3, 0x3c($sp)
/* 01E0C4 8001D4C4 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 01E0C8 8001D4C8 44856000 */  mtc1  $a1, $f12
/* 01E0CC 8001D4CC 44867000 */  mtc1  $a2, $f14
/* 01E0D0 8001D4D0 44812000 */  mtc1  $at, $f4
/* 01E0D4 8001D4D4 A4870022 */  sh    $a3, 0x22($a0)
/* 01E0D8 8001D4D8 E48C0028 */  swc1  $f12, 0x28($a0)
/* 01E0DC 8001D4DC E48E002C */  swc1  $f14, 0x2c($a0)
/* 01E0E0 8001D4E0 E4840000 */  swc1  $f4, ($a0)
/* 01E0E4 8001D4E4 87B80042 */  lh    $t8, 0x42($sp)
/* 01E0E8 8001D4E8 44800000 */  mtc1  $zero, $f0
/* 01E0EC 8001D4EC A4980024 */  sh    $t8, 0x24($a0)
/* 01E0F0 8001D4F0 87B90046 */  lh    $t9, 0x46($sp)
/* 01E0F4 8001D4F4 3C01C680 */  li    $at, 0xC6800000 # -16384.000000
/* 01E0F8 8001D4F8 A4990026 */  sh    $t9, 0x26($a0)
/* 01E0FC 8001D4FC 87A80046 */  lh    $t0, 0x46($sp)
/* 01E100 8001D500 87A90042 */  lh    $t1, 0x42($sp)
/* 01E104 8001D504 44813000 */  mtc1  $at, $f6
/* 01E108 8001D508 00803025 */  move  $a2, $a0
/* 01E10C 8001D50C A7A7002C */  sh    $a3, 0x2c($sp)
/* 01E110 8001D510 AFA60030 */  sw    $a2, 0x30($sp)
/* 01E114 8001D514 27A40028 */  addiu $a0, $sp, 0x28
/* 01E118 8001D518 27A5001C */  addiu $a1, $sp, 0x1c
/* 01E11C 8001D51C E7A0001C */  swc1  $f0, 0x1c($sp)
/* 01E120 8001D520 E7A00020 */  swc1  $f0, 0x20($sp)
/* 01E124 8001D524 A7A80028 */  sh    $t0, 0x28($sp)
/* 01E128 8001D528 A7A9002A */  sh    $t1, 0x2a($sp)
/* 01E12C 8001D52C 0C01C0C8 */  jal   f32_vec3_apply_object_rotation
/* 01E130 8001D530 E7A60024 */   swc1  $f6, 0x24($sp)
/* 01E134 8001D534 C7A8001C */  lwc1  $f8, 0x1c($sp)
/* 01E138 8001D538 8FA60030 */  lw    $a2, 0x30($sp)
/* 01E13C 8001D53C 46004287 */  neg.s $f10, $f8
/* 01E140 8001D540 444AF800 */  cfc1  $t2, $31
/* 01E144 8001D544 00000000 */  nop   
/* 01E148 8001D548 35410003 */  ori   $at, $t2, 3
/* 01E14C 8001D54C 38210002 */  xori  $at, $at, 2
/* 01E150 8001D550 44C1F800 */  ctc1  $at, $31
/* 01E154 8001D554 00000000 */  nop   
/* 01E158 8001D558 46005424 */  cvt.w.s $f16, $f10
/* 01E15C 8001D55C 440B8000 */  mfc1  $t3, $f16
/* 01E160 8001D560 44CAF800 */  ctc1  $t2, $31
/* 01E164 8001D564 A4CB001C */  sh    $t3, 0x1c($a2)
/* 01E168 8001D568 C7B20020 */  lwc1  $f18, 0x20($sp)
/* 01E16C 8001D56C 00000000 */  nop   
/* 01E170 8001D570 46009107 */  neg.s $f4, $f18
/* 01E174 8001D574 444CF800 */  cfc1  $t4, $31
/* 01E178 8001D578 00000000 */  nop   
/* 01E17C 8001D57C 35810003 */  ori   $at, $t4, 3
/* 01E180 8001D580 38210002 */  xori  $at, $at, 2
/* 01E184 8001D584 44C1F800 */  ctc1  $at, $31
/* 01E188 8001D588 00000000 */  nop   
/* 01E18C 8001D58C 460021A4 */  cvt.w.s $f6, $f4
/* 01E190 8001D590 440D3000 */  mfc1  $t5, $f6
/* 01E194 8001D594 44CCF800 */  ctc1  $t4, $31
/* 01E198 8001D598 A4CD001E */  sh    $t5, 0x1e($a2)
/* 01E19C 8001D59C C7A80024 */  lwc1  $f8, 0x24($sp)
/* 01E1A0 8001D5A0 A0C00018 */  sb    $zero, 0x18($a2)
/* 01E1A4 8001D5A4 46004287 */  neg.s $f10, $f8
/* 01E1A8 8001D5A8 444EF800 */  cfc1  $t6, $31
/* 01E1AC 8001D5AC A0C00019 */  sb    $zero, 0x19($a2)
/* 01E1B0 8001D5B0 35C10003 */  ori   $at, $t6, 3
/* 01E1B4 8001D5B4 38210002 */  xori  $at, $at, 2
/* 01E1B8 8001D5B8 44C1F800 */  ctc1  $at, $31
/* 01E1BC 8001D5BC A0C0001A */  sb    $zero, 0x1a($a2)
/* 01E1C0 8001D5C0 46005424 */  cvt.w.s $f16, $f10
/* 01E1C4 8001D5C4 440F8000 */  mfc1  $t7, $f16
/* 01E1C8 8001D5C8 44CEF800 */  ctc1  $t6, $31
/* 01E1CC 8001D5CC A4CF0020 */  sh    $t7, 0x20($a2)
/* 01E1D0 8001D5D0 8FBF0014 */  lw    $ra, 0x14($sp)
/* 01E1D4 8001D5D4 27BD0030 */  addiu $sp, $sp, 0x30
/* 01E1D8 8001D5D8 03E00008 */  jr    $ra
/* 01E1DC 8001D5DC 00000000 */   nop   

