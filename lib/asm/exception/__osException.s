.section .rodata

glabel D_800E9670
.word 0x00141818
.word 0x1C1C1C1C
.word 0x20202020
.word 0x20202020
.word 0x00040808
.word 0x0C0C0C0C
.word 0x10101010
.word 0x10101010

glabel D_800E9690
.word .L800D3168
.word .L800D3130
.word .L800D3110
.word .L800D2F74
.word .L800D2F20
.word .L800D30B4
.word .L800D2EE8
.word .L800D2EF4
.word .L800D2F00

.section .text

glabel __osException
/* 0D38C0 800D2CC0 3C1A8013 */  lui   $k0, %hi(D_8012D240) # $k0, 0x8013
/* 0D38C4 800D2CC4 275AD240 */  addiu $k0, %lo(D_8012D240) # addiu $k0, $k0, -0x2dc0
/* 0D38C8 800D2CC8 FF410020 */  sd    $at, 0x20($k0)
/* 0D38CC 800D2CCC 401B6000 */  mfc0  $k1, $12
/* 0D38D0 800D2CD0 AF5B0118 */  sw    $k1, 0x118($k0)
/* 0D38D4 800D2CD4 2401FFFC */  li    $at, -4
/* 0D38D8 800D2CD8 0361D824 */  and   $k1, $k1, $at
/* 0D38DC 800D2CDC 409B6000 */  mtc0  $k1, $12
/* 0D38E0 800D2CE0 FF480058 */  sd    $t0, 0x58($k0)
/* 0D38E4 800D2CE4 FF490060 */  sd    $t1, 0x60($k0)
/* 0D38E8 800D2CE8 FF4A0068 */  sd    $t2, 0x68($k0)
/* 0D38EC 800D2CEC AF400018 */  sw    $zero, 0x18($k0)
/* 0D38F0 800D2CF0 40086800 */  mfc0  $t0, $13
/* 0D38F4 800D2CF4 03404025 */  move  $t0, $k0
/* 0D38F8 800D2CF8 3C1A800E */  lui   $k0, %hi(__osRunningThread) # $k0, 0x800e
/* 0D38FC 800D2CFC 8F5A4890 */  lw    $k0, %lo(__osRunningThread)($k0)
/* 0D3900 800D2D00 DD090020 */  ld    $t1, 0x20($t0)
/* 0D3904 800D2D04 FF490020 */  sd    $t1, 0x20($k0)
/* 0D3908 800D2D08 DD090118 */  ld    $t1, 0x118($t0)
/* 0D390C 800D2D0C FF490118 */  sd    $t1, 0x118($k0)
/* 0D3910 800D2D10 DD090058 */  ld    $t1, 0x58($t0)
/* 0D3914 800D2D14 FF490058 */  sd    $t1, 0x58($k0)
/* 0D3918 800D2D18 DD090060 */  ld    $t1, 0x60($t0)
/* 0D391C 800D2D1C FF490060 */  sd    $t1, 0x60($k0)
/* 0D3920 800D2D20 DD090068 */  ld    $t1, 0x68($t0)
/* 0D3924 800D2D24 FF490068 */  sd    $t1, 0x68($k0)
/* 0D3928 800D2D28 8F5B0118 */  lw    $k1, 0x118($k0)
/* 0D392C 800D2D2C 00004012 */  mflo  $t0
/* 0D3930 800D2D30 FF480108 */  sd    $t0, 0x108($k0)
/* 0D3934 800D2D34 00004010 */  mfhi  $t0
/* 0D3938 800D2D38 3369FF00 */  andi  $t1, $k1, 0xff00
/* 0D393C 800D2D3C FF420028 */  sd    $v0, 0x28($k0)
/* 0D3940 800D2D40 FF430030 */  sd    $v1, 0x30($k0)
/* 0D3944 800D2D44 FF440038 */  sd    $a0, 0x38($k0)
/* 0D3948 800D2D48 FF450040 */  sd    $a1, 0x40($k0)
/* 0D394C 800D2D4C FF460048 */  sd    $a2, 0x48($k0)
/* 0D3950 800D2D50 FF470050 */  sd    $a3, 0x50($k0)
/* 0D3954 800D2D54 FF4B0070 */  sd    $t3, 0x70($k0)
/* 0D3958 800D2D58 FF4C0078 */  sd    $t4, 0x78($k0)
/* 0D395C 800D2D5C FF4D0080 */  sd    $t5, 0x80($k0)
/* 0D3960 800D2D60 FF4E0088 */  sd    $t6, 0x88($k0)
/* 0D3964 800D2D64 FF4F0090 */  sd    $t7, 0x90($k0)
/* 0D3968 800D2D68 FF500098 */  sd    $s0, 0x98($k0)
/* 0D396C 800D2D6C FF5100A0 */  sd    $s1, 0xa0($k0)
/* 0D3970 800D2D70 FF5200A8 */  sd    $s2, 0xa8($k0)
/* 0D3974 800D2D74 FF5300B0 */  sd    $s3, 0xb0($k0)
/* 0D3978 800D2D78 FF5400B8 */  sd    $s4, 0xb8($k0)
/* 0D397C 800D2D7C FF5500C0 */  sd    $s5, 0xc0($k0)
/* 0D3980 800D2D80 FF5600C8 */  sd    $s6, 0xc8($k0)
/* 0D3984 800D2D84 FF5700D0 */  sd    $s7, 0xd0($k0)
/* 0D3988 800D2D88 FF5800D8 */  sd    $t8, 0xd8($k0)
/* 0D398C 800D2D8C FF5900E0 */  sd    $t9, 0xe0($k0)
/* 0D3990 800D2D90 FF5C00E8 */  sd    $gp, 0xe8($k0)
/* 0D3994 800D2D94 FF5D00F0 */  sd    $sp, 0xf0($k0)
/* 0D3998 800D2D98 FF5E00F8 */  sd    $fp, 0xf8($k0)
/* 0D399C 800D2D9C FF5F0100 */  sd    $ra, 0x100($k0)
/* 0D39A0 800D2DA0 1120000D */  beqz  $t1, .L800D2DD8
/* 0D39A4 800D2DA4 FF480110 */   sd    $t0, 0x110($k0)
/* 0D39A8 800D2DA8 3C08800E */  lui   $t0, %hi(D_800E38AC) # $t0, 0x800e
/* 0D39AC 800D2DAC 250838AC */  addiu $t0, %lo(D_800E38AC) # addiu $t0, $t0, 0x38ac
/* 0D39B0 800D2DB0 8D080000 */  lw    $t0, ($t0)
/* 0D39B4 800D2DB4 2401FFFF */  li    $at, -1
/* 0D39B8 800D2DB8 01014026 */  xor   $t0, $t0, $at
/* 0D39BC 800D2DBC 3C01FFFF */  lui   $at, (0xFFFF00FF >> 16) # lui $at, 0xffff
/* 0D39C0 800D2DC0 3108FF00 */  andi  $t0, $t0, 0xff00
/* 0D39C4 800D2DC4 342100FF */  ori   $at, (0xFFFF00FF & 0xFFFF) # ori $at, $at, 0xff
/* 0D39C8 800D2DC8 01284825 */  or    $t1, $t1, $t0
/* 0D39CC 800D2DCC 0361D824 */  and   $k1, $k1, $at
/* 0D39D0 800D2DD0 0369D825 */  or    $k1, $k1, $t1
/* 0D39D4 800D2DD4 AF5B0118 */  sw    $k1, 0x118($k0)
.L800D2DD8:
/* 0D39D8 800D2DD8 3C09A430 */  lui   $t1, %hi(D_A430000C) # $t1, 0xa430
/* 0D39DC 800D2DDC 8D29000C */  lw    $t1, %lo(D_A430000C)($t1)
/* 0D39E0 800D2DE0 1120000B */  beqz  $t1, .L800D2E10
/* 0D39E4 800D2DE4 00000000 */   nop   
/* 0D39E8 800D2DE8 3C08800E */  lui   $t0, %hi(D_800E38AC) # $t0, 0x800e
/* 0D39EC 800D2DEC 250838AC */  addiu $t0, %lo(D_800E38AC) # addiu $t0, $t0, 0x38ac
/* 0D39F0 800D2DF0 8D080000 */  lw    $t0, ($t0)
/* 0D39F4 800D2DF4 8F4C0128 */  lw    $t4, 0x128($k0)
/* 0D39F8 800D2DF8 2401FFFF */  li    $at, -1
/* 0D39FC 800D2DFC 00084402 */  srl   $t0, $t0, 0x10
/* 0D3A00 800D2E00 01014026 */  xor   $t0, $t0, $at
/* 0D3A04 800D2E04 3108003F */  andi  $t0, $t0, 0x3f
/* 0D3A08 800D2E08 010C4024 */  and   $t0, $t0, $t4
/* 0D3A0C 800D2E0C 01284825 */  or    $t1, $t1, $t0
.L800D2E10:
/* 0D3A10 800D2E10 AF490128 */  sw    $t1, 0x128($k0)
/* 0D3A14 800D2E14 40087000 */  mfc0  $t0, $14
/* 0D3A18 800D2E18 AF48011C */  sw    $t0, 0x11c($k0)
/* 0D3A1C 800D2E1C 8F480018 */  lw    $t0, 0x18($k0)
/* 0D3A20 800D2E20 11000014 */  beqz  $t0, .L800D2E74
/* 0D3A24 800D2E24 00000000 */   nop   
/* 0D3A28 800D2E28 4448F800 */  cfc1  $t0, $31
/* 0D3A2C 800D2E2C 00000000 */  nop   
/* 0D3A30 800D2E30 AF48012C */  sw    $t0, 0x12c($k0)
/* 0D3A34 800D2E34 F7400130 */  sdc1  $f0, 0x130($k0)
/* 0D3A38 800D2E38 F7420138 */  sdc1  $f2, 0x138($k0)
/* 0D3A3C 800D2E3C F7440140 */  sdc1  $f4, 0x140($k0)
/* 0D3A40 800D2E40 F7460148 */  sdc1  $f6, 0x148($k0)
/* 0D3A44 800D2E44 F7480150 */  sdc1  $f8, 0x150($k0)
/* 0D3A48 800D2E48 F74A0158 */  sdc1  $f10, 0x158($k0)
/* 0D3A4C 800D2E4C F74C0160 */  sdc1  $f12, 0x160($k0)
/* 0D3A50 800D2E50 F74E0168 */  sdc1  $f14, 0x168($k0)
/* 0D3A54 800D2E54 F7500170 */  sdc1  $f16, 0x170($k0)
/* 0D3A58 800D2E58 F7520178 */  sdc1  $f18, 0x178($k0)
/* 0D3A5C 800D2E5C F7540180 */  sdc1  $f20, 0x180($k0)
/* 0D3A60 800D2E60 F7560188 */  sdc1  $f22, 0x188($k0)
/* 0D3A64 800D2E64 F7580190 */  sdc1  $f24, 0x190($k0)
/* 0D3A68 800D2E68 F75A0198 */  sdc1  $f26, 0x198($k0)
/* 0D3A6C 800D2E6C F75C01A0 */  sdc1  $f28, 0x1a0($k0)
/* 0D3A70 800D2E70 F75E01A8 */  sdc1  $f30, 0x1a8($k0)
.L800D2E74:
/* 0D3A74 800D2E74 40086800 */  mfc0  $t0, $13
/* 0D3A78 800D2E78 AF480120 */  sw    $t0, 0x120($k0)
/* 0D3A7C 800D2E7C 24090002 */  li    $t1, 2
/* 0D3A80 800D2E80 A7490010 */  sh    $t1, 0x10($k0)
/* 0D3A84 800D2E84 3109007C */  andi  $t1, $t0, 0x7c
/* 0D3A88 800D2E88 240A0024 */  li    $t2, 36
/* 0D3A8C 800D2E8C 112A00B0 */  beq   $t1, $t2, .L800D3150
/* 0D3A90 800D2E90 00000000 */   nop   
/* 0D3A94 800D2E94 240A002C */  li    $t2, 44
/* 0D3A98 800D2E98 112A00FF */  beq   $t1, $t2, .L800D3298
/* 0D3A9C 800D2E9C 00000000 */   nop   
/* 0D3AA0 800D2EA0 240A0000 */  li    $t2, 0
/* 0D3AA4 800D2EA4 152A00C3 */  bne   $t1, $t2, .L800D31B4
/* 0D3AA8 800D2EA8 00000000 */   nop   
/* 0D3AAC 800D2EAC 03688024 */  and   $s0, $k1, $t0
.L800D2EB0:
/* 0D3AB0 800D2EB0 3209FF00 */  andi  $t1, $s0, 0xff00
/* 0D3AB4 800D2EB4 00095302 */  srl   $t2, $t1, 0xc
/* 0D3AB8 800D2EB8 15400003 */  bnez  $t2, .L800D2EC8
/* 0D3ABC 800D2EBC 00000000 */   nop   
/* 0D3AC0 800D2EC0 00095202 */  srl   $t2, $t1, 8
/* 0D3AC4 800D2EC4 214A0010 */  addi  $t2, $t2, 0x10
.L800D2EC8:
/* 0D3AC8 800D2EC8 3C01800F */  lui   $at, %hi(D_800E9670) # $at, 0x800f
/* 0D3ACC 800D2ECC 002A0821 */  addu  $at, $at, $t2
/* 0D3AD0 800D2ED0 902A9670 */  lbu   $t2, %lo(D_800E9670)($at)
/* 0D3AD4 800D2ED4 3C01800F */  lui   $at, %hi(D_800E9690) # $at, 0x800f
/* 0D3AD8 800D2ED8 002A0821 */  addu  $at, $at, $t2
/* 0D3ADC 800D2EDC 8C2A9690 */  lw    $t2, %lo(D_800E9690)($at)
/* 0D3AE0 800D2EE0 01400008 */  jr    $t2
/* 0D3AE4 800D2EE4 00000000 */   nop   
.L800D2EE8:
/* 0D3AE8 800D2EE8 2401DFFF */  li    $at, -8193
/* 0D3AEC 800D2EEC 1000FFF0 */  b     .L800D2EB0
/* 0D3AF0 800D2EF0 02018024 */   and   $s0, $s0, $at
.L800D2EF4:
/* 0D3AF4 800D2EF4 2401BFFF */  li    $at, -16385
/* 0D3AF8 800D2EF8 1000FFED */  b     .L800D2EB0
/* 0D3AFC 800D2EFC 02018024 */   and   $s0, $s0, $at
.L800D2F00:
/* 0D3B00 800D2F00 40095800 */  mfc0  $t1, $11
/* 0D3B04 800D2F04 40895800 */  mtc0  $t1, $11
/* 0D3B08 800D2F08 0C034C79 */  jal   send_mesg
/* 0D3B0C 800D2F0C 24040018 */   li    $a0, 24
/* 0D3B10 800D2F10 3C01FFFF */  lui   $at, (0xFFFF7FFF >> 16) # lui $at, 0xffff
/* 0D3B14 800D2F14 34217FFF */  ori   $at, (0xFFFF7FFF & 0xFFFF) # ori $at, $at, 0x7fff
/* 0D3B18 800D2F18 1000FFE5 */  b     .L800D2EB0
/* 0D3B1C 800D2F1C 02018024 */   and   $s0, $s0, $at
.L800D2F20:
/* 0D3B20 800D2F20 2401F7FF */  li    $at, -2049
/* 0D3B24 800D2F24 02018024 */  and   $s0, $s0, $at
/* 0D3B28 800D2F28 240A0004 */  li    $t2, 4
/* 0D3B2C 800D2F2C 3C01800E */  lui   $at, %hi(D_800E48A0) # $at, 0x800e
/* 0D3B30 800D2F30 002A0821 */  addu  $at, $at, $t2
/* 0D3B34 800D2F34 8C2A48A0 */  lw    $t2, %lo(D_800E48A0)($at)
/* 0D3B38 800D2F38 3C1D8013 */  lui   $sp, %hi(D_8012AAE0) # $sp, 0x8013
/* 0D3B3C 800D2F3C 27BDAAE0 */  addiu $sp, %lo(D_8012AAE0) # addiu $sp, $sp, -0x5520
/* 0D3B40 800D2F40 24040010 */  li    $a0, 16
/* 0D3B44 800D2F44 11400007 */  beqz  $t2, .L800D2F64
/* 0D3B48 800D2F48 27BD0FF0 */   addiu $sp, $sp, 0xff0
/* 0D3B4C 800D2F4C 0140F809 */  jalr  $t2
/* 0D3B50 800D2F50 00000000 */  nop   
/* 0D3B54 800D2F54 10400003 */  beqz  $v0, .L800D2F64
/* 0D3B58 800D2F58 00000000 */   nop   
/* 0D3B5C 800D2F5C 10000082 */  b     .L800D3168
/* 0D3B60 800D2F60 00000000 */   nop   
.L800D2F64:
/* 0D3B64 800D2F64 0C034C79 */  jal   send_mesg
/* 0D3B68 800D2F68 00000000 */   nop   
/* 0D3B6C 800D2F6C 1000FFD0 */  b     .L800D2EB0
/* 0D3B70 800D2F70 00000000 */   nop   
.L800D2F74:
/* 0D3B74 800D2F74 3C08800E */  lui   $t0, %hi(D_800E38AC) # $t0, 0x800e
/* 0D3B78 800D2F78 250838AC */  addiu $t0, %lo(D_800E38AC) # addiu $t0, $t0, 0x38ac
/* 0D3B7C 800D2F7C 8D080000 */  lw    $t0, ($t0)
/* 0D3B80 800D2F80 3C11A430 */  lui   $s1, %hi(D_A4300008) # $s1, 0xa430
/* 0D3B84 800D2F84 8E310008 */  lw    $s1, %lo(D_A4300008)($s1)
/* 0D3B88 800D2F88 00084402 */  srl   $t0, $t0, 0x10
/* 0D3B8C 800D2F8C 02288824 */  and   $s1, $s1, $t0
/* 0D3B90 800D2F90 32290001 */  andi  $t1, $s1, 1
/* 0D3B94 800D2F94 11200013 */  beqz  $t1, .L800D2FE4
/* 0D3B98 800D2F98 00000000 */   nop   
/* 0D3B9C 800D2F9C 3C0CA404 */  lui   $t4, %hi(D_A4040010) # $t4, 0xa404
/* 0D3BA0 800D2FA0 8D8C0010 */  lw    $t4, %lo(D_A4040010)($t4)
/* 0D3BA4 800D2FA4 24090008 */  li    $t1, 8
/* 0D3BA8 800D2FA8 3C01A404 */  lui   $at, %hi(D_A4040010) # $at, 0xa404
/* 0D3BAC 800D2FAC 318C0300 */  andi  $t4, $t4, 0x300
/* 0D3BB0 800D2FB0 3231003E */  andi  $s1, $s1, 0x3e
/* 0D3BB4 800D2FB4 11800007 */  beqz  $t4, .L800D2FD4
/* 0D3BB8 800D2FB8 AC290010 */   sw    $t1, %lo(D_A4040010)($at)
/* 0D3BBC 800D2FBC 0C034C79 */  jal   send_mesg
/* 0D3BC0 800D2FC0 24040020 */   li    $a0, 32
/* 0D3BC4 800D2FC4 12200038 */  beqz  $s1, .L800D30A8
/* 0D3BC8 800D2FC8 00000000 */   nop   
/* 0D3BCC 800D2FCC 10000005 */  b     .L800D2FE4
/* 0D3BD0 800D2FD0 00000000 */   nop   
.L800D2FD4:
/* 0D3BD4 800D2FD4 0C034C79 */  jal   send_mesg
/* 0D3BD8 800D2FD8 24040058 */   li    $a0, 88
/* 0D3BDC 800D2FDC 12200032 */  beqz  $s1, .L800D30A8
/* 0D3BE0 800D2FE0 00000000 */   nop   
.L800D2FE4:
/* 0D3BE4 800D2FE4 32290008 */  andi  $t1, $s1, 8
/* 0D3BE8 800D2FE8 11200007 */  beqz  $t1, .L800D3008
/* 0D3BEC 800D2FEC 3C01A440 */   lui   $at, %hi(D_A4400010) # $at, 0xa440
/* 0D3BF0 800D2FF0 32310037 */  andi  $s1, $s1, 0x37
/* 0D3BF4 800D2FF4 AC200010 */  sw    $zero, %lo(D_A4400010)($at)
/* 0D3BF8 800D2FF8 0C034C79 */  jal   send_mesg
/* 0D3BFC 800D2FFC 24040038 */   li    $a0, 56
/* 0D3C00 800D3000 12200029 */  beqz  $s1, .L800D30A8
/* 0D3C04 800D3004 00000000 */   nop   
.L800D3008:
/* 0D3C08 800D3008 32290004 */  andi  $t1, $s1, 4
/* 0D3C0C 800D300C 11200009 */  beqz  $t1, .L800D3034
/* 0D3C10 800D3010 00000000 */   nop   
/* 0D3C14 800D3014 24090001 */  li    $t1, 1
/* 0D3C18 800D3018 3C01A450 */  lui   $at, %hi(D_A450000C) # $at, 0xa450
/* 0D3C1C 800D301C 3231003B */  andi  $s1, $s1, 0x3b
/* 0D3C20 800D3020 AC29000C */  sw    $t1, %lo(D_A450000C)($at)
/* 0D3C24 800D3024 0C034C79 */  jal   send_mesg
/* 0D3C28 800D3028 24040030 */   li    $a0, 48
/* 0D3C2C 800D302C 1220001E */  beqz  $s1, .L800D30A8
/* 0D3C30 800D3030 00000000 */   nop   
.L800D3034:
/* 0D3C34 800D3034 32290002 */  andi  $t1, $s1, 2
/* 0D3C38 800D3038 11200007 */  beqz  $t1, .L800D3058
/* 0D3C3C 800D303C 3C01A480 */   lui   $at, %hi(D_A4800018) # $at, 0xa480
/* 0D3C40 800D3040 3231003D */  andi  $s1, $s1, 0x3d
/* 0D3C44 800D3044 AC200018 */  sw    $zero, %lo(D_A4800018)($at)
/* 0D3C48 800D3048 0C034C79 */  jal   send_mesg
/* 0D3C4C 800D304C 24040028 */   li    $a0, 40
/* 0D3C50 800D3050 12200015 */  beqz  $s1, .L800D30A8
/* 0D3C54 800D3054 00000000 */   nop   
.L800D3058:
/* 0D3C58 800D3058 32290010 */  andi  $t1, $s1, 0x10
/* 0D3C5C 800D305C 11200009 */  beqz  $t1, .L800D3084
/* 0D3C60 800D3060 00000000 */   nop   
/* 0D3C64 800D3064 24090002 */  li    $t1, 2
/* 0D3C68 800D3068 3C01A460 */  lui   $at, %hi(D_A4600010) # $at, 0xa460
/* 0D3C6C 800D306C 3231002F */  andi  $s1, $s1, 0x2f
/* 0D3C70 800D3070 AC290010 */  sw    $t1, %lo(D_A4600010)($at)
/* 0D3C74 800D3074 0C034C79 */  jal   send_mesg
/* 0D3C78 800D3078 24040040 */   li    $a0, 64
/* 0D3C7C 800D307C 1220000A */  beqz  $s1, .L800D30A8
/* 0D3C80 800D3080 00000000 */   nop   
.L800D3084:
/* 0D3C84 800D3084 32290020 */  andi  $t1, $s1, 0x20
/* 0D3C88 800D3088 11200007 */  beqz  $t1, .L800D30A8
/* 0D3C8C 800D308C 00000000 */   nop   
/* 0D3C90 800D3090 24090800 */  li    $t1, 2048
/* 0D3C94 800D3094 3C01A430 */  lui   $at, 0xa430
/* 0D3C98 800D3098 3231001F */  andi  $s1, $s1, 0x1f
/* 0D3C9C 800D309C AC290000 */  sw    $t1, ($at)
/* 0D3CA0 800D30A0 0C034C79 */  jal   send_mesg
/* 0D3CA4 800D30A4 24040048 */   li    $a0, 72
.L800D30A8:
/* 0D3CA8 800D30A8 2401FBFF */  li    $at, -1025
/* 0D3CAC 800D30AC 1000FF80 */  b     .L800D2EB0
/* 0D3CB0 800D30B0 02018024 */   and   $s0, $s0, $at
.L800D30B4:
/* 0D3CB4 800D30B4 8F5B0118 */  lw    $k1, 0x118($k0)
/* 0D3CB8 800D30B8 2401EFFF */  li    $at, -4097
/* 0D3CBC 800D30BC 3C09800E */  lui   $t1, %hi(D_800E38A8) # $t1, 0x800e
/* 0D3CC0 800D30C0 0361D824 */  and   $k1, $k1, $at
/* 0D3CC4 800D30C4 AF5B0118 */  sw    $k1, 0x118($k0)
/* 0D3CC8 800D30C8 252938A8 */  addiu $t1, %lo(D_800E38A8) # addiu $t1, $t1, 0x38a8
/* 0D3CCC 800D30CC 8D2A0000 */  lw    $t2, ($t1)
/* 0D3CD0 800D30D0 11400003 */  beqz  $t2, .L800D30E0
/* 0D3CD4 800D30D4 2401EFFF */   li    $at, -4097
/* 0D3CD8 800D30D8 10000023 */  b     .L800D3168
/* 0D3CDC 800D30DC 02018024 */   and   $s0, $s0, $at
.L800D30E0:
/* 0D3CE0 800D30E0 240A0001 */  li    $t2, 1
/* 0D3CE4 800D30E4 AD2A0000 */  sw    $t2, ($t1)
/* 0D3CE8 800D30E8 0C034C79 */  jal   send_mesg
/* 0D3CEC 800D30EC 24040070 */   li    $a0, 112
/* 0D3CF0 800D30F0 3C0A800E */  lui   $t2, %hi(__RunQueue) # $t2, 0x800e
/* 0D3CF4 800D30F4 8D4A4888 */  lw    $t2, %lo(__RunQueue)($t2)
/* 0D3CF8 800D30F8 2401EFFF */  li    $at, -4097
/* 0D3CFC 800D30FC 02018024 */  and   $s0, $s0, $at
/* 0D3D00 800D3100 8D5B0118 */  lw    $k1, 0x118($t2)
/* 0D3D04 800D3104 0361D824 */  and   $k1, $k1, $at
/* 0D3D08 800D3108 10000017 */  b     .L800D3168
/* 0D3D0C 800D310C AD5B0118 */   sw    $k1, 0x118($t2)
.L800D3110:
/* 0D3D10 800D3110 2401FDFF */  li    $at, -513
/* 0D3D14 800D3114 01014024 */  and   $t0, $t0, $at
/* 0D3D18 800D3118 40886800 */  mtc0  $t0, $13
/* 0D3D1C 800D311C 0C034C79 */  jal   send_mesg
/* 0D3D20 800D3120 24040008 */   li    $a0, 8
/* 0D3D24 800D3124 2401FDFF */  li    $at, -513
/* 0D3D28 800D3128 1000FF61 */  b     .L800D2EB0
/* 0D3D2C 800D312C 02018024 */   and   $s0, $s0, $at
.L800D3130:
/* 0D3D30 800D3130 2401FEFF */  li    $at, -257
/* 0D3D34 800D3134 01014024 */  and   $t0, $t0, $at
/* 0D3D38 800D3138 40886800 */  mtc0  $t0, $13
/* 0D3D3C 800D313C 0C034C79 */  jal   send_mesg
/* 0D3D40 800D3140 24040000 */   li    $a0, 0
/* 0D3D44 800D3144 2401FEFF */  li    $at, -257
/* 0D3D48 800D3148 1000FF59 */  b     .L800D2EB0
/* 0D3D4C 800D314C 02018024 */   and   $s0, $s0, $at
.L800D3150:
/* 0D3D50 800D3150 24090001 */  li    $t1, 1
/* 0D3D54 800D3154 A7490012 */  sh    $t1, 0x12($k0)
/* 0D3D58 800D3158 0C034C79 */  jal   send_mesg
/* 0D3D5C 800D315C 24040050 */   li    $a0, 80
/* 0D3D60 800D3160 10000001 */  b     .L800D3168
/* 0D3D64 800D3164 00000000 */   nop   
.L800D3168:
/* 0D3D68 800D3168 3C0A800E */  lui   $t2, %hi(__RunQueue) # $t2, 0x800e
/* 0D3D6C 800D316C 8D4A4888 */  lw    $t2, %lo(__RunQueue)($t2)
/* 0D3D70 800D3170 8F490004 */  lw    $t1, 4($k0)
/* 0D3D74 800D3174 8D4B0004 */  lw    $t3, 4($t2)
/* 0D3D78 800D3178 012B082A */  slt   $at, $t1, $t3
/* 0D3D7C 800D317C 10200007 */  beqz  $at, .L800D319C
/* 0D3D80 800D3180 00000000 */   nop   
/* 0D3D84 800D3184 3C04800E */  lui   $a0, %hi(__RunQueue) # $a0, 0x800e
/* 0D3D88 800D3188 03402825 */  move  $a1, $k0
/* 0D3D8C 800D318C 0C034CF3 */  jal   __osEnqueueThread
/* 0D3D90 800D3190 24844888 */   addiu $a0, %lo(__RunQueue) # addiu $a0, $a0, 0x4888
/* 0D3D94 800D3194 08034D09 */  j     __osDispatchThread
/* 0D3D98 800D3198 00000000 */   nop   

