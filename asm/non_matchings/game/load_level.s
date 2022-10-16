glabel load_level
/* 06BE50 8006B250 27BDFFA0 */  addiu $sp, $sp, -0x60
/* 06BE54 8006B254 AFBF002C */  sw    $ra, 0x2c($sp)
/* 06BE58 8006B258 AFB10028 */  sw    $s1, 0x28($sp)
/* 06BE5C 8006B25C AFB00024 */  sw    $s0, 0x24($sp)
/* 06BE60 8006B260 AFA40060 */  sw    $a0, 0x60($sp)
/* 06BE64 8006B264 AFA50064 */  sw    $a1, 0x64($sp)
/* 06BE68 8006B268 AFA60068 */  sw    $a2, 0x68($sp)
/* 06BE6C 8006B26C 0C01C9C2 */  jal   func_80072708
/* 06BE70 8006B270 AFA7006C */   sw    $a3, 0x6c($sp)
/* 06BE74 8006B274 8FAE0070 */  lw    $t6, 0x70($sp)
/* 06BE78 8006B278 2402FFFF */  li    $v0, -1
/* 06BE7C 8006B27C 15C20003 */  bne   $t6, $v0, .L8006B28C
/* 06BE80 8006B280 8FAF0064 */   lw    $t7, 0x64($sp)
/* 06BE84 8006B284 AFA00070 */  sw    $zero, 0x70($sp)
/* 06BE88 8006B288 8FAF0064 */  lw    $t7, 0x64($sp)
.L8006B28C:
/* 06BE8C 8006B28C 00000000 */  nop   
/* 06BE90 8006B290 15E20004 */  bne   $t7, $v0, .L8006B2A4
/* 06BE94 8006B294 24180001 */   li    $t8, 1
/* 06BE98 8006B298 AFB80048 */  sw    $t8, 0x48($sp)
/* 06BE9C 8006B29C 10000002 */  b     .L8006B2A8
/* 06BEA0 8006B2A0 AFA00064 */   sw    $zero, 0x64($sp)
.L8006B2A4:
/* 06BEA4 8006B2A4 AFA00048 */  sw    $zero, 0x48($sp)
.L8006B2A8:
/* 06BEA8 8006B2A8 8FB90064 */  lw    $t9, 0x64($sp)
/* 06BEAC 8006B2AC 00000000 */  nop   
/* 06BEB0 8006B2B0 17200006 */  bnez  $t9, .L8006B2CC
/* 06BEB4 8006B2B4 8FAA0064 */   lw    $t2, 0x64($sp)
/* 06BEB8 8006B2B8 0C000C63 */  jal   set_sound_channel_count
/* 06BEBC 8006B2BC 24040008 */   li    $a0, 8
/* 06BEC0 8006B2C0 1000000B */  b     .L8006B2F0
/* 06BEC4 8006B2C4 00000000 */   nop   
/* 06BEC8 8006B2C8 8FAA0064 */  lw    $t2, 0x64($sp)
.L8006B2CC:
/* 06BECC 8006B2CC 24010001 */  li    $at, 1
/* 06BED0 8006B2D0 15410005 */  bne   $t2, $at, .L8006B2E8
/* 06BED4 8006B2D4 00000000 */   nop   
/* 06BED8 8006B2D8 0C000C63 */  jal   set_sound_channel_count
/* 06BEDC 8006B2DC 2404000C */   li    $a0, 12
/* 06BEE0 8006B2E0 10000003 */  b     .L8006B2F0
/* 06BEE4 8006B2E4 00000000 */   nop   
.L8006B2E8:
/* 06BEE8 8006B2E8 0C000C63 */  jal   set_sound_channel_count
/* 06BEEC 8006B2EC 24040010 */   li    $a0, 16
.L8006B2F0:
/* 06BEF0 8006B2F0 0C01BAA4 */  jal   get_settings
/* 06BEF4 8006B2F4 00000000 */   nop   
/* 06BEF8 8006B2F8 AFA20040 */  sw    $v0, 0x40($sp)
/* 06BEFC 8006B2FC 0C01DB16 */  jal   load_asset_section_from_rom
/* 06BF00 8006B300 24040016 */   li    $a0, 22
/* 06BF04 8006B304 3C098012 */  lui   $t1, %hi(gTempAssetTable) # $t1, 0x8012
/* 06BF08 8006B308 25291160 */  addiu $t1, %lo(gTempAssetTable) # addiu $t1, $t1, 0x1160
/* 06BF0C 8006B30C AD220000 */  sw    $v0, ($t1)
/* 06BF10 8006B310 8C4B0000 */  lw    $t3, ($v0)
/* 06BF14 8006B314 2408FFFF */  li    $t0, -1
/* 06BF18 8006B318 00001825 */  move  $v1, $zero
/* 06BF1C 8006B31C 110B0005 */  beq   $t0, $t3, .L8006B334
/* 06BF20 8006B320 00403025 */   move  $a2, $v0
.L8006B324:
/* 06BF24 8006B324 8C4C0004 */  lw    $t4, 4($v0)
/* 06BF28 8006B328 24630001 */  addiu $v1, $v1, 1
/* 06BF2C 8006B32C 150CFFFD */  bne   $t0, $t4, .L8006B324
/* 06BF30 8006B330 24420004 */   addiu $v0, $v0, 4
.L8006B334:
/* 06BF34 8006B334 8FAD0060 */  lw    $t5, 0x60($sp)
/* 06BF38 8006B338 2463FFFF */  addiu $v1, $v1, -1
/* 06BF3C 8006B33C 01A3082A */  slt   $at, $t5, $v1
/* 06BF40 8006B340 14200002 */  bnez  $at, .L8006B34C
/* 06BF44 8006B344 3C05FFFF */   lui   $a1, (0xFFFF00FF >> 16) # lui $a1, 0xffff
/* 06BF48 8006B348 AFA00060 */  sw    $zero, 0x60($sp)
.L8006B34C:
/* 06BF4C 8006B34C 8FA30060 */  lw    $v1, 0x60($sp)
/* 06BF50 8006B350 34A500FF */  ori   $a1, (0xFFFF00FF & 0xFFFF) # ori $a1, $a1, 0xff
/* 06BF54 8006B354 00037080 */  sll   $t6, $v1, 2
/* 06BF58 8006B358 00CE1021 */  addu  $v0, $a2, $t6
/* 06BF5C 8006B35C 8C500000 */  lw    $s0, ($v0)
/* 06BF60 8006B360 8C4F0004 */  lw    $t7, 4($v0)
/* 06BF64 8006B364 AFAE0034 */  sw    $t6, 0x34($sp)
/* 06BF68 8006B368 01F02023 */  subu  $a0, $t7, $s0
/* 06BF6C 8006B36C 0C01C327 */  jal   allocate_from_main_pool_safe
/* 06BF70 8006B370 AFA40054 */   sw    $a0, 0x54($sp)
/* 06BF74 8006B374 3C118012 */  lui   $s1, %hi(gCurrentLevelHeader) # $s1, 0x8012
/* 06BF78 8006B378 26311168 */  addiu $s1, %lo(gCurrentLevelHeader) # addiu $s1, $s1, 0x1168
/* 06BF7C 8006B37C 8FA70054 */  lw    $a3, 0x54($sp)
/* 06BF80 8006B380 AE220000 */  sw    $v0, ($s1)
/* 06BF84 8006B384 24040017 */  li    $a0, 23
/* 06BF88 8006B388 00402825 */  move  $a1, $v0
/* 06BF8C 8006B38C 0C01DB9A */  jal   load_asset_to_address
/* 06BF90 8006B390 02003025 */   move  $a2, $s0
/* 06BF94 8006B394 3C01800E */  lui   $at, %hi(D_800DD330) # $at, 0x800e
/* 06BF98 8006B398 8FB80060 */  lw    $t8, 0x60($sp)
/* 06BF9C 8006B39C A020D330 */  sb    $zero, %lo(D_800DD330)($at)
/* 06BFA0 8006B3A0 8E390000 */  lw    $t9, ($s1)
/* 06BFA4 8006B3A4 AFB80044 */  sw    $t8, 0x44($sp)
/* 06BFA8 8006B3A8 832A004C */  lb    $t2, 0x4c($t9)
/* 06BFAC 8006B3AC 00000000 */  nop   
/* 06BFB0 8006B3B0 15400003 */  bnez  $t2, .L8006B3C0
/* 06BFB4 8006B3B4 00000000 */   nop   
/* 06BFB8 8006B3B8 0C01B0B9 */  jal   func_8006C2E4
/* 06BFBC 8006B3BC 00000000 */   nop   
.L8006B3C0:
/* 06BFC0 8006B3C0 0C01B0BC */  jal   func_8006C2F0
/* 06BFC4 8006B3C4 00000000 */   nop   
/* 06BFC8 8006B3C8 14400099 */  bnez  $v0, .L8006B630
/* 06BFCC 8006B3CC 3C0B800E */   lui   $t3, %hi(D_800DD32C) # $t3, 0x800e
/* 06BFD0 8006B3D0 856BD32C */  lh    $t3, %lo(D_800DD32C)($t3)
/* 06BFD4 8006B3D4 00000000 */  nop   
/* 06BFD8 8006B3D8 15600096 */  bnez  $t3, .L8006B634
/* 06BFDC 8006B3DC 8FAE0044 */   lw    $t6, 0x44($sp)
/* 06BFE0 8006B3E0 8E230000 */  lw    $v1, ($s1)
/* 06BFE4 8006B3E4 24010008 */  li    $at, 8
/* 06BFE8 8006B3E8 806C004C */  lb    $t4, 0x4c($v1)
/* 06BFEC 8006B3EC 8FAD0040 */  lw    $t5, 0x40($sp)
/* 06BFF0 8006B3F0 1581003E */  bne   $t4, $at, .L8006B4EC
/* 06BFF4 8006B3F4 00000000 */   nop   
/* 06BFF8 8006B3F8 8DAE0004 */  lw    $t6, 4($t5)
/* 06BFFC 8006B3FC 8FAF0034 */  lw    $t7, 0x34($sp)
/* 06C000 8006B400 80640000 */  lb    $a0, ($v1)
/* 06C004 8006B404 01CFC021 */  addu  $t8, $t6, $t7
/* 06C008 8006B408 8F100000 */  lw    $s0, ($t8)
/* 06C00C 8006B40C 10800004 */  beqz  $a0, .L8006B420
/* 06C010 8006B410 00001025 */   move  $v0, $zero
/* 06C014 8006B414 24010005 */  li    $at, 5
/* 06C018 8006B418 14810003 */  bne   $a0, $at, .L8006B428
/* 06C01C 8006B41C 32030001 */   andi  $v1, $s0, 1
.L8006B420:
/* 06C020 8006B420 24020001 */  li    $v0, 1
/* 06C024 8006B424 32030001 */  andi  $v1, $s0, 1
.L8006B428:
/* 06C028 8006B428 10600004 */  beqz  $v1, .L8006B43C
/* 06C02C 8006B42C 8FA40060 */   lw    $a0, 0x60($sp)
/* 06C030 8006B430 1040002E */  beqz  $v0, .L8006B4EC
/* 06C034 8006B434 00000000 */   nop   
/* 06C038 8006B438 8FA40060 */  lw    $a0, 0x60($sp)
.L8006B43C:
/* 06C03C 8006B43C 8FA50068 */  lw    $a1, 0x68($sp)
/* 06C040 8006B440 8FA6006C */  lw    $a2, 0x6c($sp)
/* 06C044 8006B444 8FA70070 */  lw    $a3, 0x70($sp)
/* 06C048 8006B448 AFA2004C */  sw    $v0, 0x4c($sp)
/* 06C04C 8006B44C 0C01B06B */  jal   func_8006C1AC
/* 06C050 8006B450 AFA30038 */   sw    $v1, 0x38($sp)
/* 06C054 8006B454 8FA50040 */  lw    $a1, 0x40($sp)
/* 06C058 8006B458 240B0001 */  li    $t3, 1
/* 06C05C 8006B45C 90AA0048 */  lbu   $t2, 0x48($a1)
/* 06C060 8006B460 94B9000C */  lhu   $t9, 0xc($a1)
/* 06C064 8006B464 014B6004 */  sllv  $t4, $t3, $t2
/* 06C068 8006B468 8FA2004C */  lw    $v0, 0x4c($sp)
/* 06C06C 8006B46C 8FA30038 */  lw    $v1, 0x38($sp)
/* 06C070 8006B470 032C6824 */  and   $t5, $t9, $t4
/* 06C074 8006B474 11A00004 */  beqz  $t5, .L8006B488
/* 06C078 8006B478 240F0003 */   li    $t7, 3
/* 06C07C 8006B47C 240E0007 */  li    $t6, 7
/* 06C080 8006B480 10000002 */  b     .L8006B48C
/* 06C084 8006B484 AFAE0070 */   sw    $t6, 0x70($sp)
.L8006B488:
/* 06C088 8006B488 AFAF0070 */  sw    $t7, 0x70($sp)
.L8006B48C:
/* 06C08C 8006B48C 10400006 */  beqz  $v0, .L8006B4A8
/* 06C090 8006B490 00000000 */   nop   
/* 06C094 8006B494 10600004 */  beqz  $v1, .L8006B4A8
/* 06C098 8006B498 AFA00070 */   sw    $zero, 0x70($sp)
/* 06C09C 8006B49C 24180002 */  li    $t8, 2
/* 06C0A0 8006B4A0 3C01800E */  lui   $at, %hi(D_800DD330) # $at, 0x800e
/* 06C0A4 8006B4A4 A038D330 */  sb    $t8, %lo(D_800DD330)($at)
.L8006B4A8:
/* 06C0A8 8006B4A8 0C0078A7 */  jal   get_misc_asset
/* 06C0AC 8006B4AC 24040043 */   li    $a0, 67
/* 06C0B0 8006B4B0 8FA50060 */  lw    $a1, 0x60($sp)
/* 06C0B4 8006B4B4 804B0000 */  lb    $t3, ($v0)
/* 06C0B8 8006B4B8 00402025 */  move  $a0, $v0
/* 06C0BC 8006B4BC 10AB0006 */  beq   $a1, $t3, .L8006B4D8
/* 06C0C0 8006B4C0 00008025 */   move  $s0, $zero
/* 06C0C4 8006B4C4 00801825 */  move  $v1, $a0
.L8006B4C8:
/* 06C0C8 8006B4C8 806A0002 */  lb    $t2, 2($v1)
/* 06C0CC 8006B4CC 26100002 */  addiu $s0, $s0, 2
/* 06C0D0 8006B4D0 14AAFFFD */  bne   $a1, $t2, .L8006B4C8
/* 06C0D4 8006B4D4 24630002 */   addiu $v1, $v1, 2
.L8006B4D8:
/* 06C0D8 8006B4D8 0202C821 */  addu  $t9, $s0, $v0
/* 06C0DC 8006B4DC 832C0001 */  lb    $t4, 1($t9)
/* 06C0E0 8006B4E0 8FAD0070 */  lw    $t5, 0x70($sp)
/* 06C0E4 8006B4E4 AFAC0060 */  sw    $t4, 0x60($sp)
/* 06C0E8 8006B4E8 AFAD0068 */  sw    $t5, 0x68($sp)
.L8006B4EC:
/* 06C0EC 8006B4EC 8E230000 */  lw    $v1, ($s1)
/* 06C0F0 8006B4F0 24010005 */  li    $at, 5
/* 06C0F4 8006B4F4 8065004C */  lb    $a1, 0x4c($v1)
/* 06C0F8 8006B4F8 00000000 */  nop   
/* 06C0FC 8006B4FC 14A1002C */  bne   $a1, $at, .L8006B5B0
/* 06C100 8006B500 24010005 */   li    $at, 5
/* 06C104 8006B504 80640000 */  lb    $a0, ($v1)
/* 06C108 8006B508 00000000 */  nop   
/* 06C10C 8006B50C 18800027 */  blez  $a0, .L8006B5AC
/* 06C110 8006B510 28810005 */   slti  $at, $a0, 5
/* 06C114 8006B514 10200026 */  beqz  $at, .L8006B5B0
/* 06C118 8006B518 24010005 */   li    $at, 5
/* 06C11C 8006B51C 8FAE0040 */  lw    $t6, 0x40($sp)
/* 06C120 8006B520 24180001 */  li    $t8, 1
/* 06C124 8006B524 95CF0008 */  lhu   $t7, 8($t6)
/* 06C128 8006B528 00985804 */  sllv  $t3, $t8, $a0
/* 06C12C 8006B52C 01EB5024 */  and   $t2, $t7, $t3
/* 06C130 8006B530 1140001E */  beqz  $t2, .L8006B5AC
/* 06C134 8006B534 00808025 */   move  $s0, $a0
/* 06C138 8006B538 8DCD0010 */  lw    $t5, 0x10($t6)
/* 06C13C 8006B53C 2499001F */  addiu $t9, $a0, 0x1f
/* 06C140 8006B540 240C4000 */  li    $t4, 16384
/* 06C144 8006B544 032C1004 */  sllv  $v0, $t4, $t9
/* 06C148 8006B548 01A2C024 */  and   $t8, $t5, $v0
/* 06C14C 8006B54C 17000018 */  bnez  $t8, .L8006B5B0
/* 06C150 8006B550 24010005 */   li    $at, 5
/* 06C154 8006B554 8FA40060 */  lw    $a0, 0x60($sp)
/* 06C158 8006B558 8FA50068 */  lw    $a1, 0x68($sp)
/* 06C15C 8006B55C 8FA6006C */  lw    $a2, 0x6c($sp)
/* 06C160 8006B560 8FA70070 */  lw    $a3, 0x70($sp)
/* 06C164 8006B564 0C01B06B */  jal   func_8006C1AC
/* 06C168 8006B568 AFA20030 */   sw    $v0, 0x30($sp)
/* 06C16C 8006B56C 8FA30040 */  lw    $v1, 0x40($sp)
/* 06C170 8006B570 8FA20030 */  lw    $v0, 0x30($sp)
/* 06C174 8006B574 8C6F0010 */  lw    $t7, 0x10($v1)
/* 06C178 8006B578 24040044 */  li    $a0, 68
/* 06C17C 8006B57C 01E25825 */  or    $t3, $t7, $v0
/* 06C180 8006B580 0C0078A7 */  jal   get_misc_asset
/* 06C184 8006B584 AC6B0010 */   sw    $t3, 0x10($v1)
/* 06C188 8006B588 02025021 */  addu  $t2, $s0, $v0
/* 06C18C 8006B58C 814CFFFF */  lb    $t4, -1($t2)
/* 06C190 8006B590 8E230000 */  lw    $v1, ($s1)
/* 06C194 8006B594 24190005 */  li    $t9, 5
/* 06C198 8006B598 AFA00068 */  sw    $zero, 0x68($sp)
/* 06C19C 8006B59C AFB90070 */  sw    $t9, 0x70($sp)
/* 06C1A0 8006B5A0 AFAC0060 */  sw    $t4, 0x60($sp)
/* 06C1A4 8006B5A4 8065004C */  lb    $a1, 0x4c($v1)
/* 06C1A8 8006B5A8 00000000 */  nop   
.L8006B5AC:
/* 06C1AC 8006B5AC 24010005 */  li    $at, 5
.L8006B5B0:
/* 06C1B0 8006B5B0 14A10020 */  bne   $a1, $at, .L8006B634
/* 06C1B4 8006B5B4 8FAE0044 */   lw    $t6, 0x44($sp)
/* 06C1B8 8006B5B8 806E0000 */  lb    $t6, ($v1)
/* 06C1BC 8006B5BC 8FAD0040 */  lw    $t5, 0x40($sp)
/* 06C1C0 8006B5C0 15C0001C */  bnez  $t6, .L8006B634
/* 06C1C4 8006B5C4 8FAE0044 */   lw    $t6, 0x44($sp)
/* 06C1C8 8006B5C8 8DB80010 */  lw    $t8, 0x10($t5)
/* 06C1CC 8006B5CC 00000000 */  nop   
/* 06C1D0 8006B5D0 330F2000 */  andi  $t7, $t8, 0x2000
/* 06C1D4 8006B5D4 15E00017 */  bnez  $t7, .L8006B634
/* 06C1D8 8006B5D8 8FAE0044 */   lw    $t6, 0x44($sp)
/* 06C1DC 8006B5DC 91AB0017 */  lbu   $t3, 0x17($t5)
/* 06C1E0 8006B5E0 8FA40060 */  lw    $a0, 0x60($sp)
/* 06C1E4 8006B5E4 29610004 */  slti  $at, $t3, 4
/* 06C1E8 8006B5E8 14200012 */  bnez  $at, .L8006B634
/* 06C1EC 8006B5EC 8FAE0044 */   lw    $t6, 0x44($sp)
/* 06C1F0 8006B5F0 8FA50068 */  lw    $a1, 0x68($sp)
/* 06C1F4 8006B5F4 8FA6006C */  lw    $a2, 0x6c($sp)
/* 06C1F8 8006B5F8 8FA70070 */  lw    $a3, 0x70($sp)
/* 06C1FC 8006B5FC AFA00070 */  sw    $zero, 0x70($sp)
/* 06C200 8006B600 0C01B06B */  jal   func_8006C1AC
/* 06C204 8006B604 AFA00068 */   sw    $zero, 0x68($sp)
/* 06C208 8006B608 8FA20040 */  lw    $v0, 0x40($sp)
/* 06C20C 8006B60C 24040044 */  li    $a0, 68
/* 06C210 8006B610 8C4A0010 */  lw    $t2, 0x10($v0)
/* 06C214 8006B614 00000000 */  nop   
/* 06C218 8006B618 354C2000 */  ori   $t4, $t2, 0x2000
/* 06C21C 8006B61C 0C0078A7 */  jal   get_misc_asset
/* 06C220 8006B620 AC4C0010 */   sw    $t4, 0x10($v0)
/* 06C224 8006B624 80590004 */  lb    $t9, 4($v0)
/* 06C228 8006B628 00000000 */  nop   
/* 06C22C 8006B62C AFB90060 */  sw    $t9, 0x60($sp)
.L8006B630:
/* 06C230 8006B630 8FAE0044 */  lw    $t6, 0x44($sp)
.L8006B634:
/* 06C234 8006B634 8FB80060 */  lw    $t8, 0x60($sp)
/* 06C238 8006B638 3C01800E */  lui   $at, %hi(D_800DD32C) # $at, 0x800e
/* 06C23C 8006B63C 11D80016 */  beq   $t6, $t8, .L8006B698
/* 06C240 8006B640 A420D32C */   sh    $zero, %lo(D_800DD32C)($at)
/* 06C244 8006B644 8E240000 */  lw    $a0, ($s1)
/* 06C248 8006B648 00187880 */  sll   $t7, $t8, 2
/* 06C24C 8006B64C 0C01C450 */  jal   free_from_memory_pool
/* 06C250 8006B650 AFAF0034 */   sw    $t7, 0x34($sp)
/* 06C254 8006B654 3C0D8012 */  lui   $t5, %hi(gTempAssetTable) # $t5, 0x8012
/* 06C258 8006B658 8DAD1160 */  lw    $t5, %lo(gTempAssetTable)($t5)
/* 06C25C 8006B65C 8FAB0034 */  lw    $t3, 0x34($sp)
/* 06C260 8006B660 3C05FFFF */  lui   $a1, (0xFFFF00FF >> 16) # lui $a1, 0xffff
/* 06C264 8006B664 01AB1021 */  addu  $v0, $t5, $t3
/* 06C268 8006B668 8C500000 */  lw    $s0, ($v0)
/* 06C26C 8006B66C 8C4A0004 */  lw    $t2, 4($v0)
/* 06C270 8006B670 34A500FF */  ori   $a1, (0xFFFF00FF & 0xFFFF) # ori $a1, $a1, 0xff
/* 06C274 8006B674 01502023 */  subu  $a0, $t2, $s0
/* 06C278 8006B678 0C01C327 */  jal   allocate_from_main_pool_safe
/* 06C27C 8006B67C AFA40054 */   sw    $a0, 0x54($sp)
/* 06C280 8006B680 8FA70054 */  lw    $a3, 0x54($sp)
/* 06C284 8006B684 AE220000 */  sw    $v0, ($s1)
/* 06C288 8006B688 24040017 */  li    $a0, 23
/* 06C28C 8006B68C 00402825 */  move  $a1, $v0
/* 06C290 8006B690 0C01DB9A */  jal   load_asset_to_address
/* 06C294 8006B694 02003025 */   move  $a2, $s0
.L8006B698:
/* 06C298 8006B698 3C048012 */  lui   $a0, %hi(gTempAssetTable) # $a0, 0x8012
/* 06C29C 8006B69C 8C841160 */  lw    $a0, %lo(gTempAssetTable)($a0)
/* 06C2A0 8006B6A0 0C01C450 */  jal   free_from_memory_pool
/* 06C2A4 8006B6A4 00000000 */   nop   
/* 06C2A8 8006B6A8 8E240000 */  lw    $a0, ($s1)
/* 06C2AC 8006B6AC 0C01AFF2 */  jal   func_8006BFC8
/* 06C2B0 8006B6B0 24840020 */   addiu $a0, $a0, 0x20
/* 06C2B4 8006B6B4 0C0032F0 */  jal   func_8000CBC0
/* 06C2B8 8006B6B8 00000000 */   nop   
/* 06C2BC 8006B6BC 8FAC0060 */  lw    $t4, 0x60($sp)
/* 06C2C0 8006B6C0 3C018012 */  lui   $at, %hi(D_80121164) # $at, 0x8012
/* 06C2C4 8006B6C4 00001825 */  move  $v1, $zero
/* 06C2C8 8006B6C8 AC2C1164 */  sw    $t4, %lo(D_80121164)($at)
.L8006B6CC:
/* 06C2CC 8006B6CC 8E390000 */  lw    $t9, ($s1)
/* 06C2D0 8006B6D0 2401FFFF */  li    $at, -1
/* 06C2D4 8006B6D4 03237021 */  addu  $t6, $t9, $v1
/* 06C2D8 8006B6D8 8DC40074 */  lw    $a0, 0x74($t6)
/* 06C2DC 8006B6DC 00000000 */  nop   
/* 06C2E0 8006B6E0 10810010 */  beq   $a0, $at, .L8006B724
/* 06C2E4 8006B6E4 00000000 */   nop   
/* 06C2E8 8006B6E8 0C0078A7 */  jal   get_misc_asset
/* 06C2EC 8006B6EC AFA30038 */   sw    $v1, 0x38($sp)
/* 06C2F0 8006B6F0 8FA30038 */  lw    $v1, 0x38($sp)
/* 06C2F4 8006B6F4 8E380000 */  lw    $t8, ($s1)
/* 06C2F8 8006B6F8 00000000 */  nop   
/* 06C2FC 8006B6FC 03037821 */  addu  $t7, $t8, $v1
/* 06C300 8006B700 ADE20074 */  sw    $v0, 0x74($t7)
/* 06C304 8006B704 8E2D0000 */  lw    $t5, ($s1)
/* 06C308 8006B708 00000000 */  nop   
/* 06C30C 8006B70C 01A35821 */  addu  $t3, $t5, $v1
/* 06C310 8006B710 8D640074 */  lw    $a0, 0x74($t3)
/* 06C314 8006B714 0C01FC7A */  jal   func_8007F1E8
/* 06C318 8006B718 00000000 */   nop   
/* 06C31C 8006B71C 8FA30038 */  lw    $v1, 0x38($sp)
/* 06C320 8006B720 00000000 */  nop   
.L8006B724:
/* 06C324 8006B724 24630004 */  addiu $v1, $v1, 4
/* 06C328 8006B728 2861001C */  slti  $at, $v1, 0x1c
/* 06C32C 8006B72C 1420FFE7 */  bnez  $at, .L8006B6CC
/* 06C330 8006B730 00000000 */   nop   
/* 06C334 8006B734 8FAA0070 */  lw    $t2, 0x70($sp)
/* 06C338 8006B738 24010064 */  li    $at, 100
/* 06C33C 8006B73C 15410019 */  bne   $t2, $at, .L8006B7A4
/* 06C340 8006B740 00000000 */   nop   
/* 06C344 8006B744 0C02658B */  jal   get_trophy_race_world_id
/* 06C348 8006B748 00000000 */   nop   
/* 06C34C 8006B74C 10400009 */  beqz  $v0, .L8006B774
/* 06C350 8006B750 00000000 */   nop   
/* 06C354 8006B754 8E2C0000 */  lw    $t4, ($s1)
/* 06C358 8006B758 00000000 */  nop   
/* 06C35C 8006B75C 8199004C */  lb    $t9, 0x4c($t4)
/* 06C360 8006B760 00000000 */  nop   
/* 06C364 8006B764 1720000F */  bnez  $t9, .L8006B7A4
/* 06C368 8006B768 00000000 */   nop   
/* 06C36C 8006B76C 1000000D */  b     .L8006B7A4
/* 06C370 8006B770 AFA00070 */   sw    $zero, 0x70($sp)
.L8006B774:
/* 06C374 8006B774 0C0270B4 */  jal   is_in_tracks_mode
/* 06C378 8006B778 00000000 */   nop   
/* 06C37C 8006B77C 24010001 */  li    $at, 1
/* 06C380 8006B780 14410008 */  bne   $v0, $at, .L8006B7A4
/* 06C384 8006B784 00000000 */   nop   
/* 06C388 8006B788 8E2E0000 */  lw    $t6, ($s1)
/* 06C38C 8006B78C 00000000 */  nop   
/* 06C390 8006B790 81D8004C */  lb    $t8, 0x4c($t6)
/* 06C394 8006B794 00000000 */  nop   
/* 06C398 8006B798 17000002 */  bnez  $t8, .L8006B7A4
/* 06C39C 8006B79C 00000000 */   nop   
/* 06C3A0 8006B7A0 AFA00070 */  sw    $zero, 0x70($sp)
.L8006B7A4:
/* 06C3A4 8006B7A4 8E230000 */  lw    $v1, ($s1)
/* 06C3A8 8006B7A8 00000000 */  nop   
/* 06C3AC 8006B7AC 8065004C */  lb    $a1, 0x4c($v1)
/* 06C3B0 8006B7B0 00000000 */  nop   
/* 06C3B4 8006B7B4 10A00002 */  beqz  $a1, .L8006B7C0
/* 06C3B8 8006B7B8 24010008 */   li    $at, 8
/* 06C3BC 8006B7BC 14A10004 */  bne   $a1, $at, .L8006B7D0
.L8006B7C0:
/* 06C3C0 8006B7C0 240F0001 */   li    $t7, 1
/* 06C3C4 8006B7C4 3C01800E */  lui   $at, %hi(D_800DD31C) # $at, 0x800e
/* 06C3C8 8006B7C8 10000003 */  b     .L8006B7D8
/* 06C3CC 8006B7CC AC2FD31C */   sw    $t7, %lo(D_800DD31C)($at)
.L8006B7D0:
/* 06C3D0 8006B7D0 3C01800E */  lui   $at, %hi(D_800DD31C) # $at, 0x800e
/* 06C3D4 8006B7D4 AC20D31C */  sw    $zero, %lo(D_800DD31C)($at)
.L8006B7D8:
/* 06C3D8 8006B7D8 8FAD0048 */  lw    $t5, 0x48($sp)
/* 06C3DC 8006B7DC 00000000 */  nop   
/* 06C3E0 8006B7E0 11A00008 */  beqz  $t5, .L8006B804
/* 06C3E4 8006B7E4 00000000 */   nop   
/* 06C3E8 8006B7E8 806B004C */  lb    $t3, 0x4c($v1)
/* 06C3EC 8006B7EC 24010007 */  li    $at, 7
/* 06C3F0 8006B7F0 11610004 */  beq   $t3, $at, .L8006B804
/* 06C3F4 8006B7F4 240A0006 */   li    $t2, 6
/* 06C3F8 8006B7F8 A06A004C */  sb    $t2, 0x4c($v1)
/* 06C3FC 8006B7FC 8E230000 */  lw    $v1, ($s1)
/* 06C400 8006B800 00000000 */  nop   
.L8006B804:
/* 06C404 8006B804 906400B3 */  lbu   $a0, 0xb3($v1)
/* 06C408 8006B808 0C0002F8 */  jal   set_music_player_voice_limit
/* 06C40C 8006B80C 00000000 */   nop   
/* 06C410 8006B810 0C00032F */  jal   func_80000CBC
/* 06C414 8006B814 00000000 */   nop   
/* 06C418 8006B818 0C00C6EE */  jal   func_80031BB8
/* 06C41C 8006B81C 24040020 */   li    $a0, 32
/* 06C420 8006B820 8FAC006C */  lw    $t4, 0x6c($sp)
/* 06C424 8006B824 00008025 */  move  $s0, $zero
/* 06C428 8006B828 05800008 */  bltz  $t4, .L8006B84C
/* 06C42C 8006B82C 29810003 */   slti  $at, $t4, 3
/* 06C430 8006B830 10200006 */  beqz  $at, .L8006B84C
/* 06C434 8006B834 00000000 */   nop   
/* 06C438 8006B838 8E390000 */  lw    $t9, ($s1)
/* 06C43C 8006B83C 00000000 */  nop   
/* 06C440 8006B840 032C7021 */  addu  $t6, $t9, $t4
/* 06C444 8006B844 81D0004F */  lb    $s0, 0x4f($t6)
/* 06C448 8006B848 00000000 */  nop   
.L8006B84C:
/* 06C44C 8006B84C 0C005F9D */  jal   func_80017E74
/* 06C450 8006B850 02002025 */   move  $a0, $s0
/* 06C454 8006B854 8E380000 */  lw    $t8, ($s1)
/* 06C458 8006B858 8FA30040 */  lw    $v1, 0x40($sp)
/* 06C45C 8006B85C 83040000 */  lb    $a0, ($t8)
/* 06C460 8006B860 2401FFFF */  li    $at, -1
/* 06C464 8006B864 90700048 */  lbu   $s0, 0x48($v1)
/* 06C468 8006B868 10810003 */  beq   $a0, $at, .L8006B878
/* 06C46C 8006B86C 8FAF0060 */   lw    $t7, 0x60($sp)
/* 06C470 8006B870 A0640048 */  sb    $a0, 0x48($v1)
/* 06C474 8006B874 8FAF0060 */  lw    $t7, 0x60($sp)
.L8006B878:
/* 06C478 8006B878 1600000A */  bnez  $s0, .L8006B8A4
/* 06C47C 8006B87C A06F0049 */   sb    $t7, 0x49($v1)
/* 06C480 8006B880 906D0048 */  lbu   $t5, 0x48($v1)
/* 06C484 8006B884 00000000 */  nop   
/* 06C488 8006B888 19A00006 */  blez  $t5, .L8006B8A4
/* 06C48C 8006B88C 00000000 */   nop   
/* 06C490 8006B890 0C01B6CB */  jal   get_level_default_vehicle
/* 06C494 8006B894 00000000 */   nop   
/* 06C498 8006B898 3C01800E */  lui   $at, %hi(D_800DD314) # $at, 0x800e
/* 06C49C 8006B89C 8FA30040 */  lw    $v1, 0x40($sp)
/* 06C4A0 8006B8A0 A022D314 */  sb    $v0, %lo(D_800DD314)($at)
.L8006B8A4:
/* 06C4A4 8006B8A4 906B0048 */  lbu   $t3, 0x48($v1)
/* 06C4A8 8006B8A8 00000000 */  nop   
/* 06C4AC 8006B8AC 15600009 */  bnez  $t3, .L8006B8D4
/* 06C4B0 8006B8B0 8FA4006C */   lw    $a0, 0x6c($sp)
/* 06C4B4 8006B8B4 1A000006 */  blez  $s0, .L8006B8D0
/* 06C4B8 8006B8B8 3C02800E */   lui   $v0, %hi(D_800DD314) # $v0, 0x800e
/* 06C4BC 8006B8BC 8042D314 */  lb    $v0, %lo(D_800DD314)($v0)
/* 06C4C0 8006B8C0 2401FFFF */  li    $at, -1
/* 06C4C4 8006B8C4 10410003 */  beq   $v0, $at, .L8006B8D4
/* 06C4C8 8006B8C8 8FA4006C */   lw    $a0, 0x6c($sp)
/* 06C4CC 8006B8CC AFA2006C */  sw    $v0, 0x6c($sp)
.L8006B8D0:
/* 06C4D0 8006B8D0 8FA4006C */  lw    $a0, 0x6c($sp)
.L8006B8D4:
/* 06C4D4 8006B8D4 0C01B6C8 */  jal   func_8006DB20
/* 06C4D8 8006B8D8 00000000 */   nop   
/* 06C4DC 8006B8DC 8E2A0000 */  lw    $t2, ($s1)
/* 06C4E0 8006B8E0 24010005 */  li    $at, 5
/* 06C4E4 8006B8E4 8159004C */  lb    $t9, 0x4c($t2)
/* 06C4E8 8006B8E8 00000000 */  nop   
/* 06C4EC 8006B8EC 1721003C */  bne   $t9, $at, .L8006B9E0
/* 06C4F0 8006B8F0 00000000 */   nop   
/* 06C4F4 8006B8F4 8FA50040 */  lw    $a1, 0x40($sp)
/* 06C4F8 8006B8F8 240E0008 */  li    $t6, 8
/* 06C4FC 8006B8FC 90A40048 */  lbu   $a0, 0x48($a1)
/* 06C500 8006B900 24010005 */  li    $at, 5
/* 06C504 8006B904 18800036 */  blez  $a0, .L8006B9E0
/* 06C508 8006B908 248C001F */   addiu $t4, $a0, 0x1f
/* 06C50C 8006B90C 14810015 */  bne   $a0, $at, .L8006B964
/* 06C510 8006B910 018E8004 */   sllv  $s0, $t6, $t4
/* 06C514 8006B914 8CB80000 */  lw    $t8, ($a1)
/* 06C518 8006B918 00000000 */  nop   
/* 06C51C 8006B91C 870F0000 */  lh    $t7, ($t8)
/* 06C520 8006B920 00000000 */  nop   
/* 06C524 8006B924 29E1002F */  slti  $at, $t7, 0x2f
/* 06C528 8006B928 1420002D */  bnez  $at, .L8006B9E0
/* 06C52C 8006B92C 00000000 */   nop   
/* 06C530 8006B930 90AD0016 */  lbu   $t5, 0x16($a1)
/* 06C534 8006B934 00000000 */  nop   
/* 06C538 8006B938 29A10004 */  slti  $at, $t5, 4
/* 06C53C 8006B93C 14200028 */  bnez  $at, .L8006B9E0
/* 06C540 8006B940 00000000 */   nop   
/* 06C544 8006B944 8CA20010 */  lw    $v0, 0x10($a1)
/* 06C548 8006B948 24190005 */  li    $t9, 5
/* 06C54C 8006B94C 00505824 */  and   $t3, $v0, $s0
/* 06C550 8006B950 15600023 */  bnez  $t3, .L8006B9E0
/* 06C554 8006B954 00505025 */   or    $t2, $v0, $s0
/* 06C558 8006B958 ACAA0010 */  sw    $t2, 0x10($a1)
/* 06C55C 8006B95C 10000020 */  b     .L8006B9E0
/* 06C560 8006B960 AFB90070 */   sw    $t9, 0x70($sp)
.L8006B964:
/* 06C564 8006B964 8CAE0000 */  lw    $t6, ($a1)
/* 06C568 8006B968 00046040 */  sll   $t4, $a0, 1
/* 06C56C 8006B96C 01CCC021 */  addu  $t8, $t6, $t4
/* 06C570 8006B970 87030000 */  lh    $v1, ($t8)
/* 06C574 8006B974 00000000 */  nop   
/* 06C578 8006B978 28610004 */  slti  $at, $v1, 4
/* 06C57C 8006B97C 1420000F */  bnez  $at, .L8006B9BC
/* 06C580 8006B980 28610008 */   slti  $at, $v1, 8
/* 06C584 8006B984 8CA20010 */  lw    $v0, 0x10($a1)
/* 06C588 8006B988 240B0005 */  li    $t3, 5
/* 06C58C 8006B98C 00507824 */  and   $t7, $v0, $s0
/* 06C590 8006B990 15E00009 */  bnez  $t7, .L8006B9B8
/* 06C594 8006B994 00506825 */   or    $t5, $v0, $s0
/* 06C598 8006B998 ACAD0010 */  sw    $t5, 0x10($a1)
/* 06C59C 8006B99C AFAB0070 */  sw    $t3, 0x70($sp)
/* 06C5A0 8006B9A0 90B90048 */  lbu   $t9, 0x48($a1)
/* 06C5A4 8006B9A4 8CAA0000 */  lw    $t2, ($a1)
/* 06C5A8 8006B9A8 00197040 */  sll   $t6, $t9, 1
/* 06C5AC 8006B9AC 014E6021 */  addu  $t4, $t2, $t6
/* 06C5B0 8006B9B0 85830000 */  lh    $v1, ($t4)
/* 06C5B4 8006B9B4 00000000 */  nop   
.L8006B9B8:
/* 06C5B8 8006B9B8 28610008 */  slti  $at, $v1, 8
.L8006B9BC:
/* 06C5BC 8006B9BC 14200008 */  bnez  $at, .L8006B9E0
/* 06C5C0 8006B9C0 0010C140 */   sll   $t8, $s0, 5
/* 06C5C4 8006B9C4 8CA20010 */  lw    $v0, 0x10($a1)
/* 06C5C8 8006B9C8 240B0005 */  li    $t3, 5
/* 06C5CC 8006B9CC 00587824 */  and   $t7, $v0, $t8
/* 06C5D0 8006B9D0 15E00003 */  bnez  $t7, .L8006B9E0
/* 06C5D4 8006B9D4 00586825 */   or    $t5, $v0, $t8
/* 06C5D8 8006B9D8 ACAD0010 */  sw    $t5, 0x10($a1)
/* 06C5DC 8006B9DC AFAB0070 */  sw    $t3, 0x70($sp)
.L8006B9E0:
/* 06C5E0 8006B9E0 8E390000 */  lw    $t9, ($s1)
/* 06C5E4 8006B9E4 8FAA0064 */  lw    $t2, 0x64($sp)
/* 06C5E8 8006B9E8 8325004C */  lb    $a1, 0x4c($t9)
/* 06C5EC 8006B9EC 11400004 */  beqz  $t2, .L8006BA00
/* 06C5F0 8006B9F0 00000000 */   nop   
/* 06C5F4 8006B9F4 14A00002 */  bnez  $a1, .L8006BA00
/* 06C5F8 8006B9F8 240E0064 */   li    $t6, 100
/* 06C5FC 8006B9FC AFAE0070 */  sw    $t6, 0x70($sp)
.L8006BA00:
/* 06C600 8006BA00 10A00003 */  beqz  $a1, .L8006BA10
/* 06C604 8006BA04 30AC0040 */   andi  $t4, $a1, 0x40
/* 06C608 8006BA08 1180000B */  beqz  $t4, .L8006BA38
/* 06C60C 8006BA0C 00000000 */   nop   
.L8006BA10:
/* 06C610 8006BA10 0C027B20 */  jal   is_in_two_player_adventure
/* 06C614 8006BA14 00000000 */   nop   
/* 06C618 8006BA18 10400007 */  beqz  $v0, .L8006BA38
/* 06C61C 8006BA1C 24180001 */   li    $t8, 1
/* 06C620 8006BA20 3C01800E */  lui   $at, %hi(D_800DD318) # $at, 0x800e
/* 06C624 8006BA24 A038D318 */  sb    $t8, %lo(D_800DD318)($at)
/* 06C628 8006BA28 8E230000 */  lw    $v1, ($s1)
/* 06C62C 8006BA2C 240F0064 */  li    $t7, 100
/* 06C630 8006BA30 10000005 */  b     .L8006BA48
/* 06C634 8006BA34 AFAF0070 */   sw    $t7, 0x70($sp)
.L8006BA38:
/* 06C638 8006BA38 3C01800E */  lui   $at, %hi(D_800DD318) # $at, 0x800e
/* 06C63C 8006BA3C A020D318 */  sb    $zero, %lo(D_800DD318)($at)
/* 06C640 8006BA40 8E230000 */  lw    $v1, ($s1)
/* 06C644 8006BA44 00000000 */  nop   
.L8006BA48:
/* 06C648 8006BA48 806D004C */  lb    $t5, 0x4c($v1)
/* 06C64C 8006BA4C 00000000 */  nop   
/* 06C650 8006BA50 15A0000B */  bnez  $t5, .L8006BA80
/* 06C654 8006BA54 8FA40070 */   lw    $a0, 0x70($sp)
/* 06C658 8006BA58 8FAB0048 */  lw    $t3, 0x48($sp)
/* 06C65C 8006BA5C 00000000 */  nop   
/* 06C660 8006BA60 15600007 */  bnez  $t3, .L8006BA80
/* 06C664 8006BA64 8FA40070 */   lw    $a0, 0x70($sp)
/* 06C668 8006BA68 0C003932 */  jal   is_time_trial_enabled
/* 06C66C 8006BA6C 00000000 */   nop   
/* 06C670 8006BA70 10400002 */  beqz  $v0, .L8006BA7C
/* 06C674 8006BA74 24190064 */   li    $t9, 100
/* 06C678 8006BA78 AFB90070 */  sw    $t9, 0x70($sp)
.L8006BA7C:
/* 06C67C 8006BA7C 8FA40070 */  lw    $a0, 0x70($sp)
.L8006BA80:
/* 06C680 8006BA80 0C007914 */  jal   func_8001E450
/* 06C684 8006BA84 00000000 */   nop   
/* 06C688 8006BA88 8E230000 */  lw    $v1, ($s1)
/* 06C68C 8006BA8C 8FAA0068 */  lw    $t2, 0x68($sp)
/* 06C690 8006BA90 84640034 */  lh    $a0, 0x34($v1)
/* 06C694 8006BA94 84650038 */  lh    $a1, 0x38($v1)
/* 06C698 8006BA98 AFAA0010 */  sw    $t2, 0x10($sp)
/* 06C69C 8006BA9C 846E0036 */  lh    $t6, 0x36($v1)
/* 06C6A0 8006BAA0 8FA60064 */  lw    $a2, 0x64($sp)
/* 06C6A4 8006BAA4 AFAE0014 */  sw    $t6, 0x14($sp)
/* 06C6A8 8006BAA8 846C00BA */  lh    $t4, 0xba($v1)
/* 06C6AC 8006BAAC 8FA7006C */  lw    $a3, 0x6c($sp)
/* 06C6B0 8006BAB0 0C00927C */  jal   func_800249F0
/* 06C6B4 8006BAB4 AFAC0018 */   sw    $t4, 0x18($sp)
/* 06C6B8 8006BAB8 8E230000 */  lw    $v1, ($s1)
/* 06C6BC 8006BABC 00000000 */  nop   
/* 06C6C0 8006BAC0 8478003A */  lh    $t8, 0x3a($v1)
/* 06C6C4 8006BAC4 00000000 */  nop   
/* 06C6C8 8006BAC8 1700001A */  bnez  $t8, .L8006BB34
/* 06C6CC 8006BACC 00008025 */   move  $s0, $zero
/* 06C6D0 8006BAD0 846F003C */  lh    $t7, 0x3c($v1)
/* 06C6D4 8006BAD4 00000000 */  nop   
/* 06C6D8 8006BAD8 15E00016 */  bnez  $t7, .L8006BB34
/* 06C6DC 8006BADC 00008025 */   move  $s0, $zero
/* 06C6E0 8006BAE0 846D003E */  lh    $t5, 0x3e($v1)
/* 06C6E4 8006BAE4 00000000 */  nop   
/* 06C6E8 8006BAE8 15A00012 */  bnez  $t5, .L8006BB34
/* 06C6EC 8006BAEC 00008025 */   move  $s0, $zero
/* 06C6F0 8006BAF0 846B0040 */  lh    $t3, 0x40($v1)
/* 06C6F4 8006BAF4 00000000 */  nop   
/* 06C6F8 8006BAF8 1560000E */  bnez  $t3, .L8006BB34
/* 06C6FC 8006BAFC 00008025 */   move  $s0, $zero
/* 06C700 8006BB00 84790042 */  lh    $t9, 0x42($v1)
/* 06C704 8006BB04 00008025 */  move  $s0, $zero
/* 06C708 8006BB08 17200009 */  bnez  $t9, .L8006BB30
/* 06C70C 8006BB0C 00000000 */   nop   
.L8006BB10:
/* 06C710 8006BB10 0C00C1EF */  jal   func_800307BC
/* 06C714 8006BB14 02002025 */   move  $a0, $s0
/* 06C718 8006BB18 26100001 */  addiu $s0, $s0, 1
/* 06C71C 8006BB1C 24010004 */  li    $at, 4
/* 06C720 8006BB20 1601FFFB */  bne   $s0, $at, .L8006BB10
/* 06C724 8006BB24 00000000 */   nop   
/* 06C728 8006BB28 10000010 */  b     .L8006BB6C
/* 06C72C 8006BB2C 00000000 */   nop   
.L8006BB30:
/* 06C730 8006BB30 00008025 */  move  $s0, $zero
.L8006BB34:
/* 06C734 8006BB34 8E230000 */  lw    $v1, ($s1)
/* 06C738 8006BB38 02002025 */  move  $a0, $s0
/* 06C73C 8006BB3C 846A0040 */  lh    $t2, 0x40($v1)
/* 06C740 8006BB40 8465003A */  lh    $a1, 0x3a($v1)
/* 06C744 8006BB44 8466003C */  lh    $a2, 0x3c($v1)
/* 06C748 8006BB48 9067003F */  lbu   $a3, 0x3f($v1)
/* 06C74C 8006BB4C AFAA0010 */  sw    $t2, 0x10($sp)
/* 06C750 8006BB50 846E0042 */  lh    $t6, 0x42($v1)
/* 06C754 8006BB54 0C00C199 */  jal   func_80030664
/* 06C758 8006BB58 AFAE0014 */   sw    $t6, 0x14($sp)
/* 06C75C 8006BB5C 26100001 */  addiu $s0, $s0, 1
/* 06C760 8006BB60 24010004 */  li    $at, 4
/* 06C764 8006BB64 1601FFF3 */  bne   $s0, $at, .L8006BB34
/* 06C768 8006BB68 00000000 */   nop   
.L8006BB6C:
/* 06C76C 8006BB6C 0C01BAA4 */  jal   get_settings
/* 06C770 8006BB70 00000000 */   nop   
/* 06C774 8006BB74 8E2C0000 */  lw    $t4, ($s1)
/* 06C778 8006BB78 2401FFFF */  li    $at, -1
/* 06C77C 8006BB7C 81840000 */  lb    $a0, ($t4)
/* 06C780 8006BB80 00000000 */  nop   
/* 06C784 8006BB84 10810003 */  beq   $a0, $at, .L8006BB94
/* 06C788 8006BB88 8FB80060 */   lw    $t8, 0x60($sp)
/* 06C78C 8006BB8C A0440048 */  sb    $a0, 0x48($v0)
/* 06C790 8006BB90 8FB80060 */  lw    $t8, 0x60($sp)
.L8006BB94:
/* 06C794 8006BB94 00000000 */  nop   
/* 06C798 8006BB98 A0580049 */  sb    $t8, 0x49($v0)
/* 06C79C 8006BB9C 8E230000 */  lw    $v1, ($s1)
/* 06C7A0 8006BBA0 00000000 */  nop   
/* 06C7A4 8006BBA4 84650090 */  lh    $a1, 0x90($v1)
/* 06C7A8 8006BBA8 00000000 */  nop   
/* 06C7AC 8006BBAC 18A0001C */  blez  $a1, .L8006BC20
/* 06C7B0 8006BBB0 00000000 */   nop   
/* 06C7B4 8006BBB4 846B009A */  lh    $t3, 0x9a($v1)
/* 06C7B8 8006BBB8 84660096 */  lh    $a2, 0x96($v1)
/* 06C7BC 8006BBBC 84670098 */  lh    $a3, 0x98($v1)
/* 06C7C0 8006BBC0 84640092 */  lh    $a0, 0x92($v1)
/* 06C7C4 8006BBC4 000BCA00 */  sll   $t9, $t3, 8
/* 06C7C8 8006BBC8 AFB90010 */  sw    $t9, 0x10($sp)
/* 06C7CC 8006BBCC 906A0094 */  lbu   $t2, 0x94($v1)
/* 06C7D0 8006BBD0 24020101 */  li    $v0, 257
/* 06C7D4 8006BBD4 01420019 */  multu $t2, $v0
/* 06C7D8 8006BBD8 00067A00 */  sll   $t7, $a2, 8
/* 06C7DC 8006BBDC 00076A00 */  sll   $t5, $a3, 8
/* 06C7E0 8006BBE0 01A03825 */  move  $a3, $t5
/* 06C7E4 8006BBE4 01E03025 */  move  $a2, $t7
/* 06C7E8 8006BBE8 00007012 */  mflo  $t6
/* 06C7EC 8006BBEC AFAE0014 */  sw    $t6, 0x14($sp)
/* 06C7F0 8006BBF0 906C0095 */  lbu   $t4, 0x95($v1)
/* 06C7F4 8006BBF4 00000000 */  nop   
/* 06C7F8 8006BBF8 01820019 */  multu $t4, $v0
/* 06C7FC 8006BBFC 0000C012 */  mflo  $t8
/* 06C800 8006BC00 AFB80018 */  sw    $t8, 0x18($sp)
/* 06C804 8006BC04 0C02AD2A */  jal   func_800AB4A8
/* 06C808 8006BC08 00000000 */   nop   
/* 06C80C 8006BC0C 2404FFFF */  li    $a0, -1
/* 06C810 8006BC10 0C02ACC2 */  jal   func_800AB308
/* 06C814 8006BC14 2405FE00 */   li    $a1, -512
/* 06C818 8006BC18 8E230000 */  lw    $v1, ($s1)
/* 06C81C 8006BC1C 00000000 */  nop   
.L8006BC20:
/* 06C820 8006BC20 806F0049 */  lb    $t7, 0x49($v1)
/* 06C824 8006BC24 2401FFFF */  li    $at, -1
/* 06C828 8006BC28 15E1000F */  bne   $t7, $at, .L8006BC68
/* 06C82C 8006BC2C 00000000 */   nop   
/* 06C830 8006BC30 8C6400A4 */  lw    $a0, 0xa4($v1)
/* 06C834 8006BC34 0C01EB9D */  jal   load_texture
/* 06C838 8006BC38 00000000 */   nop   
/* 06C83C 8006BC3C 8E2D0000 */  lw    $t5, ($s1)
/* 06C840 8006BC40 00000000 */  nop   
/* 06C844 8006BC44 ADA200A4 */  sw    $v0, 0xa4($t5)
/* 06C848 8006BC48 8E2B0000 */  lw    $t3, ($s1)
/* 06C84C 8006BC4C 00000000 */  nop   
/* 06C850 8006BC50 A56000A8 */  sh    $zero, 0xa8($t3)
/* 06C854 8006BC54 8E390000 */  lw    $t9, ($s1)
/* 06C858 8006BC58 00000000 */  nop   
/* 06C85C 8006BC5C A72000AA */  sh    $zero, 0xaa($t9)
/* 06C860 8006BC60 8E230000 */  lw    $v1, ($s1)
/* 06C864 8006BC64 00000000 */  nop   
.L8006BC68:
/* 06C868 8006BC68 8C6400AC */  lw    $a0, 0xac($v1)
/* 06C86C 8006BC6C 2401FFFF */  li    $at, -1
/* 06C870 8006BC70 1081000D */  beq   $a0, $at, .L8006BCA8
/* 06C874 8006BC74 00000000 */   nop   
/* 06C878 8006BC78 0C0078A7 */  jal   get_misc_asset
/* 06C87C 8006BC7C 00000000 */   nop   
/* 06C880 8006BC80 8E2A0000 */  lw    $t2, ($s1)
/* 06C884 8006BC84 00000000 */  nop   
/* 06C888 8006BC88 AD4200AC */  sw    $v0, 0xac($t2)
/* 06C88C 8006BC8C 8E2E0000 */  lw    $t6, ($s1)
/* 06C890 8006BC90 00000000 */  nop   
/* 06C894 8006BC94 8DC400AC */  lw    $a0, 0xac($t6)
/* 06C898 8006BC98 0C01FD05 */  jal   init_pulsating_light_data
/* 06C89C 8006BC9C 00000000 */   nop   
/* 06C8A0 8006BCA0 8E230000 */  lw    $v1, ($s1)
/* 06C8A4 8006BCA4 00000000 */  nop   
.L8006BCA8:
/* 06C8A8 8006BCA8 806C009C */  lb    $t4, 0x9c($v1)
/* 06C8AC 8006BCAC 00000000 */  nop   
/* 06C8B0 8006BCB0 448C2000 */  mtc1  $t4, $f4
/* 06C8B4 8006BCB4 0C01983B */  jal   update_camera_fov
/* 06C8B8 8006BCB8 46802320 */   cvt.s.w $f12, $f4
/* 06C8BC 8006BCBC 8E230000 */  lw    $v1, ($s1)
/* 06C8C0 8006BCC0 00000000 */  nop   
/* 06C8C4 8006BCC4 9064009D */  lbu   $a0, 0x9d($v1)
/* 06C8C8 8006BCC8 9065009E */  lbu   $a1, 0x9e($v1)
/* 06C8CC 8006BCCC 9066009F */  lbu   $a2, 0x9f($v1)
/* 06C8D0 8006BCD0 0C01DECD */  jal   set_background_prim_colour
/* 06C8D4 8006BCD4 00000000 */   nop   
/* 06C8D8 8006BCD8 0C01EA5D */  jal   reset_video_delta_time
/* 06C8DC 8006BCDC 00000000 */   nop   
/* 06C8E0 8006BCE0 8E380000 */  lw    $t8, ($s1)
/* 06C8E4 8006BCE4 8FAF0064 */  lw    $t7, 0x64($sp)
/* 06C8E8 8006BCE8 00000000 */  nop   
/* 06C8EC 8006BCEC 030F6821 */  addu  $t5, $t8, $t7
/* 06C8F0 8006BCF0 91A40004 */  lbu   $a0, 4($t5)
/* 06C8F4 8006BCF4 0C01EAC9 */  jal   func_8007AB24
/* 06C8F8 8006BCF8 00000000 */   nop   
/* 06C8FC 8006BCFC 8FBF002C */  lw    $ra, 0x2c($sp)
/* 06C900 8006BD00 8FB00024 */  lw    $s0, 0x24($sp)
/* 06C904 8006BD04 8FB10028 */  lw    $s1, 0x28($sp)
/* 06C908 8006BD08 03E00008 */  jr    $ra
/* 06C90C 8006BD0C 27BD0060 */   addiu $sp, $sp, 0x60