.L800D319C:
/* 0D3D9C 800D319C 3C09800E */  lui   $t1, %hi(__RunQueue) # $t1, 0x800e
/* 0D3DA0 800D31A0 25294888 */  addiu $t1, %lo(__RunQueue) # addiu $t1, $t1, 0x4888
/* 0D3DA4 800D31A4 8D2A0000 */  lw    $t2, ($t1)
/* 0D3DA8 800D31A8 AF4A0000 */  sw    $t2, ($k0)
/* 0D3DAC 800D31AC 08034D09 */  j     __osDispatchThread
/* 0D3DB0 800D31B0 AD3A0000 */   sw    $k0, ($t1)

.L800D31B4:
/* 0D3DB4 800D31B4 3C01800E */  lui   $at, %hi(D_800E4894) # $at, 0x800e
/* 0D3DB8 800D31B8 AC3A4894 */  sw    $k0, %lo(D_800E4894)($at)
/* 0D3DBC 800D31BC 24090001 */  li    $t1, 1
/* 0D3DC0 800D31C0 A7490010 */  sh    $t1, 0x10($k0)
/* 0D3DC4 800D31C4 24090002 */  li    $t1, 2
/* 0D3DC8 800D31C8 A7490012 */  sh    $t1, 0x12($k0)
/* 0D3DCC 800D31CC 400A4000 */  mfc0  $t2, $8
/* 0D3DD0 800D31D0 AF4A0124 */  sw    $t2, 0x124($k0)
/* 0D3DD4 800D31D4 0C034C79 */  jal   send_mesg
/* 0D3DD8 800D31D8 24040060 */   li    $a0, 96
/* 0D3DDC 800D31DC 08034D09 */  j     __osDispatchThread
/* 0D3DE0 800D31E0 00000000 */   nop   

